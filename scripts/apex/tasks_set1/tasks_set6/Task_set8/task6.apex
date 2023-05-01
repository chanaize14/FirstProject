/*6. Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers*/

  List<Integer> list1 = new List<Integer>();

Integer sum=0;
Integer num;

for(Integer i=0; i<10 ;i++) {
    num=(Math.random()*100).intValue();
    list1.add(num);
    sum+=num;
}

System.debug(list1); 
System.debug('sum '+sum);
System.debug('average '+sum/10); 

System.debug('------------------');


List<Integer> randomNumList = new List<Integer>();

for (Integer i = 1; i <= 10; i++) {
    Integer randomNum = (Integer)Math.round(Math.random() * 99) + 1;
    randomNumList.add(randomNum);
}

System.debug('Random numbers: ' + randomNumList);

Integer sum1 = 0;
for (Integer num : randomNumList) {
    sum1 += num;
}
System.debug('Sum: ' + sum1);

Decimal avg = (Decimal)sum1 / (Decimal)randomNumList.size();
System.debug('Average: ' + avg);

/*Explanation:

We create an empty list, randomNumList, to store the random numbers.
We use a for loop to iterate 10 times. In each iteration of the loop,
 we generate a random integer between 1 and 100 using Math.random() * 99 + 1.
  We then round the result to an integer using Math.round() 
  and cast it to an integer using (Integer). 
  We add the random number to the randomNumList using the add() method.
We print out the list of random numbers using System.debug().
We calculate the sum of the numbers 
using a for-each loop and print it out using System.debug().
We calculate the average of the numbers by dividing the sum by the size of the list,
 cast the result to a decimal using (Decimal), and print it out using System.debug().*/