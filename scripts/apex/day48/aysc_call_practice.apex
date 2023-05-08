// Just like @future method 
// we can put a code into Class that implements Queueble interface
// and provide detail of execute method 
// in order to run the code 
// System.enqueueJob 

System.debug('Running apex-anon'); 

// List<Account> myAccList = AccountController.getAccountWithAnnualRevenue(); 


AccountUpdateAsync q = new AccountUpdateAsync('AWESOME'); 
System.enqueueJob( q ); 