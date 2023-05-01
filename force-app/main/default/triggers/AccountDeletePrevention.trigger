trigger AccountDeletePrevention on Account (before delete) {
    AccountHandler.handleAccountBeforeDelete(Trigger.old, Trigger.oldMap);
    
}