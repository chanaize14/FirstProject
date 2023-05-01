//Task01
//1. Write an Apex code to print all the odd numbers from 1 to 100 using for loop.
//for(Integer Count=1 ; Count<=100 ;Count++ ){
//system.debug(Count);
//}

/*2. Create an Integer variable with name upperLimit to control where to stop and initialize it's value to 50. 
Create a for loop to count from 1 to the upperLimit , try different upperLimit and run again
*/
//Task02
 /*Integer  upperLimit=50;
for(Integer count=1; count<=50; count++){
    system.debug(count);
    */

//Task03
//3. Create an Integer variable called startingNumber
//Create a loop to countdown from starting number till 0. 

//Integer startingNumber=80;
/*for(integer count=80; count>=0; count--){
System.debug(count);
}
*/
//Task04
//4. Create two Integer as startingNumber and endingNumber
//initialize their value (startingNumber should be less than endingNumber in this case).
//use for loop to count up by one starting from startingNumber and end at endingNumber

/*Integer  startingNumber=1;
Integer  endingNumber=50;
for(integer count=1; count<=50; count++){
system.debug(count);
}
*/
//Task05
/*5. Continue from above , Create a  similar logic as above, this time
 (startingNumber should be greater than endingNumber in this case). 
 count down from starting number till the ending number.
 */
/* Integer startingNumber=100;
 Integer endingNumber=1;
 for(Integer count=100 ; count>=1 ; count--){
  system.debug(count);
 }

/*6. use for loop to count from 20 to 60 increasing by 2 each time. 
Print out  each number.
Print out 'Yay we have finished half' when the count is exactly 40
*/
/*for(integer count=20; count<=60;count+=2){

system.debug('each number');
if(count==40){
 system.debug('Yay we have finished half' );   
}else{

}

}

/*6. use for loop to count from 20 to 60 increasing by 2 each time. 
Print out  20, 22, 24.....40 yay we finished half 42 44 46....60
 (Print out 'Yay we have finished half' when the count is exactly 40 as above)
 */
 //for(integer count=20; count<=40;count+=2){
//system.debug();


 //}
/*7. Create a loop that print as below 
Sample Lead 1
Sample Lead 2
...
Sample Lead 10
*/
/*Integer SampleLead = 10;
for(Integer count=1; count<=10; count++){
    system.debug('Sample Lead '+count);
}
*/
//Task 6
/* Integer count = 20;
 
 for(count = 20; count<=60 ; count+=2){
     if(count == 40){
        System.debug(count + ' Yay we finished half');
        
     }Else{
        System.debug(count);
     }
     */

for(Integer count=20 ; count<=60 ; count+=2 ){
    System.debug(count) ; 
    if(count==40){
        System.debug('Yay we have finished half');
    }
}








}

/*8. Create a Loop that print as below to generate sample first name last name 
TestFirst1  ,  TestLast1
TestFirst2  ,  TestLast2
TestFirst3  ,  TestLast3
TestFirst4  ,  TestLast4
*/
/*for( Integer count = 1 ; count <= 4 ; count++ ){
    System.debug('Testfirst'+count + ' , ' + 'Testlast'+count);
}

/*9. Similar to above task 
now create two String variables to store firstName and lastName
using loop generate sample lead email in below format
firstNameValue+lastNameValue_1@force.com
firstNameValue+lastNameValue_2@force.com
firstNameValue+lastNameValue_3@force.com
firstNameValue+lastNameValue_4@force.com
firstNameValue+lastNameValue_5@force.com

Remember to actually replace the value with variable value like 
jonsnow_1@force.com
*/
String firstName='samia';
string lastName='djebara';
Integer leadCount=4;
for(integer Count=1;Count<=5; Count++){
    system.debug('leadCount'+count+' Name is ' +firstName+lastName +' email is ' 
    +' samiadjebara@force.com ');
}
    


/*10. Now combine them all to print them together : 
Declare and initialize 2 String variables called firstName and lastName
Declare an Integer leadCount and initialize it's value. 

Create a for loop to print as below

For example : 
assuming 
String firstName = 'jon' , lastName = 'snow' ; 
Integer leadCount = 4 ; 

the program should output below 
The lead 1 name is jon snow1
email is jon_snow1@force.com

The lead 2 name is jon snow2
email is jon_snow2@force.com

The lead 3 name is jon snow3
email is jon_snow3@force.com

The lead 4 name is jon snow4
email is jon_snow4@force.com
*/
/*String firstName='samia';
string lastName='djebara';
Integer leadCount=4;
for(integer Count=1;Count<=5; Count++){
    system.debug('leadCount'+count+' Name is ' +firstName+lastName +' email is ' 
    +' samiadjebara@force.com ');
}
 */
 










