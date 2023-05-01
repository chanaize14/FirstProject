// 11. Create `List<Case>` with 4 Items with name `oldList` 
List<Case> oldList = new List<Case>();
//      - with below fields
//        - `Subject` set to `Sample Case (1,2,3,4)`
oldList.add(  new Case(Subject='Sample Case 1')  ); 
oldList.add(  new Case(Subject='Sample Case 2')  ); 
oldList.add(  new Case(Subject='Sample Case 3')  ); 
oldList.add(  new Case(Subject='Sample Case 4')  ); 

//      - **insert** into Salesforce
insert oldList ; 
// Database.insert(oldList, false); 

//    - Create a `Map<ID, Case>` from above List call it `oldMap`
//      - It should contain `ID` of case as key, the `Case` itself as value
Map<Id,Case> oldMap = new Map<Id,Case>(oldList); 

//    - Print out the `oldList` variable 
//      - Observe It should be the **List** with ID generated
System.debug('oldList value is : ' + oldList); 
//    - Print out the `oldMap`  variable 
//      - Observe key is `ID` and value is Record itself
System.debug('oldMap value is : ' + oldMap); 

System.debug('------------------');

//    - Create a new `List<Case>` called `newList`
//      - Copy everything from `oldList` into `newList` in one shot
List<Case> newList = new List<Case>(oldList);

//    - Now Iterate over your `newList` with 4 copied Items above
for(Case each : newList) {
// - Update the `Subject` field value to 
// - Whatever is the current Value followed by string ` New`
// - So it will `Sample Case (1,2,3,4) New`
    each.Subject = each.Subject + ' New' ;  
    // each.Subject += ' New' ;  
}
// - Issue a `DML` statement to reflect the changes in Salesforce
update newList ; 

//    - Create a `Map<ID, Case>` from above List call it `newMap`
//       - It should contain `ID` of case as key, the `Case` itself as value
Map<ID, Case> newMap = new Map<ID, Case>(newList); 
//    - Print out the `newList` variable 
System.debug('newList value is : ' + newList); 
//      - Observe It should be the **List** after the update
//    - Print out the `newMap`  variable 
System.debug('newMap value is : ' + newMap); 
//      - Observe It should be the **Map** after the update
