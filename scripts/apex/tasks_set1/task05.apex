/*1. Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print end with what we started 
   else print different beginning and ending 
    HINT : No Loop Needed Here
    */
List<Double> priceList = new List<Double>{
  77.207d,
  20.028d,
  27.517d,
  39.274d,
  36.586d,
  77.27d,
  2.028d,
  28.817d,
  139.74d,
  16.5d
};

// how to read first value from the list 
Double firstItem = priceList.get(0) ; 
// how to read last value from the list
Double lastItem = priceList.get(  priceList.size()-1  ) ;  

if( firstItem == lastItem ){
    System.debug('end with what we started'); 
}else{
    System.debug('different beginning and ending'); 
}

    

    /*2. Write a program that store List of long with 10 items with positive and negative numbers
     and print out all positive values using for loop 
    try using the continue instead.*/
    
    List<long> numbers=new List<long>{-1400,15000,170125,47851,-965823,-854785,150144,-147000,14744,-18000};
    
  for(Integer index=0; index<numbers.size(); index++){
    if(numbers.get(index)<0){
        continue;
    }
    System.debug(numbers.get(index));
 }
        
/*3. Write a program that store List of Integer with 10 items and try to get the sum of values,
  break out of the loop if the sum is greater than 100. 
  */
 List<Integer> numberList = new List<Integer>{37,26,77,45,58,11,22,33,4,5,7};
 
 Integer sum = 0 ;
 
 for(Integer each : numberList) {
    System.debug('Current value : ' + each);
    sum +=  each ; 
    if( sum > 100 ){
        break; 
    }
 }
 
 System.debug('sum value is : ' + sum); 

/*4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99 */
   
   List<Double> numList=new List<Double>{14.22,45.22,88.22,23.2,23.7,25.88,21.20,1.12,44.11,70.12};
   for(Double eachnumList     : numList){
     if(eachnumList<99.99 && eachnumList > 50.5 ){
           break;
     }
      system.debug('curent value'+eachnumList);
   
   /*5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )to print out all value 
   
for practice 

    - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop
     */

     List<Id> idSamples = new List<Id>{
    '00B8W000009ANPqUAO',
    '00B8W000010ANPqUAO',
    '00B8W000011ANPqUAO',
    '00B8W000012ANPqUAO',
    '00B8W000013ANPqUAO',
    '00B8W000014ANPqUAO',
    '00B8W000015ANPqUAO',
    '00B8W000016ANPqUAO',
    '00B8W000017ANPqUAO',
    '00B8W000018ANPqUAO'
};
System.debug('........................');
//1st option

for(Id eachId : idSamples) {
    System.debug('Current value : ' + eachId);
}
System.debug('........................');
//2nd option
for(Integer index=0; index<idSamples.size() ;index++) {
    //System.debug('Current value : ' + idSamples.get(index));
    if(idSamples.get(index)=='00B8W000014ANPqUAO'){
        break;
    }
     System.debug('Current value : ' + idSamples.get(index));
}

  /* 6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end */

List<Integer> numList=new List<Integer>{1,23,14,50,88,4,5,6,12,80,7};
for(Integer eachnumList : numList) {
 If(eachnumList >5  ){
    System.debug('items more than 5 '+eachnumList);
 }
}
system.debug('----------------------');

for(Integer index=0; index<numList.size() ;index++){
    //System.debug('Current value : ' + idSamples.get(index));
    if(numList.get(index)>6){
        
    }
     System.debug('item more than 5  : ' + numList.get(index));
}
*/
List<Integer> numbers = new List<Integer>{
    1,2,3,4,5,6,7,8,9,10
};
Integer sum = 0 ;

//1st option
for(Integer eachNum : numbers) {
    if(eachNum>5){
        sum+=eachNum; 
    }
}
System.debug('The sum of items greater than 5 is : ' + sum);

//2nd option
for(Integer index=0; index<numbers.size() ;index++) {
    if(numbers.get(index)>5){
        sum+=numbers.get(index);
    }
}
System.debug('The sum of items greater than 5 is : ' + sum);

/**
7. Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 numbers that are more than 5
*/

List<Integer> numberList = new List<Integer>{1,4,6,21,95,17,3,8,4,46};

Integer count = 0 ;

for(Integer each : numberList) {
    //System.debug('Current value : ' + each);
    if( each>5 ){
        count++ ; 
    }
    if( count==2 ){
        break; 
    }

}
System.debug('count value is : ' + count); 
/*you count the items with value  > 5 . And when you find 2 items that are > 5, 
 you stop. You declared count outside of the loop . count = 0,
  once you loop over and meet any item that is >5 , you count++ . 
  lest say  your Integer list ( 1, 6, 2, 8 ....) you have 2 items
   more than 5 (6 and 8) when you find them you count ++ 
    and meet the condition ( count == 2 ) here you break your loop. And you print out
     the result System.debug(count) which is ==2 */

/**
9. Write a program that create a list of strings and print the values that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.
 */
 List<String> roleList = new List<String>();
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Developer'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Admin'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director'); 


 for(Integer i=0; i<roleList.size() ; i++) {

    if( roleList.get(i)=='Admin'  ||  roleList.get(i)=='Developer' ){
        continue ; //skip
    }

    System.debug('Value at index #'+ i +' is :' + roleList.get(i) );

 }

 /**
10. Write a program that create a list of strings with 10 values and get the count of the items that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.
 */
  List<String> roleList = new List<String>();
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Developer'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Admin'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director'); 

 System.debug('hello'); 
 
for (Integer i = 0; i < roleList.size(); i++) {
  //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
  String each = roleList.get(i); //Admin

  if (!(each == 'Admin' || each == 'Developer')) {
    count++;
  }
}

System.debug('count value is : ' + count);
 
