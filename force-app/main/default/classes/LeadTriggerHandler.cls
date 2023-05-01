public class LeadTriggerHandler {
  
  /**
   * Requirement :
   * AW Computing is getting lots their lead from social events
   * In order to keep the lead motivated ,
   * anytime new lead is created,
   * a new Task should be created for this lead with below detail
   *  Task Subject (Subject)   : Send Apple Air tag
   *  Task Due Date(ActivityDate) : 2 days after Today
   *  Task  Name (WhoId) : should be the Id of the lead record
   *   THIS CAN BE DONE IN AFTER_INSERT EVENT
   */

  public static void handleBeforeInsert(List<Lead> leadLst) {
    
    for (Lead each : leadLst) {
    // make the LastName uppercase and assign it back to field value
        each.LastName = each.LastName.toUpperCase();
        // * If the firstName was entered, make it TitleCase
        if (each.FirstName != null) {
            each.FirstName = each.FirstName.toLowerCase().capitalize();
        }
        // If the lead source was entered , choose web
        // you can also use String.isBlank(each.LeadSource)
        if (each.LeadSource == null) {
             each.LeadSource = 'Web';
        }
    }


  }

  /**
   * Static void method that accept list of list 
   * and create a task for each list with given details 
   * @param leadLst 
   * 
   *
    Requirement :
    AW Computing is getting lots their lead from social events
    In order to keep the lead motivated,
        -->anytime new lead is created 
    -a new task should be created for this lead with below detail

        Task subject: Send Apple Air Tag
        Task Due Date (ActivityDate): 2 days after Today
        Task Name (WhoID field) : should be the Id of the lead record

    THIS CAN BE DONE IN AFTER_INSERT EVENT
   */


  public static void handleAfterInsert(List<Lead> leadLst){

    // We are creating Task for each newly created lead and insert once
    // so we need empty list of Task so we can add it in the trigger loop
    // then perform one dml
    List<Task> taskList = new List<Task>();

    // trigger loop to go through each record entered the trigger
    for (Lead each : leadLst) {
      // create Task and fill up the fields
      Task t = new Task();
      t.Subject = 'Send Apple Air tag to ' + each.LastName;
      t.ActivityDate = Date.today() + 2;
      t.WhoId = each.Id;
      // add it to the list
      taskList.add(t);
    }
    // insert these tasks into Salesforce
    insert taskList;


  }


  /**
   * Write a method that accept List of Lead (from Trigger context variable)
   * and check if the lead status is Working - Contacted
   * prevent deletetion with error message 
   */

  public static void handleBeforeDelete(List<Lead> leadLst){


    for (Lead each : leadLst) {
        if (each.Status == 'Working - Contacted') {
            each.addError('Can not Delete a Lead in Working Status') ;
        }
    }

  }

  



}