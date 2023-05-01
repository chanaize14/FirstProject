/**
For each loop is specifically used to
Interate over (loop through) each and every item
every itme
inside Collection like (List, Set)

for(DataType eachItem : yourCollectionVariable ){
// do what you want to do with each item
}
 */
 
List<Integer> numberList = new List<Integer>{5,7,4,9,6} ; 
// print out the size of this list 
System.debug('Item count: '  + numberList.size()   ); 

for(Integer each  : numberList){
 System.debug(each); 
}

List<String> roles= new List<String>();
roles.add('clock_mastes');
roles.add('screenshot-master');
roles.add('karate_girl');
roles.add('type_master');
for(String eachRole : roles){
system.debug(eachRole);
}

List<Decimal> prices = new List<Decimal>{9.99,  2.59, 3.14 , 9.9 , 10.5}; 
system.debug('count prices:'+ prices.size());
for(Decimal  eachPrice  :   prices  ){
    System.debug('Price is : ' +  eachPrice );
}


// Create a List of Decimal and add 5 values in it 

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers
 Decimal sum = 0 ; 

 for(Decimal eachPrice  : prices){
    //sum = sum + eachPrice ; 
    sum += eachPrice ; 
 }

 System.debug('Sum is ' + sum); 
 







