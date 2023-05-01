/*5. Create a Map<Integer, String> and fill it up with 5 key-value pairs
   -  Get the sum of All the Keys 
   -  Join all the values by , and print it out */
   Map<Integer, String> myMap = new Map<Integer, String>{
    1 => 'apple',
    2 => 'banana',
    3 => 'cherry',
    4 => 'date',
    5 => 'elderberry'
};

// Get the sum of all the keys
Integer keySum = 0;
for (Integer key : myMap.keySet()) {
    keySum += key;
}
System.debug('Key Sum: ' + keySum);

// Join all the values with a comma and print them out
String joinedValues = String.join(myMap.values(), ', ');
System.debug('Joined Values: ' + joinedValues);

