/*Create a List of 10 String
   - get the count of String even character count
   - print them out*/

   List<String> stringList = new List<String>{'apple', 'banana', 'carrot', 'dog', 'elephant', 'frog', 'grape', 'house', 'igloo', 'jaguar'};

// initialize variables to store count and list of even length strings
Integer evenCount = 0;
List<String> evenStrings = new List<String>();

// iterate through the list of strings and count even length strings
for(String str : stringList){
    if(str.length() / 2 == 0){
        evenCount++;
        evenStrings.add(str);
    }
}

// print the count of even length strings
System.debug('There are ' + evenCount + ' even length strings in the list.');

// print the even length strings
System.debug('The even length strings in the list are: ' + evenStrings);

