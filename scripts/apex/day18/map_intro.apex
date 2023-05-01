/**
Map is a collection type along with List and Set 
Map is like a dictionary : word--> meaning 
unlike List and Set , that store one item per element 
Map store key-value pair per element 
so instead of having one Data type like list and set 
It has 1 data type for key and 1 data type for value
Key in the map is unique , value can be anything 
It is an unordered collection , NO INDEX !!!!!

 */
// Create a Map called studentMap to represent 
    // student name(String) and badge count (Integer)
Map<String,Integer> studentMap = new Map<String,Integer>(); 

// and add items into it using `put` method 
studentMap.put('Tamara', 500) ; 
studentMap.put('Samia',  450) ; 
studentMap.put('Ali', 4700)    ;
// keys in the map are unique 
studentMap.put('Ali', 480)    ;
// keys in the map -case sensitive
studentMap.put('ali', 0)    ;

System.debug('studentMap value is : ' + studentMap); 
//{Ali=480, Samia=450, Tamara=500, ali=0}

// get the count of key-value pair in this map 
// size() method 
System.debug('studentMap.size() value is : ' + studentMap.size() ); 


// Get the value according to the key 
//Returns the value to which the specified key is mapped, or null if the map contains no value for this key.
// using  get(keyGoesHere) return => value 

System.debug('studentMap.get(\'Ali\') value is : ' 
                        + studentMap.get('Ali') ); //480

System.debug('studentMap.get(\'Samia\') value is : ' 
                        + studentMap.get('Samia') ); //450

System.debug('studentMap.get(\'Tamara\') value is : ' 
                        + studentMap.get('Tamara') ); // 500

System.debug('studentMap.get(\'BLA\') value is : ' 
                        + studentMap.get('BLA') ); //null
// get the count of key-value pair in this map 
// size() method 
System.debug('studentMap.size() value is : ' + studentMap.size() );     
System.debug('studentMap.containsKey(\'Ali\') value is : ' 
                    + studentMap.containsKey('Ali')); 
System.debug('studentMap.containsKey(\'BLA\') value is : ' 
                    + studentMap.containsKey('BLA')); 
 
// isEmpty method check if the Map is empty or not 

// remove(key) ==> remove the key-value pair if the key exists 

// clear() ==>> remove all items 

// isEmpty method check if the Map is empty or not
System.debug('studentMap.isEmpty() value is : ' + studentMap.isEmpty()); 
studentMap.remove('ali'); 
System.debug('studentMap value no ali is : ' + studentMap); 
// clear() ==>> remove all items 
studentMap.clear(); 
System.debug('is Map empty after clear() : ' 
                + studentMap.isEmpty() ); //true);


 // task 
 // Create a priceMap , productName , price 
// add 5 items 
// use all the methods we learned above 
// do this task right now for 5-7 minutes 

// Create a priceMap , productName , price
// add 5 items
// use all the methods we learned above

// Map<String,Decimal> priceMap = new Map<String,Decimal>() ;
// priceMap.put('Apple', 5.75);
// priceMap.put('Orange', 4.99);
// priceMap.put('Grape', 8.99);
// priceMap.put('Strawberry', 10.59);
// priceMap.put('Banana', 2.5);

// Creating Map with value filled up already
Map<String, Decimal> priceMap = new Map<String, Decimal>{
                                                        'Apple' => 5.75,
                                                        'Orange' => 4.99,
                                                        'Grape' => 8.99,
                                                        'Strawberry' => 10.59,
                                                        'Banana' => 2.5
                                                   };

System.debug('priceMap value is : ' + priceMap);
//{Apple=5.75, Banana=2.5, Grape=8.99, Orange=4.99, Strawberry=10.59}

// check if this map contains Mango , if not then add Mango => 6.99
if(  ! priceMap.containsKey('Mango')   ){
    priceMap.put('Mango', 6.99); 
}

System.debug('priceMap value is : ' + priceMap); 
// {Apple=5.75, Banana=2.5, Grape=8.99, Mango=6.99, Orange=4.99, Strawberry=10.59}
// if Banana price is greater than 2 ==> update it to 1.99
if(  priceMap.get('Banana') > 2   ){
     priceMap.put('Banana', 1.99) ; 
}
System.debug('priceMap value is : ' + priceMap); 
//{Apple=5.75, Banana=1.99, Grape=8.99, Mango=6.99, Orange=4.99, Strawberry=10.59}

// keySet() method , return all the keys in Set<YourKeyDataType>
Set<String> allKeys =  priceMap.keySet() ;
System.debug('allKeys value is : ' + allKeys); 
//allKeys value is : {Apple, Banana, Grape, Mango, Orange, Strawberry}


// values() method , return all the values in List<YourValueDataType>
 // values() method , return all the values in List<YourValueDataType>
List<Decimal> priceList = priceMap.values() ; 
System.debug('priceList value is : ' + priceList); 
// Iterate over each key and print it out 
for(String eachKey : allKeys) {
    System.debug('Current key : ' + eachKey);
    System.debug('Value of this key ' +  priceMap.get(eachKey) ) ; 
    System.debug('------------------');
}

//Task.practice


 /**
Map is not an Iterable type , so we can not directly iterate over a map
like we did for list and set in for each loop 
however we can get all the keys and iterate over those keys 
if we have the key, we can get the value using get method
that's how we can go through each and every items 
 */

 // Create a map of EmployeeId (Integer) and PhoneNumber(String)
 // empIdPhoneMap
 Map<Integer, String> empIdPhoneMap = new Map<Integer, String>();
 empIdPhoneMap.put(101 , '571-765-5665');
 empIdPhoneMap.put(102 , '571-765-5322');
 empIdPhoneMap.put(103 , '571-761-2435');
 empIdPhoneMap.put(104 , '571-764-3211');
 empIdPhoneMap.put(105 , '571-111-2222');
 

 Integer myKey = 103 ; 
 // get the value in the map using myKey as a key 
 System.debug('The value of myKey is : ' + empIdPhoneMap.get( myKey )    ); 

    myKey = 104 ; 
 System.debug('The value of myKey is : ' + empIdPhoneMap.get( myKey )    ); 
   

 System.debug('empIdPhoneMap value is : ' + empIdPhoneMap); 
//{101=571-765-5665, 102=571-765-5322, 103=571-761-2435, 104=571-764-3211, 105=571-111-2222}

 System.debug('empIdPhoneMap.keySet()  value is : ' + empIdPhoneMap.keySet() ); 
 //{101, 102, 103, 104, 105}

//  for(Integer eachKey : YourKeySetVariable ) { // if you decided to store the result of keyset method
 // get the result of empIdPhoneMap.keySet() method ==> set 
 // and iterate over the set 
 for(Integer eachKey : empIdPhoneMap.keySet() ) { // or do it in one shot

    //  print in this format X = Y 
    System.debug(eachKey + ' = ' +   empIdPhoneMap.get( eachKey  )    );
 

 }

 System.debug('empIdPhoneMap.values()  value is : ' + empIdPhoneMap.values() ); 
 // (571-765-5665, 571-765-5322, 571-761-2435, 571-764-3211, 571-111-2222)

 // Check if this map contains '571-765-5322' in value 

 System.debug('Do we have 571-765-5322 in the values part of the Map '); 
 
//  List<String> allPhoneList =  empIdPhoneMap.values() ; 
//  System.debug(  allPhoneList.contains('571-765-5322')  );

System.debug(  empIdPhoneMap.values().contains('571-765-5322')   ); 

//Task
/*Create a List of String with 5 items 
Create a Map to store 
   each word(as key) and character Count of that word(as value) as key value pair
   Fill up the Map with 5 key-value pair with above criteria*/
   List<String> stringList = new List<String>{'apple', 'banana', 'orange', 'grape', 'kiwi'};

Map<String, Integer> wordCountMap = new Map<String, Integer>();
for (String word : stringList) {
    wordCountMap.put(word, word.length());
}

System.debug(wordCountMap);

