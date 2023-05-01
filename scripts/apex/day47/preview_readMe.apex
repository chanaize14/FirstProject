# Object-oriented programming (OOP) 
is a programming paradigm that is based on the concept of objects, which can contain data and code. 
In Apex, objects are created from classes, which define their properties and behavior. 
OOP principles include 
- inheritance, 
- encapsulation 
- abstraction 
- polymorphism.

Let's take the example of a Shape class to illustrate these OOP concepts in Apex. The Shape class can have properties such as area and name, and methods such as calculateArea() and others. 
We can create subclasses such as Circle, Square, and Rectangle that inherit from the Shape class and add their own unique properties and methods.

For example, the Circle class could have a radius property and a calculateArea() method that calculates the area of the circle. 
The Square class could have a sideLength property and a calculatePerimeter() method that calculates the perimeter of the square. 
The Rectangle class could have a length and width property and a calculateArea() method that calculates the area of the rectangle.

## Encapsulation 
is used to hide the implementation details of a class from other classes. 
For example, 
we can create BankAccount class that have balance as instance field and only provide public deposit and withdraw functionality to manipulate the balance
we can make the properties and methods of the Shape class protected and only provide public methods to access and modify them.

# Inheritance 
is used to allow subclasses to inherit properties and methods from their parent class. For example, the Circle, Square, and Rectangle classes can inherit the properties and methods of the Shape class and add their own unique properties and methods.

# Abstraction
 is used to simplify complex systems by breaking them down into smaller, more manageable parts. In the Shape class, we can use abstraction to define the common properties and methods that are shared by all the subclasses.

# Polymorphism 
is used to allow objects of different classes to be treated as if they were the same type. 
We can use super type as reference type(Variable data type) and subtype as actual object 
In the Shape class, we can use polymorphism to create a list of Shape objects that can contain instances of Circle, Square, and Rectangle, and call their methods through the Shape interface.



Overall, using OOP principles in Apex can help make our code more organized, maintainable, and scalable.
﻿