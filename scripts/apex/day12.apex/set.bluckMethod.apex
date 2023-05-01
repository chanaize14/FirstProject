/**
 Bulk methods in Set that can take multiple values 
 */
  Set<Integer> numSet = new Set<Integer>{1,2,3,4,5,6,7,8,9};
  System.debug('numSet value is : ' + numSet); 
  //numSet value is : {1, 2, 3, 4, 5, 6, 7, 8, 9}

 /**
 containsAll(listToCompare)
    Returns true if the set contains all of the elements in the specified list. The list must be of the same type as the set that calls the method.

  containsAll(setToCompare)
    Returns true if the set contains all of the elements in the specified set. The specified set must be of the same type as the original set that
     calls the method.

  */
 List<Integer> numLstToCheck1 = new List<Integer>{2,4,5};
 Boolean result1 = numSet.containsAll(numLstToCheck1);  // true
 System.debug('Does numSet has all items in numLstToCheck1: ' + result1);  
 //Does numSet has all items in numLstToCheck1: true

 List<Integer> numLstToCheck2 = new List<Integer>{99,4,5};
 Boolean result2 = numSet.containsAll(numLstToCheck2);  // true
 System.debug('Does numSet has all items in numLstToCheck2: ' + result2);  
 //Does numSet has all items in numLstToCheck1: false

 Set<Integer> numSetToCheck1 = new Set<Integer>{2,4,5};
 Boolean result3 = numSet.containsAll(numSetToCheck1);  // true
 System.debug('Does numSet has all items in numSetToCheck1: ' + result3);  
 //Does numSet has all items in numSetToCheck1: true

 Set<Integer> numSetToCheck2 = new Set<Integer>{99,4,5};
 Boolean result4 = numSet.containsAll(numSetToCheck2);  // true
 System.debug('Does numSet has all items in numSetToCheck2: ' + result4);  
 //Does numSet has all items in numSetToCheck2: false


 /**
 removeAll(listOfElementsToRemove)
    Removes the elements in the specified list from the set if they are present.
  
 removeAll(setOfElementsToRemove)
    Removes the elements in the specified set from the original set if they are present.
  */

   Set<Integer> numSetCopy1 = new Set<Integer>(numSet);
   System.debug('numSetCopy1 value is : ' + numSetCopy1); 
   // numSetCopy1 value is : {1, 2, 3, 4, 5, 6, 7, 8, 9}
   
   List<Integer> numLstToDelete = new List<Integer>{3,4,11};
   numSetCopy1.removeAll(numLstToDelete);
   System.debug('numSetCopy1 value after remove {3,4,11} is : ' + numSetCopy1); 
    // numSetCopy1 value after remove {3,4,11} is : {1, 2, 5, 6, 7, 8, 9}

   Set<Integer> numSetToDelete = new Set<Integer>{2,4,5};
   numSetCopy1.removeAll(numSetToDelete); 
   System.debug('numSetCopy1 value after remove {2,4,5} is : ' + numSetCopy1); 
    // numSetCopy1 value after remove {2,4,5} is : {1, 6, 7, 8, 9}
   
    /**
    retainAll(listOfElementsToRetain)
    Retains only the elements in this set that are contained in the specified list.
    
    retainAll(setOfElementsToRetain)
    Retains only the elements in the original set that are contained in the specified set.
    */
    Set<Integer> numSetCopy2 = new Set<Integer>(numSet);
    System.debug('numSetCopy2 value is : ' + numSetCopy2); 
    //numSetCopy2 value is : {1, 2, 3, 4, 5, 6, 7, 8, 9}
    
    List<Integer> numLstToRetain = new List<Integer>{3,4,11,7,5};
    numSetCopy2.retainAll(numLstToRetain);
    System.debug('numSetCopy2 value after retain {3,4,11,7,5} is : ' + numSetCopy2); 
    // numSetCopy2 value after retain {3,4,11,7,5} is : {3, 4, 5, 7}

    Set<Integer> numSetToRetain = new Set<Integer>{2,4,5};
    numSetCopy2.retainAll(numSetToRetain); 
    System.debug('numSetCopy2 value after retain {2,4,5} is : ' + numSetCopy2); 
    // numSetCopy2 value after remove {2,4,5} is : {4, 5}
 
