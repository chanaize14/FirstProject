/*8. Write an Apex code that create List of 10 Integers
   - create a variable called largestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin largestValue to 
     - the result of Math.max(largestValue, each)
   - print out largestValue outside the loop
   - and that's how we can get max values in List of Integers
   - try to change the values of List item and run again*/
   List<Integer> numberList = new List<Integer>{46,65,31,54,38,41,77,52,31,71};
   Integer largestValue=numberList.get(0);
   for(Integer each : numberList) {
    System.debug(' value : ' + each);
     math.max(largestValue, each);
}
System.debug('LargestValue value is : ' + LargestValue); 
    System.debug('------------------');
    
    
    
    List<Integer> list1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer largestValuee = list1[0];

for(Integer each : list1) {
  //if(each>largestValue)
  //largestValue=each;

  largestValue=Math.max(largestValuee, each);
}

System.debug('largestValue '+largestValuee); 



List<Integer> myList = new List<Integer>{5, 12, 3, 8, 21, 13, 6, 9, 17, 4};

// assign the first item as the largest value
Integer largestValue = myList[0];

// loop through each item and re-assign the largest value if necessary
for (Integer each : myList) {
    largestValue = Math.max(largestValue, each);
}

// print out the largest value
System.debug(largestValue);
/*
In this code, we create a list of 10 integers with some sample values.
 We then initialize the largestValue variable to the first item in the list.
  We loop through each item in the list using a for-each loop and compare it to 
  the current largestValue using the Math.max() method. If the current item is greater than 
  the largestValue, we re-assign largestValue to that item.
   Finally, we print out the largestValue
   outside the loop.

You can change the values in the myList variable to test the code with different input data*/
