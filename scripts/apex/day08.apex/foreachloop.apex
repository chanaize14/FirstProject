/**
Create a list of Integer with 8 items 
Iterate over the list (use loop to go through each and every item)
print out only if the number is greater than 5
 */

 List<Integer> shoSizeList=new List<Integer>{4,5,6,8,12,15,1,13};
  system.debug('Item size is :'+shoSizeList.size());

 for(Integer eachSize :shoSizeList){
 if(eachSize >5){
 system.debug(eachSize) ;
 }
 }

 // get the sum of shoe sizes only if the number is greater than 5

 Integer sum = 0 ; 

 for( Integer  eachSize : shoSizeList ){
     // only add the size to sum if it is greater than 5
     if(eachSize > 5) {
        sum += eachSize ; 
     }
 
 }
 System.debug('Sum of sizes greater than 5 :  ' + sum) ; 













