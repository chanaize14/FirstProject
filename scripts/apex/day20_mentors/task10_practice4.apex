/*
4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now 
*/
Lead lead1 = new Lead(LastName = 'Young');
lead1.Company = 'Avengers Coop.';
lead1.Status = 'Working - Contacted';

insert lead1;

Task taskLead1 = new Task();
taskLead1.WhoId = lead1.Id;
taskLead1.Priority = 'High';
taskLead1.ActivityDate = Date.today().addDays(7);     
taskLead1.Subject = 'Follow up ' + lead1.Company;

insert taskLead1;

/*
5. Create List of Opportunity 
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
   - Go to user interface and observe you have filled up Account Name field of all opportunities
     that has amount field over 60000 to 'Parent of Cool Opp'
*/



List<Opportunity> opps = new List<Opportunity>();

for(Integer i = 1; i <= 10; i++){

   Opportunity opp = new Opportunity();

   opp.Name = 'Opp - ' + i;
   opp.CloseDate = Date.today() + 10;
   opp.StageName = 'Prospecting';

   Double num = Math.random() * 100000;
   opp.Amount = num.round();

   opps.add(opp);

}

insert opps;

Account acct = new Account(Name = 'Parent of Cool Opps');

insert acct;

List<Opportunity> coolOppsList = new List<Opportunity>();

for(Opportunity eachOpp : opps){

   if(eachOpp.Amount > 60000){

      eachOpp.AccountId = acct.Id;
      coolOppsList.add(eachOpp);
   }
}

update coolOppsList;