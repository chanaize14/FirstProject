/**

Create a List of Contact and add 3 Contact 
2 contacts with all required fields filled : LastName 
1 contact only provide firstName field value 
now try to insert this and see what you get 
    - will it insert 2 and fail 1 
    - will it fail all of them 
 */
List<Contact> contactList = new List<Contact>() ; 
contactList.add( new Contact(LastName = 'TDX Contact1')  ); 
contactList.add( new Contact(LastName = 'TDX Contact2')  ); 
// THIS ONE IS MISSING REQUIRED FIELD!!!!!!!!!!!!!!!!!!!!!
contactList.add( new Contact(FirstName = 'Bad Apple WITHOUT REQUIRED LASTNAME FILLED UP ')  ); 

System.debug('contactList value is : ' + contactList); 
// THIS WILL FAIL BECAUSE ONE OF THE ITEM HAS NO REQUIRED FIELD FILLED UP
// insert contactList ; 

// HOW DO WE ACTUALLY GET THE RESULT OF INSERT 2 AND FAIL 1 
// Use Database class methods that mirror DML operation 
// with some additional options 


// Database.insert(The List you want to insert 
//                 , specify you want All Or Nothing in boolean ); 


// Database.insert(The List you want to insert 
//                 , specify you want All Or Nothing in boolean ); 
// second parameter : allOrNothing
    // if true -->> either all get inserted or none get inserted if any item was failed to insert 
    // if false -->> items that successfully can be inserted will be inserted and items can not be inserted will not 
    // it will not fail the whole insert operation 
Database.insert(contactList ,  false ); 
//We are giving answer to this question while we are typing True or False into this method:
// Do you want me  to behave this
 //list of sObjects as a whole or shall I evaluate them one by one?
