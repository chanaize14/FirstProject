trigger ContactTrigger on Contact (after insert, after update, after delete, after undelete) {
     
    Set<Id> accountIds = new Set<Id>();
     
    if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
        for(Contact con:trigger.new){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
    }
     
    if(trigger.isUpdate || trigger.isDelete){
        for(Contact con:trigger.old){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
    }
     
    if(!accountIds.isEmpty()){
        List<Account> accList = [SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) 
                                 FROM Account WHERE Id IN : accountIds];
        if(!accList.isEmpty()){
            List<Account> updateAccList = new List<Account>();
            for(Account acc:accList){
                Account objAcc = new Account(Id = acc.Id, Number_of_Contacts__c = acc.Contacts.size());
                updateAccList.add(objAcc);
            }
            if(!updateAccList.isEmpty()){
                update updateAccList;
            }
        }
    }
}