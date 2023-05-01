/**
Create a List of String with 5 items 
Create a Map to store 
   each word(as key) and character Count of that word(as value) as key value pair
   Fill up the Map with 5 key-value pair with above criteria
 */

List<String> strList = new List<String>{
  'Happy',
  'Sunny',
  'Pleasant',
  'Breakfast',
  'flower'
};

Map<String, Integer> happyMap = new Map<String, Integer>();
// happyMap.put( 'Happy'   ,   5 ); 
happyMap.put( strList[0]   ,   strList[0].length() );
// happyMap.put( 'Sunny'   ,   5 ); 
happyMap.put( strList[1]   ,   strList[1].length() );
// happyMap.put( 'Pleasant'   ,8 ); 
happyMap.put( strList[2]   ,   strList[2].length() );
// happyMap.put( 'Breakfast' , 9   ); 
happyMap.put( strList[3]   ,   strList[3].length() );
// happyMap.put( 'flower'  ,   6 ); 
happyMap.put( strList[4]   ,   strList[4].length() );

System.debug('happyMap value is : ' + happyMap); 
//happyMap value is : {Breakfast=9, Happy=5, Pleasant=8, Sunny=5, flower=6}

//Homework: inspired by above
//Given a long String
//find out frequency of each Character

/**


 */

 Map<String, Decimal> priceMap = new Map<String, Decimal>{
                                                        'Apple' => 5.75,
                                                        'Orange' => 4.99,
                                                        'Grape' => 8.99,
                                                        'Strawberry' => 10.59,
                                                        'Banana' => 2.5
                                                   };


                                                   /**
You can copy all items from one map to another easily 
either while the map is being created or afterward 

 */

 Map<String, Decimal> priceMap = new Map<String, Decimal>{
                                                        'Apple' => 5.75,
                                                        'Orange' => 4.99,
                                                        'Grape' => 8.99,
                                                        'Strawberry' => 10.59,
                                                        'Banana' => 2.5
                                                   };
System.debug('priceMap value is : ' + priceMap); 
// create another map and copy everything from above map 
Map<String, Decimal> priceMapCopy = new Map<String, Decimal>(  priceMap  ); 
System.debug('priceMapCopy value is : ' + priceMapCopy); 


// create another empty map, add all the items from the 1st map  
Map<String, Decimal> priceMapCopy2 = new Map<String, Decimal>();
priceMapCopy2.putAll(priceMap); 
System.debug('priceMapCopy2 value is : ' + priceMapCopy2); 

