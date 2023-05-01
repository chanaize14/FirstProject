/*2. Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String containing each words
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update your list item
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing
string message='APEX mAde iT Easy to wOrk With SAlesforce DAtabase';
System.debug('message value is : ' + message.split());
List<string> message1=new List<string>();
 message.add(message1);
for(string each :message1 ) {
   
}
System.debug('message1 value is : ' + message1.isBlank(message)); 
String message= message1.isBlank(message)
System.debug('mesage value is : ' + mesage); 



String message = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';

List<String> messageList = message.split(' ');

for (Integer i = 0; i < messageList.size(); i++) {
  String each = messageList.get(i).toLowerCase().capitalize();
  messageList.set(i, each);
}
System.debug(messageList);

message = String.join(messageList, ' ');
System.debug(message);*/


String message = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';

// Split the message into a list of words
List<String> words = message.split(' ');
System.debug(words); // ['APEX', 'mAde', 'iT', 'Easy', 'to', 'wOrk', 'With', 'SAlesforce', 'DAtabase']

// Loop through each word and capitalize it
for (Integer i = 0; i < words.size(); i++) {
    words[i] = words[i].capitalize();
}

// Print the updated list of words
System.debug(words); // ['Apex', 'Made', 'It', 'Easy', 'To', 'Work', 'With', 'Salesforce', 'Database']

// Join the list of words with spaces
message = String.join(words, ' ');
System.debug(message); // 'Apex Made It Easy To Work With Salesforce Database'


