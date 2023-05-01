// Animal a1 = new Animal();

// if you have a variable 
// you can assign any object of same type (if not abstract)
// or sub type (child class type) to the variable 
Animal a1 = new Dog('Sultan', 4 , 'Poodle'); 

System.debug( a1 instanceof Dog ); 
System.debug( a1 instanceof Cat ); 



Animal a2 = new Cat('Poncik', 5 , 'Grey');

// Flyable f1 = new Flyable(); 

Flyable f1 = new Bird(); 
Flyable f2 = new Plane();