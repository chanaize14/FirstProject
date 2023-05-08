System.debug('Hello'); 

// for(Integer i=0; i<95 ;i++) {
    
//     List<Account> lst = [Select Id from Account]; 

//     System.debug('Queries Used ' + Limits.getQueries() ); 
       

// }


for(Integer i=0; i<105 ;i++) {
    
    // check how many SOQL has already been used
    // and when it's more than 90 get out of the loop 
    if ( Limits.getQueries() < 90  ) {
        List<Account> lst = [Select Id from Account]; 
    }else {
        System.debug('We are getting closed to the limit!!'); 
        break;
    }
    
    
}

// Limits class methods pattern 

   
// how many you actually used 
// to get what is the actual usage you have right now 
    // we use getTheNameOfTheThings
   // for example  getQueries getDmlStatement

// to get the total limit that enforced 
    // we use getLimitTheNameOfTheThing
    // for example  getLimitQueries  getLimitDmlStatements