 /*Create concrete child class of Shape - 
class Circle 
   * instance fields : 
     - radius as Decimal 
   * constructor 
     - no param|arg constructor to set 
       - the name to Just Circle
       - radius to 1
     - 2 arg constructor to set 
       - name, radius
   * method 
     - implement calculateArea and calculate 
     the area 
       - set the value of area to
        Math.PI * radius * radius*/




 public class Circle extends Shape implements Drawable,Rollable {
   public Decimal radius;
   public Circle(){
    super('Just Circle');
      this.radius=1;
}
public Circle(String name, Decimal radius){
    super(name);
    this.radius=radius;
}
public override void calculateArea(){
    this.area= Math.PI*this.radius*this.radius;
}
public void draw(){

    System.debug('draw here'); 
    
}

  public void roll() {
System.debug('roll here'); 

  } 
}


   




