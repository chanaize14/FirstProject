/*7. Create a String with a long sentence
   - print out the word count in sentence
   - loop through each item and reverse it 
   - outside your loop , print to see the result*/

   String sentence = 'I love ice cream' ;

List <String> words = sentence.split(' ') ;

System.debug('Word count is ' + words.size()) ; 

for (String each : words){
    System.debug(each.reverse()) ;
} 

System.debug( sentence.reverse() ) ; 
   