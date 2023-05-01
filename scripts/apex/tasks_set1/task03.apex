/*1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
*/
 Integer sum = 0;

 for(Integer odd = 1 ; odd <= 100 ; odd += 2){
    sum = sum + odd ;
 }
 System.debug(sum);



 Integer odd = 1, sum = 0;
 while (odd <= 100){
    sum = sum + odd ;
    odd += 2 ;
 }
System.debug(sum); 



Integer odd = 1 , sum = 0 ;
do{
    sum = sum + odd;
    odd += 2;
}while(odd <= 100);
System.debug(sum);

// practice List using similar approach 
/*2. Write a program that store the even numbers from 1 to 20 into List of Integer

  then write an apex code to get the sum of all items in the list.
  */ 
List<Integer> evenNumbers = new List<Integer> ();
Integer sum = 0;
for( 
    Integer count = 0; count <= 20 ; count += 2 ){
    evenNumbers.add(count);
    sum += count ;
}
System.debug(sum);

/*3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , 
   add more items into the list and run your program again to see if it works.
   */
   List<Decimal> prices = new List<Decimal>{1.29,2.9,5.7,6.7,4.3,7.8,3.3,6.9,8.8,2.2,4.5};

//    print out the size of the list 
Integer priceCount = prices.size() ; 
System.debug('price count in the list is ' + priceCount ) ; 

Decimal sun=.;
for(Decimal eachPrice      : Prices    ){
    sum+= eachPrice;
}
system.debug('sum of all Prices is:'+ sum);
 //    print out the average of all numbers 
//   average =  sum / count of items 
 Decimal average= sum /  priceCount;
System.debug('the average prices is'+ average);







*/
  /*4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers)
   */
   List<Long> longNumbers=new List<Long>{14000,-15000,16000,-17000,18000,-19000,20000,-21000,22000,-23000};
    Long sum=0;
    long negatifNumbers =0;
    Long positifNembers =0;
    for( Long eachlongNumbers : longNumbers){
     if(eachlongNumbers>0){
        sum+=eachlongNumbers;
         positifNembers++;
     }else{
        negatifNumbers++;
     }
    }
     system.debug('sum for numbers '+sum);
     system.debug('count for positif numbers'+positifNembers);
      system.debug('count for negatif numbers'+negatifNumbers);
*/
/*5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
   */
   List<String> names=new List<String>{'samia','zahia','soraya','nadia','zahia','rahim','ahmed','halima','halima','ahmed'};
   Set<String> newNames=new Set<String>();
   for(string eachnames : names){
     newNames.add(eachnames);
    
   }
   system.debug('count of names'+ names.size());
   */



   /*6. Write a program that can create X sample List name according to given number as below 
  1. create a variable called leadCount as Integer and initialize to 4
  2. create a empty List of String 
  3. use for loop to add items to List to generate as below 
    
    Sample Lead 1
    Sample Lead 2
    Sample Lead 3
    Sample Lead 4
    

  4. print out the List variable and the size 
  5. try changing the leadCount and run your code again 
  */
  /*Integer leadCount=6;
  List<String> simplelead=new List<String>();
  for(Integer count=1; count<=6;count++){
   simplelead.add('simplelead'+ count);
}
 system.debug('simple lead count'+simplelead.size());


/* 7. Similar to above task 
  1. now create two String variables to store firstName and lastName
  2. create a variable called leadCount as Integer and initialize to 5
  2. Create an empty List of String 
  3. using loop generate sample lead email in below format and add it to the list
  
  firstNameValue+lastNameValue_1@force.com
  firstNameValue+lastNameValue_2@force.com
  firstNameValue+lastNameValue_3@force.com
  firstNameValue+lastNameValue_4@force.com
  firstNameValue+lastNameValue_5@force.com
  

  4. try changing the leadCount and run your code again
  */
  String  firstName='samia';
  String   lastName= 'djebara';
  Integer  leadCount=5;
  List<string> leadEmail=new  List<string>();
  for(integer count=1;count<=5;count++){
    leadEmail.add(firstName+lastName+'_'+count+'@force.com'); 
  }
   for(string eachEmail:leadEmail){
  system.debug(eachEmail);
   }

   /*8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 

  4. Print out the first List 
  5. Print out the second List and it's size
  */
   
/*List<Integer> Items=new List<Integer> {4,5,8,9,6,3,12,36,25};
List<Integer> Lackynum=new List<Integer> ();
for(Integer eachIdem     : Items  ){
   
if( eachIdem   >=5 &&  eachIdem  <=10 ){
    Lackynum.add(eachIdem);
}
}
*/
//System.debug('first List'+ Lackynum );
//System.debug('second List ' + Lackynum.size());

//9. Write a program that takes a list of strings that represent the names of account owners, 
//and counts the number of times jon snow appears in the list.

/*List<String> accountOwners=new List<String>{'jon snow', 'jon snow','catalina','catalina','baby','oma','emma','ahmed','dina','dona'};
Integer count=0;
for(string eachaccountOwners : accountOwners){
    if (eachaccountOwners == 'jon snow'){
        count++;
    }
}
System.debug('jon snow appears in the list:'+count + 'time');
*/
/*10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users,
 and calculates the number of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 
*/
List<Integer> amounsMoney=new List<Integer>{1000,100000,100000,150000,12000,140000,100000,125000,140000,250000};
List<integer> overMoney=new List<Integer>();

Integer count=0;
for( integer eachAmounMoney : amounsMoney){
       if(eachAmounMoney >=10000){
        count++;
       }
}
system.debug('the count of numbers that over 10000 is '+ count);


List<Long> num = new List<Long>();
 num.add(-555555555555L);
 num.add(-666666666666L);
 num.add(7777777777777L);
 num.add(1342254523545L);
 num.add(9876567656334L);
 num.add(6666666666666L);
 num.add(1111111111111L);
 num.add(-999999999999L);
 num.add(7777111111777L);
 num.add(-333333333333L);

Long sumNum = 0;
Integer countPositive = 0;
Integer countNegative = 0;

for(Long eachNum : num){
    if(eachNum>0){
        sumNum += eachNum;
        countPositive ++ ;
    }else{
        countNegative ++ ;
    }
}
System.debug('Sum of positive numbers is : '+ sumNum);
System.debug('Count of positive numbers is : ' +countPositive);
System.debug('Count of negative numbers is : ' + countNegative);







  





























