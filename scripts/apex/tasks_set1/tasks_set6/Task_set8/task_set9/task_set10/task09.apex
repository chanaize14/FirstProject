/*9. Create a Account with Name value set 
   - insert it into Salesforce
   - Create a Contact with LastName filled up under this Account
   - insert it into Salesforce
   - Create Task with below fields set 
      - WhatId = Id of the Account above
      - WhoId  = Id of the Contact above 
      - Subject = 'Follow up with YourContactNameGoesHere' ; 
      - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
      - ActivityDate = 7 Days from Today
      - Status = 'Pending' ;*/

  // Create a Account with Name value set
Account acc = new Account(Name = 'ABC');
// insert it into Salesforce
insert acc ; 
// Create a Contact with LastName filled up under this Account
Contact con = new Contact(LastName='Deg', AccountId =  acc.Id ); 
// insert it into Salesforce
insert con ; 

// Create Task with below fields set
Task t1 = new Task(); 
// WhatId = Id of the Account above
t1.WhatId = acc.Id ; 
// WhoId = Id of the Contact above
t1.WhoId  = con.Id ; 
// Subject = 'Follow up with YourContactNameGoesHere' ;
t1.Subject= 'Follow up with ' + con.LastName    ;
// Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
t1.Description = 'Have a chat with '+ con.LastName 
                    + ' from ' + acc.Name ; 

// ActivityDate = 7 Days from Today
t1.ActivityDate = Date.today() + 7 ; 
// Status = 'Pending' ;
t1.Status = 'Pending';

insert t1 ;  