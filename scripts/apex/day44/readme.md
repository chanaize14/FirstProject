# Inheritance 

Inheritance is a concept in object-oriented programming where a new class is created from an existing class, inheriting its properties and behaviors. The new class is called the subclass or derived class, while the existing class is called the superclass or base class.

Inheritance allows for the reuse of code and promotes the principle of don't repeat yourself (DRY). Subclasses can inherit and extend the properties and behaviors of the superclass, making it easier to create new classes with similar functionality.

For example, if we have a class called Animal with properties such as name, age, and weight, we could create a subclass called Dog that inherits these properties from the Animal class and adds its own properties and behaviors such as breed and bark.

We use `extends` keyword to build inheritance relationship. 
Parent class must be marked as `virtual` or `abstract` 

Assuming that's the case, here is how the syntax look like
```java
   public class Child extends Parent{
   }
```

### `virtual` keyword : 

* When used on class: 
  - It will allow this class to be Super|Parent class
  - ```java
    public virtual class Animal{
        public String name; 
        public Integer age;
    }
    ```
  - ```java
    public class Dog extends Animal{
        public String breed; 
    }
* When used on method: 
  - allow this method to be overriden in the child class methods 
  - for example if animal class have a method called `makeNoise`
  - ```java
     public virtual void makeNoise(){
        // animal general noise
     }
    ```
### `override` keyword is used in child class method
  - Now in the child class `Dog` we can override this method by including **`override`** keyword in the method header
  - ```java
     public override void makeNoise(){
        // dog is making barking noise
     }
    ``` 



## Constructor 
- Constructors are not inherited
- however you can call constructor of super class in the child class using `super( parameters goes here)`
- you may call other constructors of same class using `this(parameters goes here)` 
- YOU CAN NOT MIX AND MATCH `super(..)` and `this(..)`! 

- ```java
    public virtual class Animal{
        public String name; 
        public Integer age;
        public Animal(){
            //this.name = 'Unknown Animal';
            //this.age = 0 ;
            // calling 2 param constructor of this class
            this('Unknown Animal',0);
        }
        public Animal(String name, Integer age){
            this.name = name ; 
            this.age  = age  ; 
        }
        
    }
    ```

- ```java
    public class Dog extends Animal{
        public String breed;
        public Dog(String name,Integer age, String breed){
            super(name, age); 
            this.breed = breed ; 
        }
    }