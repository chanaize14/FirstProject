/*5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opps'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities that
    has amount field over 60000 to 'Parent of Cool Opp'*/

   // Create List of Opportunity
List<Opportunity> oppList = new List<Opportunity> ();  
// Add 10 items in it with valid Opportunity required fields filled up
for(Integer i=1; i<=10 ;i++) {

    Opportunity opp = new Opportunity(); 
    // Name, Opp - 1(2,3,4,5..10)
    opp.Name = 'Opp - ' + i ; 
    // ClosedDate (10 days from Today),
    opp.CloseDate = Date.today().addDays(10) ; 
    // StageName ='Prospecting', `
    opp.StageName = 'Prospecting' ;
    // Amount : random Integer between 0-100000
    opp.Amount   = Math.round( Math.random() * 100000); 
    // add it to the list 
    oppList.add( opp ) ; 
}
// insert the list into your org
insert oppList ; 

// Create an Account with Name = 'Parent of Cool Opps'
Account coolAccount = new Account(Name = 'Parent of Cool Opps'); 
// insert into Salesforce org
insert coolAccount ; 

// Create an empty List of Opportunity called coolOppsList
List<Opportunity> coolOppsList = new List<Opportunity> (); 
// Loop through your entire List of 10 items
for(Opportunity each : oppList) {
   
    // If amount is greater than 60000
    if(each.Amount > 60000){
    // Update AccountId field to Id of Account you created earlier
        each.AccountId = coolAccount.Id ; 
    // Add the Opportunity to coolOppsList
        coolOppsList.add(each); 
    }
}
// Update the coolOppsList in your org
update coolOppsList ; 

// Go to user interface and observe you have filled up Account Name field of all opportunities
// that has amount over 60000 to 'Parent of Cool Opp' Account record




// Create List of Opportunity
List<Opportunity> oppList = new List<Opportunity> ();  
// Add 10 items in it with valid Opportunity required fields filled up
for(Integer i=1; i<=10 ;i++) {

    Opportunity opp = new Opportunity(); 
    // Name, Opp - 1(2,3,4,5..10)
    opp.Name = 'X Opp - ' + i ; 
    // ClosedDate (10 days from Today),
    opp.CloseDate = Date.today().addDays(10) ; 
    // StageName ='Prospecting', `
    opp.StageName = 'Prospecting' ;
    // Amount : random Integer between 0-100000
    opp.Amount   = Math.round( Math.random() * 100000); 
    // add it to the list 
    oppList.add( opp ) ; 
}
// insert the list into your org
insert oppList ; 

// Create an Account with Name = 'Parent of Cool Opps'
Account coolAccount = new Account(Name = 'Parent of Very Cool Opps'); 
// insert into Salesforce org
insert coolAccount ; 

// Create an empty List of Opportunity called coolOppsList
// store the opps with amount greater than 600000
List<Opportunity> coolOppsList = new List<Opportunity> (); 

// Create an empty List of Opportunity called lowOppsList
// store the opps with amount less than or equals 600000
List<Opportunity> lowOppsList = new List<Opportunity> (); 


// Loop through your entire List of 10 items
for(Opportunity each : oppList) {
   
    // If amount is greater than 60000
    if(each.Amount > 60000){
    // Update AccountId field to Id of Account you created earlier
        each.AccountId = coolAccount.Id ; 
    // Add the Opportunity to coolOppsList
        coolOppsList.add(each); 
    }else{ // if it's less than or equals 60000 
        // add it to lowOppsList
        lowOppsList.add(each) ; 
    }
}

System.debug('coolOppsList value is : ' + coolOppsList); 
System.debug('lowOppsList value is : '  + lowOppsList); 

// Update the coolOppsList in your org
update coolOppsList ; 

// delete the lowOppsList from your org 
delete lowOppsList ; 

// Go to user interface and observe you have filled up Account Name field of
// all opportunities that has amount over
// 60000 to 'Parent of Cool Opp' Account record