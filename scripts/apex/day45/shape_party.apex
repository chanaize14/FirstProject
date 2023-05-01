List<Shape> shapeLst = new List<Shape>();

shapeLst.add(   new Rectangle('Book' , 5, 6)       ) ;
shapeLst.add(   new Rectangle('Screen' , 5, 6)     ) ;
shapeLst.add(   new Square('Window' , 5)           ) ;
shapeLst.add(   new Circle('Soccer' , 4)           ) ;
shapeLst.add(   new Circle('Orange' , 3)           ) ;
shapeLst.add(   new Circle('Planet' , 3000)        ) ;


for(Shape each : shapeLst) {
    each.calculateArea(); 
    each.displayShapeInfo(); 

    //instanceof keyword for type checking 
    // variableName instanceof DataType =>> true or false 
    if( each instanceof Circle ){
        System.debug('FOUND CIRCLE!!!!'); 
        // casting from type Shape to type Circle
        // this is called downcasting => from parent type to sub type 
        // Circle c = (Circle) each ; 
        Rollable c = (Rollable) each ; 
        c.roll(); 
    }
    
    
    // how do we cast the variable each to Drawable so we can call draw method 
    Drawable d =  (Drawable) each ; 
    d.draw() ; 

}


Decimal num = 99.99 ; 

Integer num2 =  (Integer) num ; 
System.debug('num2 value is : ' + num2);