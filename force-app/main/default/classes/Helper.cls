public class Helper {
 
    /**
     * Method can have below parts 
     * access modifier : public or private (at least from what we know)
     * static (OR NOT) : do I need an object to call this method or not 
     * return type : void for no return , data type for return 
     * method name : 
     * method parameters : what type of data need to be passed 
     *      when calling this method
     */



    // create static void method that print 1 to N
    public static void printOneToN(Integer n){

        for(Integer i= 1; i<= n ;i++) {
            System.debug('i value is : ' + i);
            
        }

    }

    // create static method 
    // that get the sum of the numbers from 1 to N
    public static Integer sumOfOneToN(Integer n){

        Integer sum = 0 ; 

        for(Integer i= 1; i<= n ;i++) {
            sum += i ;     
        }

        return sum ; 
    }


    // create a method called getOneToNList
    // It should return List of Integer with 1 to N as per item
    public static List<Integer> getOneToNList(Integer n){

        List<Integer> numLst = new  List<Integer>(); 

        for(Integer i= 1; i<= n ;i++) {
            numLst.add(i); 
        }

        return numLst ; 

    }



    /**
     * Write a method called getHighestNumber 
     * @param List<Integer>
     * @return Highest number 
     */
    public static Integer getHighestNumber(List<Integer> lst ){

       Integer max = lst[0] ;

        for(Integer each : lst) {
            
            if(  each > max   ){
                max = each ; 
            }
        
        }
        return max ;  

    }


    /**
     * a method that get the total  getTotal
     * @param List<Integer> 
     * @return sum of all those elements 
     */
    public static Integer getTotal(List<Integer> numList){

        Integer sum = 0 ; 

        for(Integer each : numList) {
            sum += each; 
        }
        return sum ; 

    }


        /**
     * a method that get the average getAverage
     *  Sum of all elements divided by item count size of the list 
     * @param numList List<Integer> 
     * @return average of all those elements 
     */
    public static Integer getAverage(List<Integer> numList){
        // Integer sum =  Helper.getTotal(numList) ;
        Integer sum =  getTotal(numList) ;

        return   sum / numList.size() ; 

        // return  getTotal(numList) / numList.size() ; 
          
    }

 /**
     * a method that accept many names and get the longer names from the list 
     * if the character count is greater than 5 and return all of them
     * 
     * @param names List<String> 
     * @return List<String> that meets the criteria
     * 
     */

public static List<String> getLongerNames(List<String> strList){

        List<String> filteredList = new List<String>(); 

        for(String each : strList) {

            if( each.length() > 5 ){
                filteredList.add(each) ; 
            }

        }
        return filteredList ; 

    }












}