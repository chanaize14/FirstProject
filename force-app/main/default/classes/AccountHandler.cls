public class AccountHandler {
    public static void handleAccountBeforeDelete(List<Account> accList, Map<Id,Account> oldMap){
    // Prevent the accouNt from being deleted if there is child opps 
    // Get All the account with child opps with below query 
    // and filter it more to only the records entered the trigger 
    // (for this you need the ID of records that entered the trigger)
    // store the result into List<Account>

    List<Account> accWithOpps = [SELECT Id , Name
                                 FROM Account 
                                 WHERE Id IN (SELECT AccountId FROM Opportunity)
                                 AND Id IN :accList];

    for(Account each : accWithOpps) {
        //YOU CAN NOT USE .addError() TO ANY RECORD OUTSIDE THE CONTEXT OF
        // TRIGGER.NEW OR .OLD .newMAP .oldMAP
        oldMap.get(each.Id).addError('CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!');
    }
    }        
}