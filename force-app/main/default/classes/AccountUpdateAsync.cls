public class AccountUpdateAsync implements Queueable{

    String description;
    List<Account> accListToProcess;
 

    public AccountUpdateAsync(String description, List<Account> accListToProcess) {
        this.description = description;
        this.accListToProcess = accListToProcess;

    }

    public void execute(QueueableContext context){
        System.debug('Running some awesome code it AccountUpdateAsync class'); 
        //print out value of description field
        System.debug('this.description value is : ' + this.description);

        //update the description field of List<Account>  
        //to the description provided
        for(Account each : accListToProcess) {
            each.Description = this.description;
        }
        update accListToProcess;
        //right after we are done with account update
        //we want to perform another async code
        //that need to happen right after account update

        TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate();
        System.enqueueJob(tq);
        
        

        }
}