trigger OpportunityTrigger on Opportunity(
  before insert,
  after insert,
  before update,
  after update,
  before delete
) {
  // pring out the operation type for better debugging experience
  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  // Requirement :
  // When the opportunity is updated
  // if the stageName has CHANGED to Closed Won
  //  // Create a new Task with below details
  // Subject : Follow up with renewal
  // ActivityDate : 1 day from Today
  // WhatId   :  opp Id
  if (Trigger.isAfter && Trigger.isUpdate) {
    // create an empty list of task to store the list of items
    List<Task> taskList = new List<Task>();

    // trigger loop
    for (Opportunity each : Trigger.new) {
      // Trigger.oldMap =>  Map<Id,Opportunity> with old fields value
      Opportunity oldOp = Trigger.oldMap.get(each.Id);
      // if the stageName has CHANGED to Closed Won
      if( each.StageName!=oldOp.StageName && each.StageName=='Closed Won'){
        
        Task t = new Task(); 
        t.Subject       = 'Follow up with renewal ' + each.Name; 
        t.ActivityDate  = Date.today() + 1 ; 
        t.WhatId        = each.Id ; 
        taskList.add(t);  
      }
    }
    // outside the loop , add insert one time 
    insert taskList ; 
  }

  

  // Requirement :
  // If the opportunity is in Closed Won stage
  // It should be be deleted
  // Throw error message : You can not delete Op in Closed Won stage
  if (Trigger.isBefore && Trigger.isDelete) {
    // trigger loop
    // in delete event we get the record that entered the trigger
    // using Trigger.old because Trigger.new is not available in delete event
    for (Opportunity each : Trigger.old) {
      // If the opportunity is in Closed Won stage
      if (each.StageName == 'Closed Won') {
        each.addError('You can not delete Op in Closed Won stage');
      }
    }
  }

  if (Trigger.isBefore && Trigger.isUpdate) {
    // trigger loop
    for (Opportunity each : Trigger.new) {
      // if the op amount is negative
      if (each.Amount < 0) {
        // throw error 'Amount can not be negative'
        //each.addError('Amount can not be negative');
        each.Amount.addError('Amount can not be negative');
      }
    }
  }

  // Requirement :
  // Anytime new Opportunity is created
  // if the Amount field is empty
  // fill it up with 10000
  if (Trigger.isBefore && Trigger.isInsert) {
    // trigger loop
    for (Opportunity each : Trigger.new) {
      if (each.Amount == null) {
        each.Amount = 10000;
      }
    }
  }
  // Requirement :
  // Anytime new Opportunity is created
  // if the Amount is greater than 500000
  // Create a follow up tasks with below detail
  // Task Subject : Follow up with high value op
  // Task ActivityDate : 1 day from now
  // Task RelatedTo (WhatId) :  Your Opportunity (Id)
  if (Trigger.isAfter && Trigger.isInsert) {
    // we need a place to store all the tasks that about to be entered
    // list of task
    List<Task> taskList = new List<Task>();
    // trigger loop
    for (Opportunity each : Trigger.new) {
      // if the Amount is greater than 500000
      if (each.Amount > 500000) {
        // Create a follow up tasks with below detail
        Task t = new Task();
        t.Subject = 'Follow up high value Task ' + each.Name;
        t.ActivityDate = Date.today() + 1;
        t.WhatId = each.Id;
        // add it to the task list to be inserted
        taskList.add(t);
      }
    }
    // outside the loop , insert once
    insert taskList;
  }

}