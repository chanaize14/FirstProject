/**
 * Create a class to run on a schedule 
 * Any tasks that overdue should be marked as completed
 */
public class ScheduledTaskCleanUp implements Schedulable {
    

    public Void execute(SchedulableContext context){

        
        List<Task> overdueTasks = [SELECT Id, Subject, ActivityDate, Status
                                    FROM Task
                                    WHERE ActivityDate< TODAY ];

        
        List<Task> updatedTasks = new List<Task>(); 

        for(Task each : overdueTasks) {
            each.Status = 'Completed';
            updatedTasks.add(each); 
        }
        
        if(!updatedTasks.isEmpty() ){
            update updatedTasks ; 
        }

        
    }



}

/**

        for(Task each : [SELECT Id, Subject, ActivityDate, Status
                         FROM Task WHERE ActivityDate< TODAY ]) {
            each.Status = 'Completed';
            updatedTasks.add(each); 
        }



 */