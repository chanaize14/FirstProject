Rectangle s1 = new Rectangle(); 
System.debug('s1 value is : ' + s1);

Rectangle s2 = new Rectangle('Book', 10, 8);
s2.calculateArea() ; 
System.debug('s2 value is : ' + s2);
s2.displayShapeInfo() ; 

Square s3 = new Square('Window' , 6);
s3.calculateArea() ; 
s3.displayShapeInfo() ; 
System.debug('s3 value is : ' + s3);

Circle s4 = new Circle('Soccer' , 5);
s4.calculateArea() ; 
s4.displayShapeInfo() ; 
System.debug('s4 value is : ' + s4);
s4.draw(); 
s4.roll() ; 