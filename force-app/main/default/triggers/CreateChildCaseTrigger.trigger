trigger CreateChildCaseTrigger on Case (after insert) {


    // ## Task Set Trigger With Recursion 

    // 1. Create a new Apex trigger on the Case object, called CreateChildCaseTrigger.
    // 2. Add a trigger handler class, called CreateChildCaseHandler, to implement the trigger logic.
    // 3. In the trigger handler class, implement a handleAfterInsert trigger handler method,
    //       the method should 
    //    1. have a parameter to accept List<Case> newCases as param (so you can pass Trigger.new)
    //    2. The method will insert a new Child case with high Priority if the case Priority is High
    //       so every time a case with high priority created, it will create another case 
    //       with high priority and set the ParentId to the case
    //     - This is how it looks like to create child case
         
    //      Case childCase = new Case(
    //                     Subject = 'Child Case for Case #' + each.CaseNumber,
    //                     ParentId = each.Id,
    //                     Priority = 'High'
    //                 );
         
    
    //     3. Create an empty List of Case childCasesToInsert 
    //     4. Loop through each and every case in newCases list 
    //     5. check for if the case Priority is High
    //        1. if so create child case as instructed above 
    //        2. add it to the childCasesToInsert list 
    //     6. Insert childCasesToInsert 
    
    // 4. This will case recursion because we are firing another another after insert event here
    // 5. Update your TriggerHandler class to add static variable called firstRun and set it to true
    // 6. check if firstRun is true before running any logic if not firstRun then set the value of firstRun
    //     to false to prevent next run


    CreateChildCaseHandler.handleAfterInsert(trigger.new);
}