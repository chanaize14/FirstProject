Person p1 = new Person(); 
p1.name     = 'Hyder'; 
p1.age      = 38 ;
p1.height   = 178.5 ; // cm 

//System.debug('p1 value is : ' + p1);

p1.printName();  //printing the person name Hyder
p1.printAge(); //age of the person is : 38
p1.describePerson(); 
// Hyder is 38 and Height is 178.5

p1.changeName('Hyder 2.0');
p1.printName(); //printing the person name Hyder 2.0
p1.setAgeAndHeight(21, 180); 
p1.describePerson(); 
//Hyder 2.0 is 21 and height is 180

System.debug('------------------');


Person p2 = new Person();
p2.name='Marina';
p2.age = 21;
p2.height= 175.5;

//System.debug('p2 value is : ' + p2);
p2.printName(); //printing the person name Marina
p2.printAge(); //age of the person is : 21
p2.describePerson(); 
// Marina is 21 and Height is 175.5
p2.changeName('AI Marina');
p2.printName(); 
p2.setAgeAndHeight(18, 156);
p2.setPersonInfo('marina blabla', 12, 14.2);
p2.describePerson() ;  
// AI Marina is 18 and height is 156