trigger CaseTrigger on Case (after insert, after update, after delete, after undelete) {

    for(case each:trigger.new){
        if (each.Status == 'New' || each.Status == 'Working'){
            each.OwnerId = UserInfo.getUserId();
        }
    }

            








//SCENARIO 2
// on the account object create a new field called total cases 
//and create a trigger on case so if the case is associated to 
//any account the total cases field should be recalculated
 

 

    Set<Id> accountIds = new Set<Id>();
    
    if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
        for (Case c : Trigger.new) {
            if (c.AccountId != null) {
                accountIds.add(c.AccountId);
            }
        }
    }
    if (Trigger.isDelete || Trigger.isUpdate) {
        for (Case c : Trigger.old) {
            if (c.AccountId != null) {
                accountIds.add(c.AccountId);
            }
        }
    }
    List<Account> accountsToUpdate = new List<Account>();
    for (Id accountId : accountIds) {
        Integer totalCases = [SELECT COUNT() FROM Case WHERE AccountId = :accountId];
        accountsToUpdate.add(new Account(Id = accountId, Total_Cases__c = totalCases));
    }
    update accountsToUpdate;
}   
            
        
    


//Scenario 1:
//Update the case owner to the current logged in user if the user selects any
// of these picklist values (New OR Working).

//Scenario 3:
//If the subject of case contains "Cydeo" then update the status of case
 //to Working only if the status is New, if the status is not equals 
 //to New then do not update the status field of case object.