/**
Loop , is for repeating certain block of code 
as long as certain condition is true 

there are 4 types of loops 
while loop 
do while loop 
for loop 
for each loop 
 
 While(condition) {
    //run this block of code
}
*/
Integer count = 1 ; 
// print out the count by incrementing the value by 1
// until you reach number 5

while( count < 6 ){
    System.debug(count++) ; 
    //count++ ; 
}

System.debug('--------------') ; 



 //print out skip counting number by 2 
// if the starting number is 0 
// 0 2 4 6 8 10 12 14....
// if starting number is 1 
// 1 3 5 7 9 11 ......
// until 15 
 Integer level = 1 ; 

while( level < 15){
    System.debug(level) ; 
    //level = level + 2 ; 
    level  += 2 ; // short for above
}




// System.debug(count++);  // 1
// System.debug(count++);  // 2
// System.debug(count++);  // 3
// System.debug(count++);  // 4
// System.debug(count++);  // 5
                        // 6 

/**
Loop , is for repeating certain block of code 
as long as certain condition is true 

there are 4 types of loops 
while loop 
do while loop 
for loop 
for each loop 
 
 While(condition) {
    //run this block of code
}
*/
/*Integer count = 1 ; 
// print out the count by incrementing the value by 1
// until you reach number 5

while( count < 6 ){
    System.debug(count++) ; 
    //count++ ; 
}

System.debug('--------------') ; 



// print out skip counting number by 2 
// if the starting number is 0 
// 0 2 4 6 8 10 12 14....
// if starting number is 1 
// 1 3 5 7 9 11 ......
// until 15 
 Integer level = 1 ; 

while( level < 15){
    System.debug(level) ; 
    //level = level + 2 ; 
    level  += 2 ; // short for above
}

System.debug('--------------') ; 

// coutn from 10 - 1 
Integer cupcakeCount = 10 ; 

while(cupcakeCount > 0){

    System.debug(cupcakeCount); 
    --cupcakeCount ; 
    //System.debug(cupcakeCount--); 
}

System.debug('----------') ; 
// start from 15 , countdown 
// by decreacing by 3 each time
// 15, 12, 9, 6, 3, 0
Integer candy = 15 ; 

while( candy >= 0  ){
    System.debug(candy) ; 
    candy -= 3 ; // decrease by 3
}





// System.debug(count++);  // 1
// System.debug(count++);  // 2
// System.debug(count++);  // 3
// System.debug(count++);  // 4
// System.debug(count++);  // 5
                        // 6 

  /**
Loop , is for repeating certain block of code 
as long as certain condition is true 

there are 4 types of loops 
while loop 
do while loop 
for loop 
for each loop 
 
 do {
   // repeating code goes here
 }While(condition) ; 
*/

Integer score = 1 ; 
// count from 1 to 10 
do{

    System.debug(score++) ; 

} while( score < 11) ; 

System.debug('--------'); 
// Countdown 10 9 .... 1 
Integer sushi = 10 ; 

do{

    System.debug(sushi--); 

}while( sushi>0 );                       


 
