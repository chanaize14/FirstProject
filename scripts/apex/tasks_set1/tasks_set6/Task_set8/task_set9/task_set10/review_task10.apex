/*
6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)

   */

   Date birthDay = date.newInstance(2020, 03, 09) ;

System.debug('day of the birthday value is : ' + birthDay.day()); 
System.debug('month of the birthday value is : ' + birthDay.month()); 
System.debug('year of the birthday value is : ' + birthDay.year()); 

System.debug('isleap year : ' + Date.isLeapYear(birthDay.year())); 

System.debug ('months between today and birthday: ' + birthDay.monthsBetween(Date.today())); 

System.debug ('days between today and birthday: ' + birthDay.daysBetween(Date.today())); 

/*     

   - Create a String variable called selectedStageName
      - assign the value to a random** item from above List of 10 item (from index 0-9)
   - Create another Opportunity instance with below fields
      - Name , ClosedDate , StageName(assign using selectedStageName)
   - if ClosedDate is over 3 months and StageName is not Closed Won 
      - update the StageName value to Closed Lost
 */ 
// 10. 7.
//  Create an Opportunity variable and assign the value with required fields set 
//    - Name , ClosedDate , StageName
Opportunity myOpp  = new Opportunity ();
myOpp.Name = '20 Laptops';
myOpp.CloseDate = Date.today()-8;
myOpp.StageName = 'Closed Won'; 
//    - if ClosedDate is over 3 months (use monthsBetween method) and StageName is not Closed Won 
//       - update the StageName value to Closed Lost 
if(myOpp.CloseDate.monthsBetween(Date.today())>3 && myOpp.StageName != 'Closed Won'){
    myOpp.StageName = 'Closed Lost';
}
//    - Now let's level up , given below stageNames List containing all stages in Opportunity
      
      List<String> stageNames = new List<String>{
         'Prospecting',
         'Qualification',
         'Needs Analysis',
         'Value Proposition',
         'Id. Decision Makers',
         'Perception Analysis',
         'Proposal/Price Quote',
         'Negotiation/Review',
         'Closed Won',
         'Closed Lost'
      };     

//    - Create a String variable called selectedStageName
//       - assign the value to a random** item from above List of 10 item (from index 0-9)
String selectedStageName = stageNames.get(Math.round(Math.random()*9));
System.debug('selectedStageName value is : ' + selectedStageName); 
//    - Create another Opportunity instance with below fields
//       - Name , ClosedDate , StageName(assign using selectedStageName)
Opportunity newOpp = new Opportunity ();
newOpp.Name = '10 Laptops';
newOpp.CloseDate = Date.today()-60;
newOpp.StageName = selectedStageName;
//    - if ClosedDate is over 3 months and StageName is not Closed Won 
//       - update the StageName value to Closed Lost
if(newOpp.CloseDate.monthsBetween(Date.today())>3 && newOpp.StageName != 'Closed Won'){
    newOpp.StageName = 'Closed Lost';
}

//Task08

// Create a new Contact object and set its field values

Contact newContact = new Contact(
    LastName    = 'Cipil',
    FirstName   = 'Fatih',
    BirthDate   = Date.newInstance(1995, 03, 09),
    Email       = 'fatihcipil@gmail.com'
);

// Insert the new Contact record into the org


insert newContact;

// Check if today is the contact's birthday

if(newContact.Birthdate.month() == Date.today().month() &&
    newContact.Birthdate.day() == Date.today().day()
    ){
        System.debug('It\'s your Birthday Today, Tada! '); 
    } else {
        System.debug('It\'s not your Birthday Today');
    }




/*/9. Create a Account with Name value set 
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
      Account acc1 = new Account(Name = 'Account from VSCode');
insert acc1;

Contact cont1 = new Contact (
   LastName = 'Poslavsky',
   AccountId = acc1.Id
);

insert cont1;

Task task1 = new Task (
   WhatId          = acc1.Id,
   WhoId           = cont1.Id,
   Subject         = 'Follow up with' + cont1.LastName ,
   Description     = 'Have a chat with' + cont1.LastName + 'from ' + acc1.Name,
   ActivityDate    = Date.today() + 7,
   Status = 'Pending' 
);

insert task1;

//  Create an Account variable with name targetAcc and assign value with below fields 
//  Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
//  insert it into Salesforce
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
//       - ShippingState       has same value as BillingState
//       - ShippingCity        has same value as BillingCity
//       - ShippingPostalCode  has same value as BillingPostalCode
// save it back to Salesforce



Account targetAcc = new Account ();
targetAcc.Name = 'VSCode Account';
targetAcc.BillingState = 'IL';
targetAcc.BillingCity = 'Chicago';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '60060';

insert targetAcc;
System.debug('targetAcc value is : ' + targetAcc); 
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
targetAcc.ShippingCountry = targetAcc.BillingCountry;
//       - ShippingState       has same value as BillingState
targetAcc.ShippingState = targetAcc.BillingState;
//       - ShippingCity        has same value as BillingCity
targetAcc.ShippingCity = targetAcc.BillingCity;
//       - ShippingPostalCode  has same value as BillingPostalCode
targetAcc.ShippingPostalCode = targetAcc.BillingCity;
// save it back to Salesforce
update targetAcc;

/*11. Continue from above task (in different file)
   - Create 5 placeholder Contact under this Account and fill up as below
      - LastName : AccountName followed by (1,2,3,4,5)
      - MailingCountry     has same value as Account BillingCountry
      - MailingState       has same value as Account BillingState
      - MailingCity        has same value as Account BillingCity
      - MailingPostalCode  has same value as Account BillingPostalCode

   - Steps : 
      - Create an empty List of Contact with name contactList
      - use for loop to iterate over 5 iteration 1-5
      - Create an Contact variable , assign value as above 
      - assign the AccountId field to the Id of targetAcc
      - add it to your contactList
         - or do in one shot
      - outside of your loop
      - insert contactList
         - print out the List, observe Ids generated for Contact
      - verify from your Salesforce org */
      Account targetAcc = new Account ();
targetAcc.Name = 'Test VSCode Account';
targetAcc.BillingState = 'TX';
targetAcc.BillingCity = 'Houston';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '72345';

insert targetAcc;

List<Contact> contactList = new List<Contact>();
for(Integer i=0; i<5 ;i++) {
    Contact con = new Contact (LastName = targetAcc.Name + i);
    con.MailingCountry = targetAcc.BillingCountry;
    con.MailingState = targetAcc.BillingState;
    con.MailingCity = targetAcc.BillingCity;
    con.MailingPostalCode = targetAcc.BillingPostalCode;
    con.AccountId = targetAcc.Id;
    contactList.add(con);
}
insert contactList;
System.debug('contactList value is : ' + contactList);




























