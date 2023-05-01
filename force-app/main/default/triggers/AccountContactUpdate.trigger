trigger AccountContactUpdate on Account (after update) {

    // If phone number of Account is updated 
    // update all the related contacts phone number field 

    //1. Create a Set<Id> to store only those Accounts Id
    // that entered the Trigger with phone number updated 
    Set<Id> accIds = new Set<Id>(); 
    for(Account each : Trigger.new) {

        Account oldEach = Trigger.oldMap.get(each.Id) ; 
        if( each.phone != oldEach.Phone  ){
            accIds.add(each.Id); 
        }
    }
    // If no phone number change for any of the accounts that entered the trigger
    // then the set will be empty, no point of running the rest of the code 
    // how do we get out of the trigger early ==> return keyword 
    if(accIds.isEmpty() ){
        System.debug('NO ACCOUNT PHONE NUMBERS CHANGED!!!!');
        return;  // this will end this trigger execution here and will not proceed to next
    }


    //2. Get all the contacts belong to those Accounts 
    List<Contact> allContacts = [SELECT Name, AccountId, Phone 
                                    FROM Contact
                                    WHERE AccountId in :accIds]; 
    // If none of those Accounts has child contacts then do not proceed to next
    if(allContacts.isEmpty()){
        System.debug('NO CONTACTS FOUND UNDER THESE ACCOUNT!!'); 
        return;  // this will end this trigger execution here and will not proceed to next
    }

    //3. Update the contact phone number with Account phone number 
    for(Contact each : allContacts) {
        Account parentAcc = Trigger.newMap.get(each.AccountId);
        each.phone =  parentAcc.phone ; 
    }
    //4. Perform DML to update allContacts if it;s not empty 
    if( ! allContacts.isEmpty() ){
        update allContacts ; 
    }
}