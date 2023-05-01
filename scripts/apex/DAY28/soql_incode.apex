// Get 1 Account Record (Name, AnnualRevenue, Rating)
// SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
// and Store it into Account variable

// Apex and SOQL Work seamlessly together 
// We can use SOQL to get data and store it into 
// sObject type or list of sObject type
// [ YOUR SOQL GOES HERE]

Account a1 = [SELECT Name, AnnualRevenue, Rating,Phone
                FROM Account LIMIT 1] ; 
System.debug('a1 value is : ' + a1);
// Only fields that available are 
// the fields that showed up in SELECT line
System.debug('a1.Phone value is : ' + a1.Phone);


// Get All the account record with Rating field not null 
// include , Id,Name, Rating, AnnualRevenue
// Store it into List<Account>
List<Account> accList = [SELECT Id,Name, Rating, AnnualRevenue
                         FROM Account
                         WHERE Rating != NULL ] ; 

// Print out the size of the list 
System.debug('accList.size() value is : ' + accList.size() );

// Print out the The Name, Rating in the loop 
// Print out the The Name, Rating in the loop 
for(Account each : accList) {
    System.debug('Name value : ' + each.Name + 
                 ' Rating value : ' + each.Rating  );
}


// Get All the Lead Name, Status if the status is Working - Contacted
// Store it into the list and loop through each item 
// print the name and Status 

List<Lead> leadLst = [SELECT Name, Status FROM LEAD
                      WHERE Status = 'Working - Contacted' ] ; 

for(Lead each : leadLst) {
    System.debug(each.Name + ' -- ' + each.Status  );
}