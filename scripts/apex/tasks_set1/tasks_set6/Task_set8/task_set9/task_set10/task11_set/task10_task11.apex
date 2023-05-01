/*10. Create a List<Contact> and fill up with 5 Contacts with below fields 
   - LastName :  TestContact (1,2,3,4,5)
   - BirthDate:  1987 , 5 , (1,2,3,4,5)
   - insert these contacts into your org
   - Create a Map<ID,Contact> and fill it up with 
     - ID of each Contact in the list as Key
     - each Contact itself as value 
   - Loop through(Iterate over) the Map keys 
     - print out the each Key and Value 
     - print out the Contact  lastName value*/
     List<Contact> contactList = new List<Contact>();
for (Integer i = 1; i <= 5; i++) {
    contactList.add(new Contact(
        LastName = 'TestContact ' + i,
        Birthdate = Date.newInstance(1987, 5, i)
    ));
}

// Insert the Contacts into Salesforce
insert contactList;

// Create a Map with the Contact Ids as keys and Contacts as values
Map<Id, Contact> contactMap = new Map<Id, Contact>(contactList);

// Loop through the Map keys and print out the keys, values, and last names of the Contacts
for (Id contactId : contactMap.keySet()) {
    Contact contact = contactMap.get(contactId);
    System.debug('Contact Id: ' + contactId + ', Contact: ' + contact);
    System.debug('Last Name: ' + contact.LastName);
}
