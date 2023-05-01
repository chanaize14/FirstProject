/**
Practice
Season: Winter - boots
spring - sneakers
summer - sandals
autumn - loafers
 */

 String season = 'winter';
 if(season == 'winter'){
    System.debug('wear your boots');
 }else if(season == 'spring'){
    System.debug('wear your sneakers');
 }else if(season == 'summer'){
    System.debug('wear your sandals');
 }else{
    System.debug('wear your loafers');
 }

 String season = 'summer';

switch on season{
    when 'winter'{
        System.debug('wear your boots');
    }when 'spring'{
        System.debug('wear your sneakers');
    }when 'summer'{
        System.debug('wear your sandals');
    }when else{
        System.debug('wear your loafers');
    }
}


/**
Define a list of brand of cars
Practice List methods
 */

List<String> cars = new List<String>{'Ford' , 'Toyota' , 'BMW'};
System.debug(cars);

cars.add('Mercedes');
cars.add('Honda');
cars.set(1, 'Tesla');
System.debug(cars);

Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);

System.debug(cars.get(3));

cars.clear();




/**
Define a set of prices
Practice for each loop */

Set<Decimal> prices = new Set<Decimal>{4.00, 6.99, 8.50, 3.25};
prices.add(0.99);
prices.add(6.99);
System.debug(prices);





/*
5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
*/

List<String> names = new List<String>{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife',
                                            'Nina', 'Arife', 'Ben'};

Set<String> noDuplicateNames = new Set<String>();
System.debug(names.size());

for(String eachName : names){
    System.debug(eachName);
    noDuplicateNames.add(eachName);
}

System.debug(noDuplicateNames);

System.debug(noDuplicateNames.size());
/*
9. Write a program that takes a list of strings that represent the names of account owners, 
and counts the number of times jon snow appears in the list.
*/

List<String> accountOwners = new List<String>{'John White', 'Andy Young', 'Jon Snow', 'Avi Green', 'Jane Gray',
                                            'Jon Snow', 'Josh Davis'};

Integer countName = 0;

for(String eachAccountOwner : accountOwners){

    if(eachAccountOwner == 'Jon Snow'){
        
        countName += 1;
    }

}

System.debug(countName);

