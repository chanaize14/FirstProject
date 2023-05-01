/*4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now */
      Lead myLead = new Lead(LastName='Skywalker', Company ='Galactic Empire');
System.debug('ld value before insert is : ' + myLead); 
insert myLead ; 
System.debug('ld value After insert is : ' + myLead); 

Task t1         = new Task(); 
t1.WhoId        = myLead.Id ; 
t1.Priority     = 'High' ; 
t1.ActivityDate = Date.today() + 7 ; // do same thing as addDays(7)
t1.Subject      = 'Task for Lead from Apex' ;  
// insert this task into Salesforce 
insert t1 ; 


/*WhoId is the API name for the “Name” field on Activity-related objects. 
Users should look to populate this field when they want the task to be related to a 
Lead or Contact record within Salesforce

WhatId is the API name for the “Related To” field on the Activity-related objects.
 This field can be associated with many different objects including:

Accounts
Opportunities
Campaigns
Cases
Custom Objects
