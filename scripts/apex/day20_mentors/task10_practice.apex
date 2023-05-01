/*
Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
   - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false  (check out the existing method in String class) 
   */
  String description = '     Even MIRACLes takeS       A      Little TIme    ';
  //trim(): Returns a copy of the string that no longer contains any leading or trailing white space characters.
  String trimmedDescription = description.trim();
  System.debug(trimmedDescription);

  //normalizeSpace(): Returns the current String with leading, trailing, and repeating white space characters removed.
  String normalizedDescription = description.normalizeSpace();
  System.debug(normalizedDescription);

//startsWith(prefix): Returns true if the String that called the method begins with the specified prefix.
  Boolean startsWithEven = normalizedDescription.startsWith('Even');
  System.debug(startsWithEven);

  //endsWithIgnoreCase(suffix): Returns true if the current String ends with the specified suffix; otherwise, returns false.
  Boolean endsWith = normalizedDescription.endsWithIgnoreCase('time');
  System.debug(endsWith);


  /*Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String containing each words
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update your list item
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 
*/ 
/*Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String containing each words
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update your list item
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 
*/
String message = 'Even MIRACLes takeS A Little TIme';
List<String> wordList = message.split(' ');
System.debug(wordList);

////capitalize(): Returns the current String with the first letter changed to title case.
for(Integer i = 0; i<=wordList.size()-1; i++){
    String TitleCased = wordList.get(i).toLowerCase().capitalize();
    wordList.set(i, TitleCased);

}
System.debug(wordList);

//join(iterableObj, separator): Joins the elements of the specified iterable object, such as a List, into a single String separated by the specified separator

message = String.join(wordList, '*');
System.debug(message);

/*
Create an empty List of Lead
   - use for loop to go through 10 iteration 
   - add lead with FirstName, LastName, Company fields filled up as below: 
   'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
   'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
   ....
   'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
   insert the list into your org
   */

    List<Lead> leadList = new List<Lead>();
   for(Integer i=1; i<=10 ;i++){
    Lead sample = new Lead();
    sample.FirstName = 'Test Lead FN ' + i;
    sample.LastName = 'Test Lead LN ' + i;
    sample.Company = 'Company ' + i;
    leadList.add(sample);
   }
   System.debug(leadList); 
   insert leadList;
   //Database.insert();
   /*List <Lead> leadsToDelete = [SELECT ID FROM Lead WHERE FirstName LIKE 'Test%'];
System.debug('leads to delete size: ' + leadsToDelete.size()); 
delete leadsToDelete;*/
