/**
List is a collection type that store elements in insertation order
each and every elements are stored in a position that start with 0

for example if you have below list
//                                  item   1  2   3  4   5   6
List<Integer> numLst = new List<Integer>{ 19, 1, 23, 7, 11, 99 };
                                    index  0  1   2  3   4   5
 */


 List<Integer> numLst = new List<Integer>{ 19, 1, 23, 7, 11, 99 };

 // get the element at certain index using get method 
 // get the first element and store it in variable 

 Integer item1 = numLst.get(0) ;
 System.debug('First item value ' + item1);

 //directly print out the second item value using get method

 System.debug('Second item value ' + numLst.get(1));
 system.debug(numLst.get(2));
 system.debug(numLst.get(3));
 system.debug(numLst.get(4));
 system.debug(numLst.get(5));
 system.debug(numLst);

 System.debug('----------------------------'); 
// iterate over all the elements in the loop without for each loop 

for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}

