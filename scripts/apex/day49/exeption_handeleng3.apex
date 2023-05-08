System.debug('Starting the code'); 

try {
    
    Account a = new Account(Name='');
    insert a ; 

} catch (DmlException e) {
    
    System.debug('EXCEPTION OCCURED, INSERTING ACCOUTN WITH DEFAULT NAME'); 
    Account a = new Account(Name='Default Name');
    insert a ; 

}

System.debug('Ending the code'); 