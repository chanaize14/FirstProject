
List<Account> allAccount = [SELECT Name,phone,AnnualRevenue FROM Account];

for(Account each : allAccount) {
    System.debug('Current value : ' + each.Name);
}