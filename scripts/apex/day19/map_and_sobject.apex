/**
Create a Map of Salesforce RecordId and sObject Type Account
// add few items in it 

 */

 Map<Id,Account> accMap = new  Map<Id,Account>(); 

 accMap.put('0018W00002BbgajQAB',  new Account(Name='Cydeo1') ); 

 System.debug('accMap value is : ' + accMap); 

 /**
Create list of 5 Accounts fill it up
insert this into SF
Create Map<Id, Account> and assign the value
fill up this map with Id of each record in the list as key
                The record itself as value
 */

 List<Account> acclist = new list<Account>();
 acclist.add(new Account(Name='Cydeo1')  );
 acclist.add(new Account(Name='Cydeo2')  );
 acclist.add(new Account(Name='Cydeo3')  );
 acclist.add(new Account(Name='Cydeo4')  );
 acclist.add(new Account(Name='Cydeo5')  );
  /**
 Create Map<Id, Account> and assign the value
fill up this map with Id of each record in the list as key
The record itself as value */

// Map<Id,Account> accMap = new Map<Id,Account>(accList);
// System.debug('accMap value is : ' + accMap); 

Map<Id,Account> accMap = new Map<Id,Account>();
// putAll (the record List) ==>> Map<Id, yoursObjectType>
accMap.putAll(accList);
System.debug('accMap value is : ' + accMap); 

/**
Homework :
Get a Map<Id, Account> without using one shot way or putAll method
 */
 