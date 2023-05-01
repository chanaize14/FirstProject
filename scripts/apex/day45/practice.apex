//Square s = new Square('Box', 10);
//Rectangle s = new new Square('Box',10);
Shape s = new Square('Box', 10);
s.calculateArea();
System.debug('s value is : ' + s);
//downcast the variable s DataType to Square
Square sq = (Square) s;

//Integer x = 10;
//Integer y = x;

//get the count of all Account and store it in Integer
AggregateResult result  =[SELECT Count(Id)total from Account];
Integer count =(Integer) result.get('total');
System.debug('count value is : ' + count);