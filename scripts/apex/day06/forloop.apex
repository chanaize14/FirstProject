/*For Loop Syntax
 for( initilization ;loop condition ;increment|decrement ){
    // repeating stuff here 
 }

Initialization : 
this is where variable is declared and initial value is given ,
 IT WILL ONLY RUN ONCE WHEN THE LOOP START
 
Loop condition : 
this is where we put condition for the loop,
 as long as it's true the loop continue. 

Increment|decrement : 
this is where we increment or decrement the value so
 we can change the condition and eventually get out of the loop , 
 IMPORTANTLY , It run after each iteration 
 */

// this is while loop version 
//  Integer count = 1 ; 
//  while(count<10){
//     System.debug(count) ; 
//     count++ ; 
//  }

// counting 1 - 10 using for loop  
//for(Integer count=1 ; count<10 ; count++ ){
   // System.debug(count) ; 


// skip counting by 2 from 0 - 20 using for loop 
// 0 2 4 6 8 .... 20

for(integer level=0; level<=20;level+=2){
system.debug(level);
}

/**
  Count from 10 -1 using for loop 
 */

 for(Integer count=10 ; count>0 ; count--){
    System.debug(count) ; 
 }

System.debug('----------------'); 
/**
  Count down from 100 - 0 
  decreasing number by 10 each time
 */
 for(Integer count=100 ; count>= 0 ; count -= 10){

    System.debug(count) ; 

 }


