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
      //  Create an Account variable with name targetAcc and assign value with below fields 
    Account targetAcc = new Account(); 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
    targetAcc.Name              = 'Salesforce TDX';
    targetAcc.BillingState      = 'California';
    targetAcc.BillingCity       = 'San Francisco';
    targetAcc.BillingCountry    = 'US';
    targetAcc.BillingPostalCode = '11111';
//    - insert it into Salesforce
    insert targetAcc ; 
    System.debug('targetAcc value is : ' + targetAcc); 

//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
    targetAcc.ShippingCountry = targetAcc.BillingState ; 
//       - ShippingState       has same value as BillingState
    targetAcc.ShippingState = targetAcc.BillingCountry ; 
//       - ShippingCity        has same value as BillingCity
    targetAcc.ShippingCity = targetAcc.BillingCity ; 
//       - ShippingPostalCode  has same value as BillingPostalCode
    targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode ; 

    // save it back to Salesforce 
    update targetAcc ; 

System.debug('------------------');

  //--------------------------

/// create a contact under this account 
// fill up the fields as below 
//       - `LastName` : AccountName followed by 1 contact
//       - `MailingCountry`     has same value as Account `BillingCountry`
//       - `MailingState`       has same value as Account `BillingState`
//       - `MailingCity`        has same value as Account `BillingCity`
//       - `MailingPostalCode`  has same value as Account `BillingPostalCode`
// insert into salesforce 

    

 
//----------

//   Continue from above task (in different file)
//    - Create 5 placeholder Contact under this **Account** and fill up as below
//       - `LastName` : AccountName followed by (1,2,3,4,5) contact
//       - `MailingCountry`     has same value as Account `BillingCountry`
//       - `MailingState`       has same value as Account `BillingState`
//       - `MailingCity`        has same value as Account `BillingCity`
//       - `MailingPostalCode`  has same value as Account `BillingPostalCode`
   
//    - Steps : 
//       - Create an empty **List of Contact** with name `contactList`
//       - use for loop to iterate over 5 iteration 1-5
//       - Create an Contact variable , assign value as above 
//       - assign the `AccountId` field to the **Id** of `targetAcc`
//       - add it to your `contactList`
//          - or do in one shot
//       - outside of your loop
//       - **insert** `contactList`
//          - print out the List, observe Ids generated for Contact
//       - verify from your Salesforce org

// Create an empty List of Contact
List<Contact> contactList = new List<Contact>();

// Use a for loop to iterate over 5 iterations
for (Integer i = 1; i <= 5; i++) {
    // Create a new Contact with specified fields
    Contact newContact = new Contact(
        LastName = targetAcc.Name + ' ' + i,
        MailingCountry = targetAcc.BillingCountry,
        MailingState = targetAcc.BillingState,
        MailingCity = targetAcc.BillingCity,
        MailingPostalCode = targetAcc.BillingPostalCode
    );
    
    // Assign the AccountId field to the Id of targetAcc
    newContact.AccountId = targetAcc.Id;
    
    // Add the new Contact to the contactList
    contactList.add(newContact);
}

// Insert the contactList into Salesforce
insert contactList;

// Print out the List and observe Ids generated for Contact
System.debug(contactList);

// Verify from your Salesforce org
// You should see 5 new Contacts related to the
// targetAcc Account, with their fields set as specified above.
