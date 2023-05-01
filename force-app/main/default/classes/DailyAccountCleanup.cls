public class DailyAccountCleanup implements Schedulable{
    
    public void execute(SchedulableContext context){

        // delete all accounts created Today
        List<Account> todaysAccounts = [SELECT Id from Account
                                     WHERE CreatedDate = TODAY]; 
        if(!todaysAccounts.isEmpty()){
            delete todaysAccounts ; 
        }

    }

}