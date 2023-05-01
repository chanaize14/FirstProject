trigger AccountOppsUpdate on Account (after update) {
//if Account updated to be inactive (Active__c set to No)
//update all the 'Open' opportunities StageName to 'Closed Lost' 
    //1. create a set of ids to store only those accounts id
    //that entered the trigger with active field updated to no
    Set<Id> accIds = new Set<Id>();
    for(Account each : Trigger.new) {
        Account eachOld =  Trigger.oldMap.get(each.Id) ; 
       // check if Active__c fields has changed and changed to No
       if(each.Active__c != eachOld.Active__c && each.Active__c == 'No' ){
          accIds.add(each.Id) ; 
       }
    }
    //if no accounts that entered the trigger has Active__C fields changed to no
    //the set is empty, get out of the trigger, do not proceed
    if( accIds.isEmpty() ){
        System.debug('no accounts that entered the trigger has Active__C fields changed to No'); 
        return;
    }
        
    //2. get all the open opps belong to those accounts
    List<Opportunity> tobeUpdatedOpps = [SELECT Name, AccountId, StageName
                                        FROM Opportunity
                                        WHERE IsClosed = False 
                                        AND AccountId IN :accIds];
    //3, update the open opps above stagename to closedlost
    for(Opportunity each : tobeUpdatedOpps) {
        each.StageName = 'Closed Lost';
    }
        
    //4. perform dml to update in salesforce
    if( !tobeUpdatedOpps.isEmpty() ){
        update tobeUpdatedOpps ;
    }

}