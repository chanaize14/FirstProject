 /*2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array*/

   List<Integer> numberList = new List<Integer>{45,35,71,57,46,12,22,33,32,54,10};
   System.debug('numberList value is : ' + numberList); 
   /**in order to get the item at certain location we need index
 in order to get last three item, we need index of those 3
   last item: numberList.size - 1  ==> 9
   second item from the last : numberList.size - 2  ==> 8
   third item from the last : numberList.size - 3  ==> 7
 */
 
 /*creating an integer array with size 3 
add value one by one 
 */ 
 Integer[] last3Items = new Integer[3];
 last3Items[0] =   numberList.get( numberList.size() - 3  )     ; 
 last3Items[1] =   numberList.get( numberList.size() - 2  )     ; 
 last3Items[2] =   numberList.get( numberList.size() - 1  )     ; 


 System.debug('last3Items value is : ' + last3Items); 


//Task 07 
/*7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated 
   by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'*/

     for(Integer i=0; i<strList.size() ; i++) {
   System.debug('Value at index #'+ i +' is :' + strList.get(i) );
   // Store the current item value into a variable so we can reuse
    // when we are at the last item in the loop
    // do not add - at the end  joinedText += strList.get(i)

    // when we are not at the last item in the loop
    // add append each current item value and - at the end  joinedText += strList.get(i) + '-'
for(Integer i=0; i<strList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + strList.get(i) );
    // Store the current item value into a variable so we can reuse 
    String each = strList.get(i) ; 
    // when we are at the last item in the loop 
    // do not add - at the end  joinedText += each
    if(  i == strList.size()-1  ){
        joinedText += each; 
    }else{
    // when we are not at the last item in the loop 
    // add append current item value and - at the end  joinedText += each + '-' 
        joinedText += each + '-' ; 
    }


 }










 
   