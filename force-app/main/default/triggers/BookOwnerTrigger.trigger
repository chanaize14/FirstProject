trigger BookOwnerTrigger on Book__c (before insert, before update) {

/**4. Create a new Profile NightWatcher (by cloning standard user profile) 
   - Remove Account and Opportunity delete access
5. Create a new user Jon Snow in your org with NightWatcher profile
6. Assign yourself CEO Role and Assign Jon snow Western Sales Team
 */

// 1. Disable existing BookTrigger
// 2. Create a Trigger called BookOwnerTrigger
// This trigger listen for two events before insert, before update
// This trigger has below logic
// Whenever book is created or updated 
// if the contact look up field is not empty 
// assign the owner of this book to the same owner of Contact Record 

 System.debug('Trigger is running for Event : ' + Trigger.operationType);

  // This trigger has below logic
  // Whenever book is created or updated

   for (Book__c each : Trigger.new) {
    // if the Contact look up field is not empty
    if (each.Contact__c != null) {
      // assign the owner of this Book to the same Owner of Contact Record
      System.debug('Contact is not null ' + each.Contact__c);
      //System.debug(each.Contact__r.OwnerId);
      // above line print null for ownerId or any other fields of parent
      // because any record within the context of Trigger.new
      // has no access to parent fields, SOQL is needed!
      Contact parentContact = [ SELECT Name, OwnerID FROM Contact
                                WHERE Id = :each.Contact__c];
      //System.debug(parentContact.Name);
      //System.debug(parentContact.OwnerId);
      each.OwnerId = parentContact.OwnerId ; 
    }
  }

//This trigger has below logic
 //Whenever book is created or updated

 //Since we cannot write SOQL inside the loop,
 //we have to get all the contacts
 //that associated with Books that entered the trigger
 //outside the loop using SOQL

 //and best way to get those contacts is using Id of Contact

 //Multiple books can|will enter at the same time
 //not all of the books might have contact__c filled up


 // NO COMMENT VERSION

  Set<Id> contactIdSet = new Set<Id>();
  for (Book__c each : Trigger.new) {
    if (each.Contact__c != null) {
      contactIdSet.add(each.Contact__c);
    }
  }

  List<Contact> contactList = [ SELECT Id, Name, OwnerId FROM Contact
                            WHERE Id IN :contactIdSet];
  Map<Id, Contact> parentContactsMap = new Map<Id, Contact>(contactList);

  for (Book__c each : Trigger.new) {
    if (each.Contact__c != null) {
      each.OwnerId = parentContactsMap.get(each.Contact__c).OwnerId;
    }
  }

}
























