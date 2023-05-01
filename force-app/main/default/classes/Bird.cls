/**
 * A class extends another class
 * A class implements another interface
 * A class can only extends 1 other class
 * A class can implements multiple interface
 * When a class implements a interface 
 * It will be required to implements the body
 * of all the abstract methods
 */
public class Bird implements Flyable{
    
    
    /**
     * fly method that provide implementation 
     * for abstract fly() method from 
     * Flyable interface 
     */
    public void fly(){
        System.debug('Bird fly with the wing'); 
    }

}