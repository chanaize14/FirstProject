/*10. Create an Account variable with name targetAcc and assign value with below fields 
   - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
   - insert it into Salesforce
   - update below fields and reflect the changes in Salesforce
      - ShippingCountry     has same value as BillingCountry
      - ShippingState       has same value as BillingState
      - ShippingCity        has same value as BillingCity
      - ShippingPostalCode  has same value as BillingPostalCode*/
      //  Create an Account variable with name targetAcc and assign value with below fields 
    Account targetAcc = new Account(); 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
    targetAcc.Name              = 'Salesforce Tower234';
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