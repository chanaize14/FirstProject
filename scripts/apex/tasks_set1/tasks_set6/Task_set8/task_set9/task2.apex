/*2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out  */
   List <String> strList = new List <String> {'oneoneone' , 'two' , 'three' , ' four' , 'five' , 'sixsixsix' , 'seven' , 'nine' , 'ten' };

Integer count = 0;
for (String each : strList) {
  if (each.length() > 5) {
    count++;
  }
}
System.debug('There are ' + count + ' items with more than 5 characters');
 
 List <String> names = new List <String> {'Anna' , 'Alex' , 'Amina', 'Aglaya' , 'Lisa' , 'Leona' , 
 'Lena' , 'Kaya' , 'Kira' , 'Kate'};
 
 Integer count = 0 ;

 for( String each : names ){
    if(Math.mod(each.length(), 2)==0){
      count++;
    }
 }
 System.debug('there are ' + count + ' items with even number of characters'); 