trigger AccountTaskTrigger on Account(
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete
) {
  if (Trigger.isBefore && Trigger.isInsert) {
    for (Account each : Trigger.new) {
      each.ShippingStreet = each.BillingStreet;
      each.ShippingCity = each.BillingCity;
      each.ShippingState = each.BillingState;
      each.ShippingCountry = each.BillingCountry;
      each.ShippingPostalCode = each.BillingPostalCode;
    }
  }
    if (Trigger.isBefore && Trigger.isUpdate) {
      for (Account each : Trigger.new) {
        if (each.SLA__c == 'Gold') {
          each.CustomerPriority__c = 'High';
        } else if (each.SLA__c == 'Silver' || each.SLA__c == 'Platinum') {
          each.CustomerPriority__c = 'Medium';
          each.SLAExpirationDate__c = date.today().addMonths(6);
        } else {
          each.CustomerPriority__c = 'Low';
        }

        if (each.SLA__c != null && each.SLAExpirationDate__c == null) {
          each.SLAExpirationDate__c.addError(
            'Service Level Agreement Expiation date is required'
          );
        }
      }
    }
    if (Trigger.isBefore && Trigger.isDelete) {
        for (Account each: trigger.old){
            if(each.Active__c=='Yes' && each.SLAExpirationDate__c >= Date.today()){
                each.addError('Can not delete Active Account with SLA not expired');

            } 
        }
}

if (Trigger.isAfter && Trigger.isUndelete) {
    List<Task> taskList = new List<Task>();
    for (Account each: trigger.new){
        Task T1 = new Task();
        T1.Subject      = 'Follow up with the Account : '+each.Name;
        T1.Description  = 'Account was restored, follow up on the details';
        T1.ActivityDate =  date.today();
        T1.Priority     = 'High';
        T1.WhatId       = each.Id; 
        taskList.add(t1);
    }
    insert taskList;
}

}


 
 
