// Get 1 Account Record (Name, AnnualRevenue, Rating)
// SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
// and Store it into Account variable

// Apex and SOQL Work seamlessly together 
// We can use SOQL to get data and store it into 
// sObject type or list of sObject type
// [ YOUR SOQL GOES HERE]

// This will throw an error since we are tryting to store many Account
// into a variable that hold single account 
//System.QueryException: List has more than 1 row for assignment to SObject
// AnonymousBlock: line 11, column 1
// Account a = [Select Name from Account]; 
// System.debug('a value is : ' + a);

String str = 'Green' ;

// Get all the Conact FirstName, LastName 
// if the LastName field value is whatever variavle str has
// SELECT FirstName, LastName FROM Contact
// WHERE LastName = 'Green'

// SOQL Query inside [] is not a String 
// If we want to use a variable, we must add : in front of the variable
// This is called bind variable : simply a variable inside SOQL 

List<Contact> contactLst = [SELECT FirstName, LastName FROM Contact
                             WHERE LastName = :str]  ; 

System.debug('contactLst value is : ' + contactLst);

// Create 2 String variables for caseStatus and casePriority 
// Get All the cases with status of caseStatus and Priority of casePriority
// Store the result in List of Case 