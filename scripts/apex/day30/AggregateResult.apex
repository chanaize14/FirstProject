// SELECT Count(Id) FROM Account

AggregateResult result = [SELECT Count(Id),MAX(AnnualRevenue)
                           FROM Account];
System.debug('result value is : ' + result);

// get the count value out of AggregateResult
// we have get method that accept the column name and return the value 
System.debug('Count of Account is ' +  result.get('expr0')       ); 
System.debug('MAX(AnnualRevenue) is ' + result.get('expr1')       ); 



// SELECT Count of Opportunity Min Opps amount for All opportunities
// Store the result into a variable and print it out
// give alias to your aggregate function as CountOfOpps, LowestAmount
AggregateResult oppResult = [SELECT COUNT(Id) CountOfOpps, MIN(Amount)LowestAmount
                            FROM OPPORTUNITY];

 system.debug('count of opps is '+ oppResult.get('CountOfOpps'));
 system.debug('count of opps is '+ oppResult.get('LowestAmount')); 
 
 


 // If the SOQL Query return single row, we can store it into one AggregateResult variable
// When we have multiple rows as a result of GROUP BY
// Then we will get one AggregateResult for every row
// and we can store it in a List or Array 
// List<AggregateResult> or just AggregateResult[]

AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps
                                    FROM OPPORTUNITY
                                    GROUP BY StageName];

// System.debug('allResults value is : ' + allResults);
for(AggregateResult each : allResults) {
   // System.debug('Current value : ' + each);
   // print in this format  StageName --> CountOfOpps
    System.debug(each.get('StageName')   + '-->' + each.get('CountOfOpps')  ); 
    
}
// TASK :  Store the result of below query and print each item out 
/**
// SELECT isClosed, COUNT(Id)
// FROM Opportunity
// GROUP BY IsClosed
 */
 AggregateResult[] caseresults =[SELECT isClosed, COUNT(Id) CountOfOpps
                                                    FROM Opportunity
                                                    GROUP by IsClosed];
 for(AggregateResult each : caseresults){
    System.debug(each.get('isClosed')   + ' ' + each.get('CountOfOpps')  ); 
    
 }

 



