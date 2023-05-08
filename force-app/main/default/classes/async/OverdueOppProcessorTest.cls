
   
@isTest
private class OverdueOppProcessorTest {
    
    @testSetup
    static void createTestData(){
        // Arrange
        Utils.getManyOpps('Test', 100,true) ; 

    }

    @isTest
    static void testBatchCloseOpportunities(){
        
        // YOU CAN NOT HAVE MORE THAN 1 BATCH IN THE TEST 
        // SO MAKE SURE YOUR TOTAL TEST RECORDS FALL INTO SINGLE BATCH 
        //Act 
        Test.startTest(); 
        OverdueOppProcessor ovp = new OverdueOppProcessor(); 
        Database.executeBatch(ovp, 100) ; 
        // the moment this line finish executing, 
        //async codes will be forced to run right away
        Test.stopTest(); 

        // Assert 
        // All 100 records should have closed Lost status 
        //[SELECT COUNT(Id) From Opportunity WHERE StageName='Closed Lost']
        List<Opportunity> opps =  [SELECT Id From Opportunity WHERE StageName='Closed Lost'] ; 
        Assert.areEqual(100, opps.size() );
        

    }    

}















