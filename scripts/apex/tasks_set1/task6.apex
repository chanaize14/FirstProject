/*1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop*/
 
 List<String> apexLis= new List<String>();
 apexLis.add('more');
 apexLis.add('less');
 apexLis.add('midele');
 System.debug('apexLis value is : ' + apexLis); 
 apexLis.add(1,'up');
 apexLis.add(1,'plus');
 apexLis.add(1,'dam');
  for(String each : apexLis) {
    System.debug(each);
  }
   for(Integer i=0; i<apexLis.size() ; i++) {
    System.debug(apexLis.get(i) );
   } 
 /*2. Write an Apex code to create a List of Strings with 4 items
 set the value of last item to the value of first item 
  for example original list values :  item1 , item2, item3, item4 
                   list values now :  item1 , item2, item3, item1*/
  /*List<String> Items = new List<String>{'item1','item2','item3','item4'};
 Items.set(3,Items.get(0));
 System.debug(Items);

 /*3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4 */
      /*List<String> names = new List<String>{'booba','nina','amel','dida','sandy','sissi'};
     if(!names.contains('jon snow') ){
        names.set(4,names.get(0));
      }else{
        names.remove('jon snow') ; 
         names.set(4,names.get(0));
System.debug('numberList value is : ' + names); 
      }
        
 if (!names.contains('jon snow')) {
  names.add(4, 'jon snow');
} else {
  Integer IndexOfJohnSnow = names.indexOf('jon snow');
  names.remove(IndexOfJohnSnow);
  names.add(4, 'Jon Snow is back');
}

System.debug('Names value is : ' + names);
 
 /*4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man',
 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

- Find the count of times 'Iron Man' showed up */

/*List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man',
 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};
 integer count=0;
 for(string each : heroList) {
  if( each == 'Iron Man' ){
    count++;
  }
  
  
  
  System.debug('count show up '+count +'time' );
  }

  /*5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new List when looping 
- print out the size of new List. */
/*List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man',
 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};
 Integer index = 0;
 List<Integer> heroList2 = new List<Integer>();

for (Integer i = 0; i < heroList.size() ; i++){
    if (heroList.get(i) == 'Iron Man'){
        System.debug('index is ' + i); 
    }
}System.debug(heroList2.size());/*

/*6. Continue from above list 
- Write a while loop to check the list contains 'Iron Man' 
 - if so find index of each Iron Man and remove from the list

List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man',
 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};
 while (heroList.contains('Iron Man')) {
  heroList.remove(heroList.indexOf('Iron Man'));
}
System.debug('heroList value is : ' + heroList);
 /*7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30*/

 /*Double[] nums = new Double[10];
nums[0] = 56.99;
nums[1] = 12.13;
nums[2] = 22.17;
nums[3] = 33.9;
nums[4] = 47.87;
nums[5] = 99.15;
nums[6] = 5.72;
nums[7] = 9.88;
nums[8] = 54.99;
nums[9] = 3.65;
Integer count = 0;
Double sumOfNums = 0;
for (Decimal each : nums) {
  if (each > 10 && each < 20 || each > 40 && each < 50) {
    count++;
  }System.debug('count value is : ' + each);
  
}
for(Double each : nums) {
    if(each>30){
        sumOfNums+=each;
    }
}System.debug('sumOfNums value is : ' + sumOfNums); 
 
 /*8. Create an String Array with 10 elements and print them in reverse order
  String[] letters = new String[10];
 letters[0] = 'a';
 letters[1] = 'b';
 letters[2] = 'c';
 letters[3] = 'd';
 letters[4] = 'e';
 letters[5] = 'f';
 letters[6] = 'g';
 letters[7] = 'h';
 letters[8] = 'i';
 letters[9] = 'j';

for(Integer i = letters.size()-1 ; i >= 0 ; i--){
    System.debug(letters.get(i)); 

}
/*9. Create an Boolean Array with 10 elements and count the the number of true value*/
Boolean[] trueOrFalse = new Boolean[10];
trueOrFalse[0]=true;
trueOrFalse[1]=true;
trueOrFalse[2]=true;
trueOrFalse[3]=true;
trueOrFalse[4]=false;
trueOrFalse[5]=true;
trueOrFalse[6]=false;
trueOrFalse[7]=true;
trueOrFalse[8]=true;
trueOrFalse[9]=false;

Integer count=0;

for(Boolean each : trueOrFalse){
    if (each == true){
        count++;
    }
}
System.debug(count);

/*10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5*/
//Task 10
Integer[] numbers = new Integer[10];
numbers[0] = 2;
numbers[1] = 12;
numbers[2] = 22;
numbers[3] = 13;
numbers[4] = 7;
numbers[5] = 6;
numbers[6] = 18;
numbers[7] = 15;
numbers[8] = 8;
numbers[9] = 10;

if (numbers.contains(5) && numbers.contains(10)) {
  System.debug('Ideal numbers');
} else if (numbers.contains(10)) {
  System.debug('Good numbers');
} else if (numbers.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}

