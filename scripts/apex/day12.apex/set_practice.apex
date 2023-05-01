Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
System.debug('strSet1 value is : ' + strSet1); 


// Creating a set by copying everything inside another Set 
Set<String> strSet2 = new Set<String>(strSet1);
System.debug('strSet2 value is : ' + strSet2); 


List<Integer> numberList = new List<Integer>{10,10,20,20,20};
System.debug('numberList value is : ' + numberList); 
//numberList value is : (10, 10, 20, 20, 20)

// Creating a set by copying everything inside a List 
Set<Integer> numberSet = new Set<Integer>(numberList);
System.debug('numberSet value is : ' + numberSet); 
//numberSet value is : {10, 20}
