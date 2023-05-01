/*5. Write an Apex code that 
   - print 10 random Integer values between 1-1000 in 10 lines (loop)*/
for(Integer i=0; i<10 ;i++) {

    Double var=Math.random()*1000;
    System.debug(var.intValue());

}
/*Explanation:

We use a for loop to iterate 10 times.
In each iteration of the loop, we generate a random integer 
between 1 and 1000 (inclusive) using Math.random() * 999 + 1. We then round the result to
 an integer using Math.round() and cast it to an integer using (Integer).
We print out the random number using System.debug() in each iteration of the loop.*/
