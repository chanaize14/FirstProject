public class Person {
     // name, age, height
  // instance fields|variables
    
public string Name;
public  Integer age;
public Decimal height;





// create a method called print name
// it should simply print message
// printing the person name


public void PrintName(){
 
System.debug('printing the person name'+ Name);   


}


// Create a void method called printAge
  // age of the person is : XX

public void printAge(){

System.debug('Age of the ' + name + ' is ' + age );  

}

public void describePerson(){
System.debug( name + ' is ' + age + ' and heigh is '+
                                 height);
}
// Create a void method called changeName
// it should accept one external data as text
// (it has 1 String parameter)
// it should be simply change the name field of
// current object calling the method to new name
public void changeName(String NewName){
    Name= NewName;
}
// Create a void method called setAgeAndHeight
// it should accept 2 parameters
// newAge is Integer new Height as double
// it should be simply change the age, height field of
// current object calling the method

public void setAgeAndHeight (Integer newAge, Decimal newheigh){
        this.age    = newAge ;     // age  = newAge ;
      this.height = newheigh ;  // height = newHeight ;
}

  // create a void method called setPersonInfo
  // it should accept 3 parameters
  //  name as String 
  //  age as Integer  
  //  height as Decimal
  // it should be simply change the name, age,height field of 
  // current object calling the method

public void setPersonInfo(string Name,Integer age, Decimal height ){
    this.Name= Name;
    this.age = age;
    this.height = height;
}
  // Create a method called getAllCapName
  // This method should 
  // make the name of the current object uppercase
  // and return it to the caller 
  public String getAllCapName(){

    String upName = this.name.toUpperCase(); 
    // return keyword is used 
    // to return the value to the caller of this method
    return upName ; 
    // return this.name.toUpperCase(); 

  }

 // Create a method called isEligibleForVote
  // expect no external data 
  // return true the age of current Person object 
  // is 18 or above , otherwise return false 
  public Boolean isEligibleForVote(){

    if( this.age >= 18 ){
        return true; 
    }else {
        return false; 
    }
    // return this.age >= 18 ; 

  }

   // Create a method called getAgeGroup
  // it does not have any method parameter
  // it return age group based on below criteria
  // 0-6 Little Kid
  // 6-12 Young Kid
  // 12-18 teenager
  // 18 +  Adult
  // <0 or > 120 Invalid !!!
  public String getAgeGroup(){

      if(this.age<0 || this.age> 120){
         return 'Invalid';
      }else if (this.age>=0 && this.age<6) {
         return 'Little Kid';
      }else if (this.age>=6 && this.age<12) {
        return 'Young Kid';
      }else if (this.age>=12 && this.age<18) {
        return 'teenager';
      }else{
        return 'Adult';
      }
  }




}











