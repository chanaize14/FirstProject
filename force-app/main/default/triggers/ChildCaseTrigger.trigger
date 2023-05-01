trigger ChildCaseTrigger on Case (after insert) {

if(Trigger.isAfter && Trigger.isInsert){
        //CreateChildCaseHandler.handleAfterInsert(Trigger.new);
    
    ChildCaseHandler.handleAfterInsert(trigger.new);
    
    
    }









}