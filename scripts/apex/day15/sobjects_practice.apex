//create a Contact variable and initializind it's value
 Contact c1 = new Contact();
 // assigining the field values
 c1.FirstName = ' Zeynep' ; 
 c1.LastName = ' Yildiz';
 c1.Email = ' zeynep@force.com';
// printing
 System.debug('c1 value is : ' + c1); 
// or you can directly provide firld value inside ()
// while assigning the value to the variable
Contact c2 = new Contact(FirstName='Gulya', LastName='K');
System.debug('c2 value is : ' + c2);


// Create a List of Contact and initialize it's value 
 List<Contact> contacts = new List<Contact> ();  
 // store above 2 Contact instances into the list 
 contacts.add( c1 ); 
 contacts.add( c2 ); 
 System.debug('contacts value is : ' + contacts); 
System.debug('------------------');


 // Print out the first item in the List (either with list syntax or array)
System.debug('contacts.get(0) value is : ' + contacts.get(0)); 
System.debug('contacts[0] value is : ' + contacts[0]); 
 // Print out the first item First name in the List (either with list syntax or array)
 //  String firstContactFirstName = contacts.get(0).FirstName ; 
 String firstContactFirstName = contacts[0].FirstName ; 
System.debug('firstContactFirstName value is : ' + firstContactFirstName); 


 // Print out the second item in the List (either with list syntax or array)


 // Print out the second item last name in the List (either with list syntax or array)
 //// Loop through each item and print them out
 insert contacts;
 