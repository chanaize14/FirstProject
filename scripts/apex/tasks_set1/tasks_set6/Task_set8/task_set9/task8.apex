/*8. Create a String with a long sentence
   - split the sentence to get word list 
   - create a variable called 
   - assign it's value to first item length
   - loop through each item 
      - use Math.max(longestCharCount, each.length() )
   - outside your loop , print to see the result of longestCharCount*/
  
   String longSentence = 'This is a very long sentence' ;
    
    List <String> items = longSentence.split(' ');

    Integer longestCharCount = items.get(0).length() ; 
    System.debug(longestCharCount); 

   for( String each : items){
   longestCharCount = Math.max(longestCharCount , each.length()) ; 
   }
   
   System.debug(longestCharCount); 
    