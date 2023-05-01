/*Write a program that create a Map<String, Integer>  with 9 values
   - Create a new map that contains only the keys and values where the value 
   is greater than 10 from first Map.*/
Map<String, Integer> myMap = new Map<String, Integer>{
    'apple' => 5,
    'banana' => 15,
    'cherry' => 10,
    'date' => 20,
    'elderberry' => 25,
    'fig' => 30,
    'grape' => 8,
    'honeydew' => 12,
    'kiwi' => 6
};

Map<String, Integer> filteredMap = new Map<String, Integer>();
for (String key : myMap.keySet()) {
    Integer value = myMap.get(key);
    if (value > 10) {
        filteredMap.put(key, value);
    }
}

System.debug('Original Map: ' + myMap);
System.debug('Filtered Map: ' + filteredMap);
