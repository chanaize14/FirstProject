/**
DML Practice

Create List of Account
add 5 items with below Name
Apex Acc 1
Apex Acc 2
Apex Acc 3
Apex Acc 4
Apex Acc 5

insert this list

update the annual revenue field with
 random number between 0, 10000

 Let this update reflect in salesforce
 update using the list in one shot

 optionally delete them all
 */
  List<Account> accList = new List<Account>();
 for(Integer i=1; i<5 ;i++)    {
    // Apex Acc i
    // create account instance
    Account a = new Account();
    a.Name = 'Apex Acc ' + i ;
    // add that to the List
    accList.add(a);
 }
 System.debug('accList value is : ' + accList); 

  for(Integer i=1; i<=5 ;i++) {
     // add that to the list 
     accList.add(  new Account(Name = 'Apex Acc ' + i )   ) ; 
    
 }

 System.debug('accList value is : ' + accList); 
 insert accList ; 
 System.debug('accList value is : ' + accList); 


 // 1. update the annual revenue field with 100000
// 2. update the annual revenue field with random number 0--100000
for(Account each : accList) {

    each.AnnualRevenue = Math.round(Math.random()*100000 ); 

}
System.debug('accList value after update is : ' + accList); 
// update it in Salesforce org using update dml statement 
update accList ; 


// Create a new List of Account called vipAccounts
// loop through each item in your accList and 
// if the annual revenue id greater than 50000
// update Description field to IMPORTANT ACCOUNT
// add this account to vipAccount List
// eventually update vipAccount to reflect this change
List<Account> vipAccountList = new List<Account>();
for(Account each : AccList) {
if(each.AnnualRevenue > 50000){
    each.Description = 'IMPORTANT ACCOUNT';
    vipAccountList.add(each);
}
}
System.debug('---------------------'); 
System.debug('vipAccountList value is : ' + vipAccountList); 

// eventually update vipAccount to reflect this change
update vipAccountList;

// delete them all 
delete accList ; 