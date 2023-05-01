// you can  use Database.Batchable<YourSpecificSObjectType> instead of Database.Batchable<sObject>
// only if you return Iterable<YourSpecificSObjectType> instead of Database.QueryLocator
// for the start method , otherwise it will not compile 
public class OverdueOppProcessor implements Database.Batchable<sObject>{
    

    public Database.QueryLocator start(Database.BatchableContext bc){

        System.debug('Starting to gather all the records to be processed'); 
        

        return Database.getQueryLocator('SELECT Id,StageName FROM Opportunity '+
                                        +' WHERE CreatedDate=TODAY'); 

    }

    public void execute(Database.BatchableContext bc ,List<Opportunity> recordsInBatch){

        System.debug('Processing ' +recordsInBatch.size() + ' records here'); 
        

        List<Opportunity> updatedOpps = new List<Opportunity>(); 

        for(Opportunity each : recordsInBatch) {
            each.StageName = 'Closed Lost'; 
            updatedOpps.add(each); 
        }
        // perform dml to update
        update updatedOpps ; 

    }


    public void finish(Database.BatchableContext bc){
        System.debug('Done processing Opps'); 
    }



}