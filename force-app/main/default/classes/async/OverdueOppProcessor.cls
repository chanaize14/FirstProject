// you can  use Database.Batchable<YourSpecificSObjectType> instead of Database.Batchable<sObject>
// only if you return Iterable<YourSpecificSObjectType> instead of Database.QueryLocator
// for the start method , otherwise it will not compile 
public class OverdueOppProcessor implements Database.Batchable<sObject> , Database.Stateful{
    
    // create a instance variable to keep track of total number of record processed
    // it will get incremented in each batches
    Integer totalProcessed = 0 ;
    // a variable to keep track of batch number and increment in each batch  
    Integer batchNumber = 0 ; 

    public Database.QueryLocator start(Database.BatchableContext bc){

        System.debug('Starting to gather all the records to be processed'); 
        

        return Database.getQueryLocator('SELECT Id,StageName FROM Opportunity '+
                                        +' WHERE CreatedDate=TODAY'); 

    }

    public void execute(Database.BatchableContext bc ,List<Opportunity> recordsInBatch){

        // increment batch number by 1 so we can see useful message 
        ++batchNumber ; 

        System.debug('Batch number '+ batchNumber  +' Processing ' +recordsInBatch.size() + ' records here'); 
        
        totalProcessed +=  recordsInBatch.size(); 

        List<Opportunity> updatedOpps = new List<Opportunity>(); 

        for(Opportunity each : recordsInBatch) {
            each.StageName = 'Closed Lost'; 
            updatedOpps.add(each); 
        }
        // perform dml to update
        // update updatedOpps ; // if one record fail to update , this batch will fail to update 
        Database.update(updatedOpps, false); // set all or nothing to false so successful update remain updated.  


    }


    public void finish(Database.BatchableContext bc){
        System.debug('Done processing Opps'); 

        // get the jobId from the bc parameter 
        ID jobId = bc.getJobId() ; 

        AsyncApexJob result = [ SELECT Id, Status, NumberOfErrors,
                                JobItemsProcessed,
                                TotalJobItems
                                FROM AsyncApexJob
                                WHERE Id = :jobID ]; 

        System.debug('result value is : ' + result);
        
        String body = 'The job with Id ' + jobId  
                        + ' Status is ' + result.Status
                        + ' Number of Error is ' + result.NumberOfErrors
                        + ' JobItemsProcessed is ' + result.JobItemsProcessed
                        + ' TotalJobItems is ' + result.TotalJobItems 
                        + ' Total record processed ' + this.totalProcessed 
                        ; 
        
        String subject = 'The job with Id ' + jobId +  ' is ' + result.Status ;

        EmailManager.sendMail(UserInfo.getUserEmail(), subject, body) ; 


        /**
         * SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems
            FROM AsyncApexJob
            WHERE Id = 
         */
        

    }



}