/**
We created a Custom Object as below 
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency   

Now we need to access here in VSCode 
Go to command pallatte and type 
SFDX: Refresh Object Definition
select All object 
now you have access to latest changes you made under Object manager 

 */

Vehicle__c v1 = new Vehicle__c(); 
v1.Year__c = 2023 ; 
v1.Make__c = 'Tesla' ; 
v1.Model__c = 'Model X';
v1.Price__c = 127000 ; 

System.debug('v1 value is : ' + v1); 
insert v1 ; 
System.debug('v1 value is : ' + v1); 
 
// Create List of Vehicle and insert in bulk 

List<Vehicle__c> carList = new List<Vehicle__c>();
// update the price to 100K and add v1 into this list 
v1.Price__c = 100000 ; 
carList.add(v1) ; 
// add 2 more Vehicle__c with Make filled up
carList.add(  new Vehicle__c(Make__c = 'Lucid')     ) ; 
carList.add(  new Vehicle__c(Make__c = 'Toyota')     ) ; 

System.debug('carList value is : ' + carList); 

// insert what's not already in salesforce
// and update what is already in salesforce
// from this list into Salesforce
// upsert DML operation : update + insert
upsert carList ; 

          /*The upsert DML operation creates new records and updates sObject records within a 
          single statement, using a specified field to determine 
          the presence of existing objects, or the ID field if no field is specified.*/