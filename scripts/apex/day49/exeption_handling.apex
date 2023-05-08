// Exception handling 
// try-catch

System.debug('My code started'); 
String s ;// = 'hello'; 

try {
    System.debug('inside try block'); 
    System.debug( s.toUpperCase() );   
    // NullPointeException object will be created and assigned to variable in the catch block 
    System.debug('end of try block');

} catch (NullPointerException e) { // e = new NullPointerException()
    // getMessage method of Exception class can be used to get more details about the exception
    System.debug('e.getMessage() value is : ' + e.getMessage());
    System.debug('inside catch block');
    System.debug('ERROR OCCURED!!!!'); 
}

System.debug('My code Finished');