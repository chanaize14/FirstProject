/*10. Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not, set isAllPalindrome to false
      - else take no action (so no else)*/
      List<String> strList = new List<String>{
  'Anna',
  'kevin',
  'Jon',
  'Mike',
  'alla'
};

Boolean isAllPalindrome = true ;

for (String each : strList) {
  if (each.reverse() != each) {
    isAllPalindrome = false ;
    System.debug(each + ' is not Palindrome') ;
    
  }
}