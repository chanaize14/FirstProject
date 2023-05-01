/*1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count*/
   

Integer[] numbers = new Integer[]{29,25,77,62,91,31,62,25,77,29};
System.debug('numbers value is : ' + numbers); 

//remove duplicate and print it out 
Set<Integer> numbersSetList = new Set<Integer>(numbers);
System.debug('myVar value is : ' + numbersSetList); 

//print out the unique item count and difference between total list item count
System.debug('Array size is : ' + numbers.size()); 
System.debug('Numbers Set List size is : ' + numbersSetList.size()); 

System.debug('Difference in count beetween Array and Set is : '
                + (numbers.size() - numbersSetList.size())); 

   /*2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array*/
   List<Integer> randomNumbers = new List<Integer>();

for(Integer i=0; i<6 ;i++) {
    randomNumbers.add(Integer.valueof((Math.random() * 10)));
}

 Integer[] numbers = new Integer[3];
 numbers[0] = randomNumbers.get(randomNumbers.size()-1);
 numbers[1] = randomNumbers.get(randomNumbers.size()-2);
 numbers[2] = randomNumbers.get(randomNumbers.size()-3);

System.debug('numbers value is : ' + numbers);

/*3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out */
   Integer[] numbers = new Integer[]{29,13,77,62,91,31,62,25,77,10};
Integer[] reverseNumbers = new Integer[10];

Integer j = 0;
for(integer i=9; i>=0; i--) {
    reverseNumbers[j]=numbers[i];
    j++;
} 

 System.debug('reverse Number List value is : ' + reverseNumbers);
 /*4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop*/
   List<String> TeamList = new List<String>{
  'Admin',
  'Product owner',
  'Project manager',
  'Business analys',
  'Developer',
  'Team lead',
  'Team lead',
  'QA engineer ',
  'Software architect',
  'UI designers'
};

Set<String> newTeam = new Set<String>{};

for (String role : TeamList) {
  if (!(role == 'Admin' || role == 'Developer')) {
    newTeam.add(role);
  }
}
System.debug('newTeam value is : ' + newTeam);
System.debug('TeamList. value is : ' + newTeam.size());

/*5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}
   List<Integer> numberList = new List<Integer>{ 2, 5, 10, 6, 1, 12 };

for (Integer i : numberList) {
  System.debug('Current value : ' + i * 2);
}  

/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}*/
   List<String> strList = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

for (Integer i = 0; i < 5; i++) {
  strList.set(i, strList.get(i) + ' sf' + i);
}

System.debug('strList value is : ' + strList);

/*7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated 
   by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'*/

List<String> strList = new List<String>{'This','is','The','Way','Student'};

String word1= strList.get(0);
String word2= strList.get(1);
String word3= strList.get(2);
String word4= strList.get(3);
String word5= strList.get(4);

System.debug(word1 + '-' + word2 + '-' + word3 + '-' + word4 + '-' + word5) ; 

/*8. Write an Apex code that create List or Array of 7 String values
   - store the the index of item in the middle in to variable mid1
   - now imagine you unknown (odd) number of items in the list and find out
    a way to dynamically find the index of item in the middle 
     - if you have 7 items : number 4 item is in the middle
     - if you have 17 items : number 9 item is in the middle and so on
     - no loop needed here
   - print out the value of item in the middle */

    List<String> strList = new List<String>{'item1','item2','item3','mid1','mid2','item6', 'item7', 'item8'};
Integer size = strList.size();
Integer mid1 = size / 2 ;
Integer mid2 = mid1 + 1 ;
System.debug('The items in the middle are ' + mid1 + ' and ' + mid2); 

/*7. Write an Apex code that create List or Array of 8 String values
   - store the the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 6 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle */
   List<String> strList = new List<String>{'item1','item2','item3','middle','item5', 'item6','item7'};

Integer size = strList.size();
Integer mid = (size + 1) / 2 ;

System.debug('the value in the middle is ' + mid); 

/*8.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method*/
      
      Set<Integer> numberSet1 = new Set<Integer>{95,44,98,96,42};
Set<Integer> numberSet2 = new Set<Integer>{43,79,15,79,40};

System.debug('numberSet1 contains all the values in numberSet2 : ' 
            + numberSet1.containsAll(numberSet2)); 

numberSet2.addAll(numberSet1);
System.debug('numberSet1 value is : ' + numberSet1); 
System.debug('numberSet2 value is : ' + numberSet2); 

System.debug('All items in set 2 exists in set 1  : ' + numberSet1.containsAll(numberSet2) ); 
System.debug('All items in set 1 exists in set 2  : ' + numberSet2.containsAll(numberSet1) ); 

numberSet2.removeAll(numberSet1);
System.debug('numberSet2 value is : ' + numberSet2);  


/* Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method*/
      
Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
Set<String> strSet2 = new Set<String>{'item6','item7','item3','item4','item5'};

strSet1.retainAll(strSet2);
System.debug('strSet1 value is : ' + strSet1); 

    /*9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set */
   Set<Integer> numberSet = new Set<Integer>{
  87,
  99,
  65,
  12,
  49,
  45,
  59,
  78,
  32,
  52
};

Integer count = 0;
Integer sum = 0;
Integer average = 0;

for (Integer each : numberSet) {
  sum += each;
}

count = numberSet.size();
average = sum / count;

System.debug('the count of the numbers is ' + count);
System.debug('the sum of the numbers is ' + sum);
System.debug('the average of the numbers is ' + average);        
      
 /*0. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update*/
    List<Integer> numberList = new List<Integer>{71,249,-13,13,178,59,54,158,76,-33};

Integer count = 0 ;
for(Integer each : numberList) {
    if( each < 0 || each > 100 ){
        count++ ; 
    }
}
System.debug('Count of the numbers less than 0 or greater than 100 : ' + count);   

Integer index = 0 ;
for(Integer each : numberList) {
   if( each < 0 ){
    numberList.set(index, 0);
    index++;
   }else if( each > 100){
    numberList.set(index, 100);
    index++ ;
   }else {
    index++ ;
   }
}
System.debug('Updated value of the scores list : ' + numberList);   

/*  Bonus:   Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;

Swap the value of num1 , num2 
so num1 become 20 and num2 become 10*/

Integer num1 = 10 ;
Integer num2 = 20 ;

Integer dummy = 0 ;

System.debug('num1 value is : ' + num1); 
System.debug('num2 value is : ' + num2); 

dummy = num1;
num1 = num2;
num2 = dummy;

System.debug('num1 value is : ' + num1); 
System.debug('num2 value is : ' + num2); 




   
