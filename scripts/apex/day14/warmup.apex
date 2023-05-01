/**
 DO NOT USE MATH.MAX OR MIN 
 */

Integer num1 = 10, num2 = 20;
Integer largerNumber = Math.max(num1, num2);

//  Integer largerNumber =  (num1>num2) ? num1 : num2   ;

//  if(num1>num2){
//     largerNumber = num1 ;
//  }else{
//     largerNumber = num2 ;
//  }

Double d1 = 15.7d;
System.debug('d1 value is : ' + d1);
// covert this double value to int
Integer score1 = d1.intValue();
System.debug('score1 value is : ' + score1);

Integer score2 = Math.round(d1);
System.debug('score2 value is : ' + score2);

// Math.random() ==>
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.
// if you want to get the number from 0.0 - 10.0 instead
//   -> simply multiply by 10  ===>
// if you want to get the number from 50.0 - 60.0 instead
//   -> simply multiply by 10 and + 50 ===>
// if you want to get the number from 0.0 - 100.0 instead
//   -> simply multiply by 100  ===>
// if you want to get the number from 0.0 - 1000.0 instead
//   -> simply multiply by 1000  ===>
// if you want to get the number from 300.0 - 1300.0 instead
//   -> simply multiply by 1000  + 300 ===>

Double randomDbl = Math.random() * 100;
System.debug('randomDbl value is : ' + randomDbl);

// Math.round(your double value here) return rounded up Integer
Integer randomInt = Math.round(randomDbl);
System.debug('randomInt value is : ' + randomInt);

//  print out 50 random numbers
for (Integer i = 1; i <= 50; i++) {
  Integer randomNumber = Math.round(Math.random() * 100);
  System.debug('randomNumber value is : ' + randomNumber);
}

// System.debug('Math.round(5.4)  value is : ' + Math.round(5.4) );
// System.debug('Math.round(5.7)  value is : ' + Math.round(5.7) );
// System.debug('Math.round(5.99)  value is : ' + Math.round(5.99) );
// System.debug('Math.round(0.99)  value is : ' + Math.round(0.99) );


// here is how we can do it in one shot since we do not need double variable anywhere
// Math.random() * 100 will generate random double between 0-100 
// and the result is passed back to Math.round method so it can be rounded up to Integer from double
Integer randomNumber = Math.round( Math.random() * 100 );
System.debug('randomNumber value is : ' + randomNumber);