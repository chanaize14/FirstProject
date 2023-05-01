/*2. Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number' */

  Double randomNum = Math.random() * 100;
System.debug('Random number: ' + randomNum);

Integer var=randomNum.intValue();
if (Math.mod(var, 2) == 0) {
    System.debug('Even number');
}

if (Math.mod(var, 5) == 0) {
    System.debug('Cool number');
}

if (Math.mod(var, 7) == 3) {
    System.debug('Cooler number');
}
/*Math.random() returns a random double between 0.0 (inclusive) and 1.0 (exclusive).
We multiply the random number by 100 to get a random number between 0 and 100 (inclusive), 
then round it to 2 decimal places using Math.round().
We print out the random number using System.debug().
We use the Math.mod() method to check if the number is even, divisible by 5 with no remainder,
 or divisible by 7 with remainder 3.
We print out the appropriate message using System.debug().*/
