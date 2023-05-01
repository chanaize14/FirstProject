/*9. Create a String variable with the value 
   - check if the value is palindrome or not 
   - palindrome read the same from forward or backward 
   - for example anna , hanna , racecar, mom
   - do case-sensitive check!*/
   
   String palindrome = 'anna';
String palindromeReverse = palindrome.reverse() ;

if (palindrome == palindromeReverse) {
  System.debug('Palindrome!!!') ;
} else {
  System.debug('Not palindrome') ;
}

   
   