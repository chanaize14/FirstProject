/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumkin
if it's winter   print  Go to sleep 
if nothing match print invalid season 
*/

String season = 'summer' ; 

if(season == 'spring'){
    System.debug('Go Camping ');
}else if(season == 'summer'){
    System.debug('Go Swimming  ');
}else if(season == 'fall'){
    System.debug('Go Pick Pumkin ');
}else if(season == 'winter'){
    System.debug('Go to sleep ');
}else{
    System.debug('Invalid Season');
}


switch on season{
    
    when 'spring'{
        System.debug('Go Camping ');
    }
    
    when 'summer' {
        System.debug('Go Swimming ');
    }
    
    when 'fall' {
        System.debug('Go Pick Pumkin ');
    }
    
    when 'winter' {
        System.debug('Go to sleep ');
    }
    
    when else {
        System.debug('Invalid Season ');
    } 
}

switch on season{
    
    when 'spring'{
        System.debug('Go Camping ');
    }
    when 'summer' {
        System.debug('Go Swimming ');
    }
    when 'fall' {
        System.debug('Go Pick Pumkin ');
    }
    when 'winter' {
        System.debug('Go to sleep ');
    }
    when else {
        System.debug('Invalid Season ');
    }
}
        
// Declare a variable called dayCode as Integer
// initialize it's value 

// check 
// if the dayCode value 1, 2, 3, 4, 5 
    // print weekday 
// if it's 6, 7
    // print weekend 
// else 
    // print invalid day code 
Integer dayCode = 3 ; 
if(dayCode==1 || dayCode==2 || dayCode==3 || dayCode==4 || dayCode==5){
    System.debug('weekday');
}else if(dayCode==6 || dayCode==7){
    System.debug('weekend');
}else{
    System.debug('invalid day code');
}
//------  use swicth statement for solution 
switch on dayCode{
    
    when 1,2,3,4,5 {
        System.debug('Weekday from switch');
    }
    when 6,7 {
        System.debug('Weekend from switch');
    }
    when else {
         System.debug('Invalid day code');   
    }
}

// You can use if statement inside another if statement when needed
// this is called nested if statement 

Boolean primeMember = false ; 
Integer itemPrice = 1 ; 

// if primeMember is true , there is no shipping cost 
// simply print out Your shipping is free
// print total is itemPrice 
// if primeMember is false 
     // itemPrice is greater than 35  ,
            // print your shipping is free 
     // itemPrice is less than 35 , 
            // print out shipping cost is 5$
            // print out total is  itemPrice + 5 

if(primeMember==true){  // you can also directly write if(primeMember)
    System.debug('Your shipping is free');
}else{
    
    if(itemPrice>=35){
        System.debug('Non-primeMember : Your shipping is free');
    }else{
        System.debug('shipping cost is 5$');
        System.debug('total is ' +  (itemPrice+5)  );
    }  
}





















