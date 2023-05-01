public class MyLeadBatchProcessor implements Database.Batchable<sObject> {
    
// List and Set IS-A Iterable , so you can return List<sObject> or Set<sObject>
// if you choose to make start method return Iterable<sObject>
// you can have up to 50K record if you choose 
 public Iterable<sObject> start(Database.BatchableContext bc) {

        System.debug('This is the start method that supposed ' + 
                    + ' to gather all data that need to be processed'); 

        // collect the batches of records or objects to be passed to execute
        // return List of Leads created Today here 
        return [SELECT Id,LastName, AnnualRevenue FROM Lead
                WHERE CreatedDate = TODAY];
    }

    /**
     *      
     * @param bc to get more info about each batch, we dont do anything with it mostly 
     * @param records This parameter will be filled up with each set of record 
                       for each batches , for example 
                       if you got 1000 records from start method query 
                       when this class is used to run batch process and 
                       if you decided to chop it up to 5 batches 
                       records variable will have 200 record filled up for you 
                       in each batches  
     */
    public void execute(Database.BatchableContext bc, List<Lead> records){
        // process each batch of records
        System.debug('records.size()  value is : ' + records.size() );
        // write a logic to update list of Lead 
        // lastname to uppercase and annualrevenue to 1000000
        List<Lead> updatedLeads = new List<Lead>();
        // loop thorugh the records in this batch, do the update, add it to the list     
        for(Lead each : records) {
            each.LastName =  each.LastName.toUpperCase() ; 
            each.AnnualRevenue = 100000; 
            // add it to the updatedLeads
            updatedLeads.add(each) ; 
        }
        // use DML to update 
        update updatedLeads ; 

    }

    public void finish(Database.BatchableContext bc){
        System.debug('We have done processing all the leads'); 
        EmailManager.sendMail(UserInfo.getUserEmail(), 
                                'Batch Apex Completed', 
                                'All leads done processing'); 
    }



}
