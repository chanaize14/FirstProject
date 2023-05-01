// Task 3 Apex SOQL :

// Get the Id of Account with name Super Parent.
//Account supeAcc = [SELECT Id FROM Account WHERE Name='Super Parent' LIMIT 1];
//Id supeAccId = supeAcc.Id ; 

Id supeAccId = [SELECT Id FROM Account WHERE Name='Super Parent' LIMIT 1].Id ; 

// Get all the Opportunities with no Parent Account association (AccountId is empty)
// and store it in the list called orphanOpps.
List<Opportunity> orphanOpps = [SELECT Name, Amount
                                FROM Opportunity
                                WHERE AccountId = NULL]; 
// Add All the orphanOpps under Account with name Super Parent.
for(Opportunity each : orphanOpps) {
    each.AccountId = supeAccId ; 
    each.Amount = 1000 ; // just to make the trigger happy 
}

// perform DML Operaiton to save it 
update orphanOpps ; 


// if you want to check the result of your action in soql 
SELECT Name, Amount
FROM Opportunity
WHERE Account.Name = 'Super Parent


//SET 4
// Task 1: 
//Write a SOQL SELECT statement (Child to Parent) to 
//retrieve the Name ,Account.Name and Email fields 
//for all Contact records associated with an Account record 
//where the Account.Name is equal to a Super Parent.

//SELECT Name, Account.Name, Email
//FROM Contact
//WHERE Account.Name = 'Super Parent'


// Task 2: 
//Write a SOQL SELECT statement (Parent to Child) to 
//retrieve the Name and AnnualRevenue fields and all Child Contacts
//for the record with name equal to a Super Parent.

//SELECT Name, AnnualRevenue, (SELECT Name FROM Contacts)
//FROM Account
//WHERE Name = 'Super Parent'







//Task 4:
//Write a SOQL SELECT statement to 
//retrieve the Name , Account.Name and StageName fields 
//for all Opportunity records associated with an Account Super Parent 

//SELECT Name, Account.Name, StageName
//FROM Opportunity
//WHERE Account.Name = 'Super Parent'


//Task 6:
//Write a SOQL SELECT statement to 
//retrieve the Subject , Contact.Name and Status fields 
//for all Cases records associated with an Contact Super Jon
SELECT Subject, Contact.Name, Status 
 FROM Case
 WHERE Contact.Name = 'Super Jon'
