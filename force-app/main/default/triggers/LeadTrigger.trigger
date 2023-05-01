Trigger LeadTrigger on Lead(before insert, after insert, before delete) {

  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  
  if (Trigger.isBefore && Trigger.isInsert) {
     LeadTriggerHandler.handleBeforeInsert(Trigger.new); 
  }

  if (Trigger.isAfter && Trigger.isInsert) {
     LeadTriggerHandler.handleAfterInsert(Trigger.new);
  }

  if(Trigger.isBefore && Trigger.isDelete) {
    LeadTriggerHandler.handleBeforeDelete( Trigger.old ); 
  }

}