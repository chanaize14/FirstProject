

 //## Task 5:
//Create a Contact called Super Jon under Account with name Super Parent in UI. 
//Now in Apex
//Get the Id of Contact with name Super Jon.
Id superJonId = [SELECT Id FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;
//Get all the Cases with no Contact association (ContactId is empty)
List <Case> orphanCases = [SELECT CaseNumber FROM Case WHERE ContactId = NULL];
//and store it in the list called orphanCases. 
for(Case each:orphanCases){
    each.ContactId = superJonId;
}
//Add All the orphanCases under Contact with name Super Jon.
update orphanCases;


// ## Task 3 Apex SOQL : 

// Get the Id of Account with name Super Parent.
// Get all the Opportunities with no Parent Account association (AccountId is empty)
// and store it in the list called orphanOpps. 
// Add All the orphanOpps under Account with name Super Parent.


Id supeAccId = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1].Id;
List<Opportunity> orphanOpps = [
  SELECT Name, Amount
  FROM Opportunity
  WHERE AccountId = NULL
];

for (Opportunity each : orphanOpps) {
  each.AccountId = supeAccId;
  each.Amount = 1000;
}

update orphanOpps;





