/*3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out */
   List<Integer> numberList = new List<Integer>{50,14,64,62,46,12,41,58,45,30,11};
   System.debug('numberList value is : ' + numberList); 
   integer count=0;
   integer sum=0;
   for(Integer each : numberList) {
    if(Math.mod(each,2)==1){
      System.debug(each);
      count++;
      sum+=each; 
   }
}

System.debug('count of odd numbers '+ count); 
System.debug('sum of odd numbers '+ sum); 

   List<Integer> integerList = new List<Integer>{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
List<Integer> oddNumbers = new List<Integer>();

for (Integer num : integerList) {
    if (Math.mod(num, 2) !=0) {
        oddNumbers.add(num);
    }
}

System.debug('Odd numbers: ' + oddNumbers);

Integer oddCount = oddNumbers.size();
System.debug('Count of odd numbers: ' + oddCount);

Integer oddSum = 0;
for (Integer odd : oddNumbers) {
    oddSum += odd;
}
System.debug('Sum of odd numbers: ' + oddSum);

/*We create a list of 10 integers using the list initializer syntax.
We create an empty list to store the odd numbers.
We iterate through the list of integers using a for-each loop and check if each number 
is odd using the Math.mod() method. If the number is odd, we add it to the list of odd numbers.
We print out the list of odd numbers using System.debug().
We get the count of the odd numbers using the size() method and print it out using System.debug().
We calculate the sum of the odd numbers using a for-each loop and print it out using System.debug().*/
    