// data type should always start with uppercase
// variable name should always start with lowercase 
// if you have more than one word use camelCase
String studentName         = 'Okan' ;
Integer studentAge         = 35 ; 
String studentState     = 'CA';
Boolean attendClass     = true ;  
Decimal studentHeight     = 5.10 ; 

System.debug('My Name is ' +  studentName  + '.'  );
System.debug('I am ' +  studentAge + ' years old.'   );
System.debug('I live in ' + studentState + ' State.' );
System.debug('I attend class daily ' + attendClass);
System.debug('I am ' + studentHeight + ' feet tall');


// Create multiple variable with same type in one line 
/*
Integer num1 = 10 ; 
Integer num2 = 20 ; 
Integer num3 = 30 ; 
*/
// it can be done easily as below 
Integer num1 = 10 , num2 = 20 , num3 = 30 ; 

// Relational Operators   > , >= , < , <= , == , != <> 
// it take two items and return true or false result 

// Check if num1 is greater than num2 and return the result into a variable
Boolean isNum1GreaterThanNum2 =  num1 > num2 ;   //false

System.debug('Is Num1 Greater Than Num2 : ' + isNum1GreaterThanNum2);

Boolean isNum2LessThanNum3 =   num2<num3 ;   //true

System.debug('Is Num2 Less Than Num3 : ' + isNum2LessThanNum3 );

// Compare num1 is greater than or equals num3 and directly print out the result
// in this format : Is Num1 Greater Than Num3 : falseOrTrue

        // use paranthesis to see (num1 >= num3) as one then concatenate
System.debug('Is Num1 Greater Than Or Equals Num3 : ' +  (num1 >= num3)      );


// == checking for eqality of 2 items , = is assignment operator 

// check if num3 value is 30 or not 

System.debug('Is num3 and num2 equal? : '  +   (num3 == num2)   );


// checking for Inequality of 2 items  <>   !=

System.debug('Is num1 not equal to num2 : '  + (num1 != num2)    );
System.debug('Is num1 not equal to num2 : '  + (num1 <> num2)    );


String language = 'Apex' ; 
// == on string equality check is case insensitive
System.debug('Is the language Apex or not :  '  +   (language=='aPeX')    );


// Logical Operators :  AND ( && )  OR ( || )   NOT ( ! )

Integer num4= 40, num5=50, num6 = 60 ; 

/// is num4 more than 20 and less than 45 
// store the result into a boolean variable and print it out 

Boolean isNum4Between20And45 =  (num4 > 20) && (num4< 45) ;   //true
System.debug('is '  + num4 + ' Between 20 And 45 : ' + isNum4Between20And45);  //true

// Check if num5 is greater than 100 or less than 20 ;            
Boolean isNum5Greater100OrLessThan20 =  (num5>100) || (num5<20) ;  //false
System.debug('is num5 is greater than 100 or less than 20 ' + isNum5Greater100OrLessThan20);

System.debug( isNum4Between20And45  ); //true
// Logical NOT(!) can be used on any boolean variable or anything that return boolean 
// and return opposite value,  true==> false and false==> true
System.debug(!isNum4Between20And45 );  //false

System.debug( !true );   // false 
System.debug( !false );  // true

// ------Compound Assignment Operator. : += -= *= /=

Integer score = 100 ; 

// increase the value of the score by 5 

//score = score + 5 ;  // 105 
  score += 5 ;   // 105 
  System.debug('increase the value of the score by 5 ' + score);

// decrease the value of the score by 55 

//score = score - 55 ; // 50
  score -= 55 ;  // 50
  System.debug('decrease the value of the score by 55 ' + score);

// double the value of score (multiply by 2 )

// score = score * 2 ; // 100
   score *= 2 ; // 100 
   System.debug('double the value of score ' + score);

// divide the current value of score by 4 and reassign 
//   score = score / 4 ; //25
   score /= 4 ; // 25 ;  
   System.debug('divide the current value of score by 4 ' + score);


// using += for String 
  String myName = 'Jon' ; 
  //myName = myName + ' Snow';
  myName += ' Snow' ;  // Jon Snow
  myName += ' of Winterfell'; 
  // Jon Snow of Winterfell
  System.debug('Name: ' + myName);
