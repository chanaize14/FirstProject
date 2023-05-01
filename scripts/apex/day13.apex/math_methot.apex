
/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod

Math class is a class coming from Apex itself 
It has lot of pre-written code about math that we can just use directly 

Mod operator in math allow you to get the remainder of division 

10 / 3 = 3    1 remain  

*/

Integer num1 = 10 ;
Integer num2 = 5 ;

Integer result =  num1 / num2 ; 
System.debug('result value is : ' + result); 

// Math.mod(num1 , num2 ) ===>> remainder of the division 
Integer remainder  =   Math.mod(num1, num2)    ;
System.debug('remainder value is : ' + remainder); 

/**
Odd or Even in Math 
Odd number is number that will have remainder of 1 when divided by 2 
Even number is number that will have remainder of 0 when divided by 2 
 */
Integer score = 5 ;

// store the result of checking the number is even or odd into a Boolean variable 
Boolean isEven =  Math.mod(score , 2) == 0 ; 
System.debug('isEven value is : ' + isEven); 

// print odd number if score is odd , and print even number if its even 
if( isEven ==true ){
    System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}

// what if we do not want to create a variable to store the result of even or odd 

if( Math.mod(score,2)==0 ){
   System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}



// Math.max(number 1 , number 2) ==> return the bigger number 

System.debug('which number is bigger : '   +  Math.max(111, 99)  ); 
//which number is bigger : 111

// Math.min(number 1 , number 2) ==> return the smaller number 
System.debug('which number is smaller : '   +  Math.min(111, 99)  ); 
//which number is smaller : 99


// Math.random() ==> 
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.

Double randomDbl =  Math.random() ; 
System.debug('randomDbl value is : ' + randomDbl); 

System.debug('randomDbl value is : ' + randomDbl * 100  ); 

// Math.random() ==> 
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.

Double randomDbl =  Math.random() * 100  ; 
System.debug('randomDbl value is : ' + randomDbl); 
// System.debug('randomDbl value is : ' + randomDbl * 100    ); 

Integer randomInteger =   randomDbl.intValue() ; 
System.debug('randomInteger value is : ' + randomInteger); 



Double price = 15.5 ;
Integer priceWholeNumber =  price.intValue();  // 15
System.debug('priceWholeNumber value is : ' + priceWholeNumber); 


// toUpperCase()   return the UPPERCASE version of the text 
System.debug('message.toUpperCase() value is : ' + message.toUpperCase() ); 


// toLowerCase()   return the lowercase version of the text 
System.debug('message.toLowerCase() value is : ' + message.toLowerCase() ); 


String season = 'summer' ; 

switch on season.toUpperCase()  {

    when 'SPRING' {
        System.debug('value Spring match');
    }
    when 'SUMMER' {
        System.debug('value Summer match');
    }
    when 'FALL' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}

/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 

//--------------Checking for String contains some substring 
/**
contains(substring)
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_contains

Example :   
'abcd' contains 'ab'  true  
'abcd' contains 'ac'  false   
 */
System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
 System.debug('message.contains(\'Jon\')  value is : ' + message.contains('Jon') ); 
 
 /**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello')); 

/**
containsNone(inputString)
Returns true if the current String doesn’t contain any of the characters in the specified String; otherwise, returns false.
 */
System.debug('message.containsNone(\'Hlo\') value is : ' 
                                + message.containsNone('Hlo')   ); 

System.debug('message.containsNone(\'AB\') value is : ' 
                                + message.containsNone('AB')   ); 

System.debug('message.containsNone(\'LO\') value is : ' 
                                + message.containsNone('LO')   ); 

System.debug('message has no Number : ' + message.containsNone('0123456789')   ) ; 


System.debug('------------------');
/**
containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence of characters and not any other characters; otherwise, returns false.
 */
// Hello world is made of these characters  : Helo Wrd 

System.debug('message.containsOnly(\'Helowrd \') value is : ' 
                                    + message.containsOnly('HeloWrd ')); 

System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); 

System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); 


/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText);

















