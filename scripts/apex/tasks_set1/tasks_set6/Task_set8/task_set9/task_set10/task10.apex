/*Create an Account variable with name targetAcc and assign value with below fields 
   - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
   - insert it into Salesforce
   - update below fields and reflect the changes in Salesforce
      - ShippingCountry     has same value as BillingCountry
      - ShippingState       has same value as BillingState
      - ShippingCity        has same value as BillingCity
      - ShippingPostalCode  has same value as BillingPostalCode*/

    Account targetAcc = new Account();
     targetAcc.Name              = 'Salesforce TDX';
    targetAcc.BillingState      = 'California';
    targetAcc.BillingCity       = 'San Francisco';
    targetAcc.BillingCountry    = 'US';
    targetAcc.BillingPostalCode = '11111';
    insert targetAcc;
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

// Create a new Account with specified fields
Account targetAcc = new Account(
    Name = 'Target Account',
    BillingState = 'California',
    BillingCity = 'San Francisco',
    BillingCountry = 'USA',
    BillingPostalCode = '94105'
);

// Insert the new Account record into Salesforce
insert targetAcc;

// Update the Shipping fields to match the Billing fields
targetAcc.ShippingCountry = targetAcc.BillingCountry;
targetAcc.ShippingState = targetAcc.BillingState;
targetAcc.ShippingCity = targetAcc.BillingCity;
targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode;

// Update the Account record in Salesforce
update targetAcc;



