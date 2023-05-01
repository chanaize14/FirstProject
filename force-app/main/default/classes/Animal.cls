public abstract class Animal {
    
    // instance fields name, age
    public String name; 
    public Integer age; 
    // constructor to set those 2 fields 
    public Animal(String name, Integer age){
        this.name = name ; 
        this.age = age ; 
    }

    // abstract void method called makeNoise 
    public abstract void makeNoise(); 

    // abstract method called getInfo  
    // it has param as food
    // return String
    public abstract String getInfo(String food) ;  
    
}