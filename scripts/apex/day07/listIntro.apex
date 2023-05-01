/**
Collection : for storing more than one values 
There are 3 types of collection 

List : ordered collection to store multiple values of same type 
Set  : unordered collection to store multiple unique values of same type removing
Map  : store key value pair in each element (more on that later)
 */

 // Syntax for Creating a list variable
 // and initializing it's value 

 // List< DataType > nameOfYourVariable 
            // = new List< DataType >(); 

List<String> studentNames = new List<String>() ; 


// we can use yourListVariable.add(what You want to add here) ; 
// to add elements into the List 
studentNames.add('Nurzat') ; 
studentNames.add('Ali') ; 
studentNames.add('Esra') ; 

System.debug(studentNames) ; 


/**
Create a List of Integer with name scores
and add 5 items in it  
 */
List<Integer> scores = new List<Integer>() ; 

scores.add(100);
scores.add(200);
scores.add(300);
scores.add(400);
scores.add(500);

System.debug(scores) ; 


/**
Declare a List of Decimal variable called prices
and initialize it's value 
Add 4 items|elements in it and print it out 
 */

List<Decimal> prices = new List<Decimal>(); 
prices.add(9.99) ; 
prices.add(19.99) ; 
prices.add(29.87) ; 
prices.add(11000.54) ; 

System.debug(prices) ; 



/**

Declare List variable initilize it's value 
and add all the items in one shot 

List<DataType> lstName 
        = new List<DataType>{item1, item2,.....itemN} ; 
*/

List<string> groceries= new List<String>{'Milk','Bread','egg','coffee'};
System.debug(groceries);

List<string> devices= new List<string>{'phone','laptop','tablet'};
System.debug(devices);

//List<Integer> numList = new List<Integer>{'7','14','28'};
//System.debug(numList);
p;  
// create List of Id and  and add 5 values in one shot 
List<Id> accountIds = new List<Id>{ '0018W0000251OK6QAM', 
                                    '0018W0000251OK6QAT', 
                                    '0018W0000251OK6QAY', 
                                    '0018W0000251OK6QAZ', 
                                    '0018W0000251OK6QAA'
                                    };
System.debug(accountIds) ;

// create a List of Boolean add 5 items into it 

List<Boolean> answers = new List<Boolean>{true , false , true, true, false};
system.debug(answers );

/**
Declare a List of Integer variable and initialize it's value(empty)

Fill up the List with 100 items, starting with 1 ----> 100
 */
 List<Integer> numberList= new List<Integer>();
 for(Integer count=1; count<=100 ; count++){
numberList.add(count);
 }
system.debug(numberList);



// Create a List of Integer and store 15 items
 // all item value should be 10 ;
 // here is the content of the list
 // 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,, 10, 10   


List<Integer> voteNumbers = new List<Integer>(); //our list

  //startPoint    //endPoint   //iteration
 for(Integer count=1 ;count<=15 ; count++){ //the for loop will run 15 times
    voteNumbers.add(10); //we add 10 to our list every time it loops
 }
System.debug(voteNumbers); //then we print it out

// How to count the items inside the list 
 // so we get the a number 
 // size() method of List 
 Integer voteCount = voteNumbers.size() ; 

 System.debug(  voteCount  ) ; 

 // or you can directly print it out without saving 
 System.debug(   voteNumbers.size()   ) ; 
 
