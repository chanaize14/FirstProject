public class ChildCaseHandler {
    
    public static Boolean firstRun = true ; 

    /**
     * A method for the logic of after insert event 
     * Everytime new high priority case is created
     *  a child case with Subject of  Child case for Parent #CaseNumberGoesHere
     *   with priority high should be created 
     * @param newCases 
     */
    public static void handleAfterInsert(List<Case> newCases){

        if(!firstRun){
            return ; 
        }

        // if you come to this point it means it's the first run 
        firstRun = false ; // this code has already been executed 
        // create an empty list of case for storing Child cases about to be created and inserted
        List<Case> childCasesToInsert = new List<Case>();
        
        // go through each and every newCase created
        for(Case each : newCases) {
            // check if the priority is high 
            if (each.Priority == 'High') {
                //if so create child case , add it to lIST childCasesToInsert
               Case childCase = new Case(
                    Subject = 'Child Case for Case #' + each.CaseNumber,
                    ParentId = each.Id,
                    Priority = 'High'
                );
               childCasesToInsert.add(childCase) ; 
             
            }

        }
        // insert the child cases 
        if(! childCasesToInsert.isEmpty() ){
            insert childCasesToInsert ; 
        }
        
       

    }


}