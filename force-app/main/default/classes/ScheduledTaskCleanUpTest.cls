@isTest
private class ScheduledTaskCleanUpTest {
    

    @TestSetup
    static void createTestData(){
        // arrange 
        List<Task> allTasks = new List<Task>(); 

        for(Integer i=1; i<=10 ;i++) {
            
            Task t = new Task(Subject = 'Test schedule '+ i , 
                              ActivityDate = Date.today()- 1 );
            allTasks.add(t); 
        }
        insert allTasks ; 

    }

    @isTest
    static void testOverdueTasksGetCompletedWithSchedule(){
        
        //Act 
        Test.startTest() ; 

        Schedulable stc = new ScheduledTaskCleanUp();
        System.schedule('Task cleanup', '0 0 0 15 3 ? 2042', stc ) ; 

        Test.stopTest() ; // after this line scheduled apex code will forced to run right away

        // Assert 
        // we are expecting all 10 tasks status become Completed 
        List<Task> latestTasks = [Select Id from Task WHERE Status = 'Completed'];
        Assert.areEqual(10, latestTasks.size() );
    
    }



}