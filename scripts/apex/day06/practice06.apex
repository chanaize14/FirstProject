/**
 Create a variable called starCount 
 initialize it to 0 

 use loop , to print out below 
 0 star ranger 
 1 star ranger 
 2 star ranger 
 3 star ranger 
 4 star ranger 
 5 star ranger 
 6 star ranger 
 */
 Integer starCount = 0 ; 

//  while( starCount <= 6){
//     System.debug(starCount + ' star ranger') ; 
//     starCount++ ; 
//  }

    do {
        System.debug(starCount + ' star ranger') ; 
        starCount++ ;  
    }while(starCount <=6); 


 // when you are inside loop , 
//if the starCount is 0  print out , almost there to ranger status
// if the startCount is 6 print All star ranger
 while( starCount <= 6){

    if(starCount==0){
        System.debug('Almost There to 1 star');
    }else if(starCount ==6){
        System.debug('All star ranger') ; 
    }else{
        System.debug(starCount + ' star ranger') ; 
    }

    starCount++ ; 
 }



Integer muffin = 20 ; 

/*while( muffin >= 0 ){

    if(muffin > 10){
        System.debug('muffin count is ' + muffin) ; 
    }else{
        System.debug('muffin count is ' 
                        + muffin + ' I am getting full') ; 
    }

    muffin -= 2 ; // muffin = muffin -2 ; 
}
*/

/**
Declare and initialize variable muffin
Countdown from 20 -> 0 

// if the number is greater than 10 
    // print out first half : muffin count is XX
    // decrease the muffin by 3 
// else 
    // print out second half : muffin count is XX
    // decrease the muffin by 2 
*/
while(muffin>=0){
    If(muffin>10 ){
    system.debug('first half : muffin count is'+muffin);
    muffin-=3;
    }else{
        System.debug('second half : muffin count is'+muffin);
    muffin-=2;
    }
}

do {

    if(muffin > 10){
        System.debug('first half : muffin count is ' + muffin);
        muffin -= 3 ; 
    }else{
        System.debug('second half : muffin count is ' + muffin);
        muffin -= 2 ; 
    }

}while(muffin >= 0) ; 




















    



