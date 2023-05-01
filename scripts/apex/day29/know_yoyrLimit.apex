//KNOW YOUR LIMIT 
// Apex Enforce Governor Limit 
//to enforce fair usage of resources between all organizations
// that share same underlying Salesforce infrasturcture
// Once you hit the limit there is no going around it
// Only way to fix it is by writing better code that follow salesforce limits 
/**
Number of SOQL queries: 2 out of 100
  Number of query rows: 1 out of 50000
  Number of SOSL queries: 0 out of 20
  Number of DML statements: 151 out of 150 ******* CLOSE TO LIMIT
  Number of Publish Immediate DML: 0 out of 150
  Number of DML rows: 150 out of 10000
  Maximum CPU time: 1945 out of 10000
  Maximum heap size: 0 out of 6000000
  Number of callouts: 0 out of 100
  Number of Email Invocations: 0 out of 10
  Number of future calls: 0 out of 50
  Number of queueable jobs added to the queue: 0 out of 50
  Number of Mobile Apex push calls: 0 out of 10
 */

 for(Integer i=1; i<=151 ;i++) {

    //List<Account> accounts = [Select ID FROM Account] ; 
    Account a = new Account(Name='Know Your Limit'); 
    insert a; 
}