/*9. Create a List<Opportunity> and add 5 valid opportunity with required fields
   - StageName, Name , ClosedDate , Amount 
   - insert into Salesforce
   - Get a Map<Id, Opportunity> out of this List<Opportunity>
     - either directly putting the list into () while creating the map 
     - or Create an Empty Map and use putAll method 
     - or use Loop to add it one by one
   - Create an empty Map<String,Decimal> 
     - Loop through your List and 
     - Add the Opportunity Name field value as Key
     - Add the Opportinuty Amoung field value as Value*/
     List<Opportunity> oppList = new List<Opportunity>{
    new Opportunity(
        Name = 'Opportunity 1',
        StageName = 'Prospecting',
        ClosedDate = Date.newInstance(2023,3,16),
        Amount = 10000
    ),
    new Opportunity(
        Name = 'Opportunity 2',
        StageName = 'Qualification',
        ClosedDate = Date.newInstance(2023,2,19),
        Amount = 20000
    ),
    new Opportunity(
        Name = 'Opportunity 3',
        StageName = 'Needs Analysis',
        ClosedDate = Date.today()+4,
        Amount = 30000
    ),
    new Opportunity(
        Name = 'Opportunity 4',
        StageName = 'Value Proposition',
        ClosedDate = date.today()+2,      
        Amount = 40000
    ),
    new Opportunity(
        Name = 'Opportunity 5',
        StageName = 'Closed Won',
        ClosedDate =date.today()+1,
        Amount = 50000
    )
};

// Insert the Opportunities into Salesforce
insert oppList;

// Create a Map with the Opportunity Ids as keys and Opportunities as values
Map<Id, Opportunity> oppMap = new Map<Id, Opportunity>(oppList);

// Create an empty Map with Opportunity Names as keys and Amounts as values
Map<String, Decimal> nameAmountMap = new Map<String, Decimal>();

// Loop through the Opportunities and add their Name and Amount to the Map
for (Opportunity opp : oppList) {
    nameAmountMap.put(opp.Name, opp.Amount);
}

// Print the Maps
System.debug('oppMap: ' + oppMap);
System.debug('nameAmountMap: ' + nameAmountMap);

