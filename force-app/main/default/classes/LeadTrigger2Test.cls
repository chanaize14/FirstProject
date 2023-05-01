@isTest
private class LeadTrigger2Test {
    

    // I have 2 or more test methods that need same data setup 
    // and I want to only set it up once instead of repeating 
    // in eact and every test 
    // all 3 tests need 5 lead data inserted 

    @TestSetup
    static void makeData(){
     
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead(FirstName='jon1', LastName='snow1', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon2', LastName='snow2', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon3', LastName='snow3', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon4', LastName='snow4', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon5', LastName='snow5', Company='ABC',LeadSource='Phone')  ); 
        
        insert myLeads ; 
        
    }


    @isTest
    static void test1(){
        List<Lead> allLeads = [SELECT Id,Name FROM Lead ]; 
        Assert.areEqual(5, allLeads.size()  );
    }

    @isTest
    static void test2(){
        List<Lead> allLeads = [SELECT Id,Name FROM Lead ]; 
        Assert.areEqual(5, allLeads.size()  );
    }

    @isTest
    static void test3(){
        List<Lead> allLeads = [SELECT Id,Name FROM Lead ]; 
        Assert.areEqual(5, allLeads.size()  );
    }





}