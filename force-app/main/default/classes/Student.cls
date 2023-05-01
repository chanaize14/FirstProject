/**
 * Student class can be the parent|super class
 * for OnlineStudent class 
 * to provide base fields and functionality 
 * so we do not have to recreated those fields 
 * and methods if we want to use it as is in the 
 * child|sub classes 
 * In order for a class to be Parent|Super class 
 * It need to be marked as Virtual 

 */

public virtual class Student {
    // firstName, lastName, studentId 
    public String  firstName; 
    public String  lastName; 
    public Integer studentId; 

    // constructor :
    // a special block of code (similar to method)
    // get called automatically when object is being created
    // it has no return type (not even void)
    // it has same name as class name 
    public Student(){
        System.debug('Message from Constructor'); 
        this.firstName = 'unknown';
        this.lastName = 'unknown';
        this.studentId = 0 ; 
    }
    // create another constructor 
    // that accept 3 parameters 
    // so we can allow providing the values 
    // and use those values to assign instance field values 

    public Student(String fName, String lName, Integer sId){

        this.firstName = fName ; 
        this.lastName = lName ; 
        this.studentId = sId ; 

    }

    public void study(){
        System.debug( this.firstName + ' Study ');   
    }
    // create a overloaded version of study method 
    // it has 1 integer parameter hour
    // and print  XX Study YY hours 
    public void study(Integer hour){
         System.debug( this.firstName + ' Study ' + hour + ' hours');   
    }


}


