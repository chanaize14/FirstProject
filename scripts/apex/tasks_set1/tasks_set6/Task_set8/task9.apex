/*9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
   - create a variable called smallestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin smallestValue to 
     - the result of Math.min(smallestValue, each)
   - print out smallestValue outside the loop
   - and that's how we can get min values in List of Integers
   - try to change the values of List item and run again */

   List<Integer> myList = new List<Integer>{5, 12, 3, 8, 21, 13, 6, 9, 17, 4};
   // assign the first item as the smalest value
Integer smallestValue = myList[0];

// loop through each item and re-assign the smalest value if necessary
for (Integer each : myList) {
    smallestValue = Math.min(smallestValue, each);
}

// print out the largest value
System.debug(smallestValue);