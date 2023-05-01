/* since we have a class called Phone
// now we have a data type called Phone
// we can use it to create a variable
// we can create an instance of phone
// and assign it to the variable , 
// just like we did for Account, Contact
// and List , Set , and so on 
Phone p1 = new Phone(); 
p1.brand = 'Apple' ; 
p1.price = 899.99 ; 
p1.memorySize = 128 ; 

System.debug(p1) ; 
p1.price=799.45;
system.debug(p1);
//create a phone variable and assign Phone Object to it
//create an instance of Phone and save it to a variable
//instanciate a phone and save it to a variable
Phone p2 = new Phone(); 
p2.brand = 'Nokia';
p2.price = 499;
p2.memorySize = 512 ; 
System.debug(p2);
system.debug(p2.brand);


phone p3 = new phone();
p3.brand = 'Google Pixel';
p3.price = 888.99;
p3.memorySize=128;
system.debug('p3 value is :'+p3);

// Instantiate the house
// create an instance of the house
// create house variable assign House object

House H1= new House();
H1.style = 'victorian';
H1.year= 2023;
H1.hasGarage= true;
H1.squarFootage= 300;
system.debug('H1 value is :'+H1);

House H2= new House();
H2.style = 'Floridian';
H2.year= 1999;
H2.hasGarage= false;

system.debug('H2 value is :'+H2);*/


// Instantiate the CoffeeMaker
// Instantiate the CoffeeMaker
// create CoffeeMaker variable assign CoffeeMaker object
// all of the above are talking about same thing
CoffeeMrker c1= new CoffeeMrker();
c1.brand='Nespresso';
c1.capacity=9;
system.debug('c1 value is :'+c1);

c1.makecoffee() ;
c1.makecoffee() ;

c1.setTimer(5);
c1.setTimer(100);

c1.clean();

c1.addWater(10);

c1.addFlavor('vanilla mocha');
c1.addFlavor('caramel');
c1.addFlavor('Hazelnut');



c1.setStrength('High', 3) ; 
c1.setStrength('Intense', 5) ; 








