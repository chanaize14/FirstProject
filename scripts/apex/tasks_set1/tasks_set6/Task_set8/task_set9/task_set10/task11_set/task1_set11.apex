 /*Create a Map<String, Integer> to store group name and member count
   -  Add 5 items into this Map 
   -  Check if there is a group called Apex Soldiers 
      -  print out the result in boolean 
   -  Check if there is a group called Winterfell Vacation
      -  if so , store the value into a Variable called vMemberCount
         -  remove this group from the map 
         -  add new item to the map with below key-value pair
            -  Winterfell Coders as key , value of vMemberCount as value
   -  Check if there is a group with 10 members
      -  if so , decrease the value to 9 */


Map<String, Integer> groupMap = new Map<String, Integer>();
groupMap.put('Apex Soldiers', 20);
groupMap.put('Winterfell Vacation', 15);
groupMap.put('Coding Wizards', 10);
groupMap.put('Tech Titans', 12);
groupMap.put('Digital Nomads', 8);

// Check if Apex Soldiers group exists
Boolean isApexSoldiersExists = groupMap.containsKey('Apex Soldiers');
System.debug('Apex Soldiers exists? ' + isApexSoldiersExists);

// Check if Winterfell Vacation group exists and perform required operations
if (groupMap.containsKey('Winterfell Vacation')) {
    Integer vMemberCount = groupMap.get('Winterfell Vacation');
    groupMap.remove('Winterfell Vacation');
    groupMap.put('Winterfell Coders', vMemberCount);
}

// Check if any group has 10 members and decrease the value to 9
for (String groupName : groupMap.keySet()) {
    if (groupMap.get(groupName) == 10) {
        groupMap.put(groupName, 9);
    }
}

System.debug(groupMap);











// 11. Create `List<Case>` with 4 Items with name `oldList` 

List<Case> oldList = new List<Case>(); 
//      - with below fields
//        - `Subject` set to `Sample Case (1,2,3,4)`
oldList.add(new Case(Subject = 'Sample Case 1')); 
oldList.add(new Case(Subject = 'Sample Case 2')); 
oldList.add(new Case(Subject = 'Sample Case 3')); 
oldList.add(new Case(Subject = 'Sample Case 4')); 
// or loop it, here we just have 4 so added one by one.

//      - **insert** into Salesforce
insert oldList;
//    - Create a `Map<ID, Case>` from above List call it `oldMap`
Map<Id,Case> oldMap = new Map<Id,Case>(oldList);

//    - Print out the `oldList` variable 
System.debug('oldList value is : ' + oldList); 
//      - Observe It should be the **List** before the update
//    - Print out the `oldMap`  variable 
System.debug('oldMap value is : ' + oldMap); 
//      - Observe It should be the **Map** before the update


//      - It should contain `ID` of case as key, the `Case` itself as value
//    - Create a new `List<Case>` called `newList`

//      - Copy everything from `oldList` into `newList` in one shot
List<Case> newList = new List<Case>(oldList); 
//    - Now Iterate over your `newList` with 4 copied Items above
for(Case each : newList) {
//      - Update the `Subject` field value to 
//        - Whatever is the current Value followed by string ` New`
//        - So it will `Sample Case (1,2,3,4) New`
    each.Subject = each.Subject + ' New'; 
}
//      - Issue a `DML` statement to reflect the changes in Salesforce
    update newList ; 
//    - Create a `Map<ID, Case>` from above List call it `newMap`
//       - It should contain `ID` of case as key, the `Case` itself as value
Map<Id,Case> newMap = new Map<Id,Case>(newList);

//    - Print out the `newList` variable 
System.debug('newList value is : ' + newList); 
//      - Observe It should be the **List** after the update
//    - Print out the `newMap`  variable 
System.debug('newMap value is : ' + newMap); 
//      - Observe It should be the **Map** after the update




















