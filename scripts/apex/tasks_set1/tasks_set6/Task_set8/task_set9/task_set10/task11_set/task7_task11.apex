/*7. Map Practice : MapBully (NO LOOP NEEDED)
   -  Given A Map with key values in it with a.b,c as key and String as values
   -  for example : {'a'=>'candy', 'b'=>'dirt'}
   -  Follow below requirement to update the Map 
   -  if the key a has a value (not null), 
      -  set the key b to have that value
      -  and set the a to have value nothing 
      -  basically b is a bully , taking the value and replacing it with the nothing.
   -  You should get this result {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a' => 'candy'}  should be updated to this when you print 
      -  updated Map : {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a'=>'candy', 'b'=> 'carrot', 'c': 'meh'}
      -  updated map : {a=nothing,b=candy,c=meh}*/
      Map<String, String> map1 = new Map<String, String>{
    'a' => 'candy',
    'b' => 'dirt'
};
if (map1.containsKey('a')) {
    map1.put('b', map1.get('a'));
    map1.put('a', 'nothing');
}
System.debug(map1); // output: {a=nothing, b=candy}

Map<String, String> map2 = new Map<String, String>{
    'a' => 'candy'
};
if (map2.containsKey('a')) {
    map2.put('b', map2.get('a'));
    map2.put('a', 'nothing');
}
System.debug(map2); // output: {a=nothing, b=candy}

Map<String, String> map3 = new Map<String, String>{
    'a' => 'candy',
    'b' => 'carrot',
    'c' => 'meh'
};
if (map3.containsKey('a')) {
    map3.put('b', map3.get('a'));
    map3.put('a', 'nothing');
}
System.debug(map3); // output: {a=nothing, b=candy, c=meh}






