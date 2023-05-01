/**

Create an Account with below fields 
    Name , AnnualRevenue, Industry
insert this into your org 

Create an Opportunity under this Account 
    with required fields filled up 
    insert this record 


 */
Account a1 = new Account(Name = 'SF TDX 23',
                         AnnualRevenue = 1000000,
                         Industry = 'Technology'
                        );
insert a1 ; 
//[Name, StageName, CloseDate]
Opportunity o1 = new Opportunity();
o1.AccountId = a1.Id ; 
o1.Name      = 'TDX 23 Opps' ; 
o1.StageName = 'Prospecting' ; 
o1.CloseDate = Date.today() + 7   ; 

insert o1 ; 

// // use o1 to access the AnnualRevenue field of a1 Account 
// Decimal rev =  o1.Account.AnnualRevenue ; 
// // we got null , when we eventually learn SOQL and get this opp
// // that under a account then we will be able to access all parent fields 
// // in this way. 
// System.debug('AnnualRevenue Of Opp Parent Account value is : ' + rev); 
// // use o1 to access the Industry field of a1 Account 

// Create 5 cases under this account with below subject 
// TDX Case 1 , 2 , 3, 4 ,5 
List<Case> caseList = new List<Case>(); 

for(Integer i=1; i<=5 ;i++) {
    
    caseList.add(   new Case(Subject='TDX Case '+i , AccountId=  a1.Id ) ) ; 

}
System.debug('caseList value is : ' + caseList); 
insert caseList ; 

