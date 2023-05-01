public class TestDataFactory {
  /**
   * Create a list of case records for testing purposes.
   * @param numCases The number of cases to create
   * @param priority The priority to set for all cases
   * @return A list of case records
   */
  public static List<Case> createCases(Integer numCases, String priority) {

     List<Case> caseList = new List<Case>(); 
     
     for(Integer i=1; i<=numCases ;i++) {
        
        Case c = new Case( Subject = 'Sample Subject '+i  ,
                            Priority = priority
                              ); 
        caseList.add(c); 
     }

     return caseList ; 

  }
}
