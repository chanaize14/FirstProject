/**
    We can create a List by copying the content of another set or list
 */

List<Integer> numberList1 = new List<Integer>{64,55,34,86,31};
System.debug('numberList1 value is : ' + numberList1); 

//// Creating a List by copying everything inside another List
List<Integer> numberList2 = new List<Integer>(numberList1);
System.debug('numberList2 value is : ' + numberList2); 


Set<Integer> numberSet = new Set<Integer>{23,71,44,71,43};
System.debug('numberSet value is : ' + numberSet); 
//// Creating a List by copying everything inside a Set
List<Integer> numberList3 = new List<Integer>(numberSet);
System.debug('numberList3 value is : ' + numberList3); 


// if you already have a list created 
// and if you want to add all the elements from another list 
// for example numberList1 has 5 items , numberList3 has 5 items 
// add everything in numberList1 into numberList3 so it can have 10 items 

numberList3.addAll(numberList1) ; 
System.debug('numberList3 value is : ' + numberList3); 


// addAll method either accept another list or set , to add all the element into this list that calling addAll method

// add all the elements from numberSet into numberList1 ; 
numberList1.addAll(numberSet) ; 
System.debug('numberList1 value is : ' + numberList1); 