/*. Create a abstract class called Shape
   * instance fields : 
     - name as String 
     - area as Decimal
   * constructor 
     - 1 param|arg constructor to set the name
   * method 
     - abstract void method calculateArea with 
     no param */

//6. Add a non-abstract void method called displayShapeInfo to Shape class
 //- Print :  The Shape is nameOfShapeHere and the area is areaValueHere



public abstract class Shape {
    public string name;
    public Decimal area;

    public Shape(string name){
    this.name = name;
   
}
public abstract void calculateArea();
public void displayShapeInfo(){
    System.debug('the name of shape '+this.name +'the area is'+ this.area); 
    
}





}