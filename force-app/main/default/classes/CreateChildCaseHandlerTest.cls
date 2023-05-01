@isTest
Private class CreateChildCaseHandlerTest {
    
    @isTest
    static void testHandlerAfterInsert(){

        // Arrange
        List<case> newCases = CreateChildCaseHandler.createCases(2, 'High');
        insert newCases;
        
        // act
        List<Case> childCases = [SELECT parentId, Subject, Priority
                                 FROM Case 
                                 WHERE priority = 'High' and Subject ='Child%'];
        
            for (case each:childCases){

                String actualResults   = each.Subject;
                String expectedResults = 'Child Case for Case #' + each.Parent.CaseNumber;
                system.assertEquals(expectedResults, actualResults);

                String actualPriority = each.Priority;
                String expectedPriority = 'High';
                system.assertEquals(actualPriority, expectedPriority);

            }
    }
 @isTest
    static void testHandlerAfterInsertMedPriority(){

        // Arrange
        List<case> newCases = CreateChildCaseHandler.createCases(2, 'High');
        insert newCases;
        
        // act
        List<Case> childCases = [SELECT parentId, Subject, Priority
                                 FROM Case 
                                 WHERE priority = 'High' and Subject ='Child%'];
        
        //assert
        Integer actual = childCases.size();
        Integer expected = 0;
        system.assertEquals(expected,actual);
        
           
    }
 













}
