/*Write an Apex code that 
   - create a variable to store 1 Random double between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result*/
Double randomNum = Math.random() * 100;
System.debug('Random number: ' + randomNum);

if (randomNum > 65) {
    System.debug('Pass');
}

if (randomNum >= 95 && randomNum <= 100) {
    System.debug('A+');
}
/*In this code, we first create a variable randomNum to store a random double between 0 and 100, 
using the Math.random() method. We then print out the value of randomNum using the System.debug() method.

Next, we use an if statement to check whether the value of randomNum is greater than 65. If it is,
 we print out the string "Pass" using the System.debug() method.

Finally, we use another if statement to check whether the value of randomNum is between 95 and 100 (inclusive).
 If it is, we print out the string "A+" using the System.debug() method.

To run this code, you can simply copy and paste it into an Apex class in Salesforce and execute it.
 Since the value of randomNum is generated randomly, the output will be different each time you run the code.*/




