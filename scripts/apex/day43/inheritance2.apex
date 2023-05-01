/**  Car as Parent
 *     fields : 
            model
            price
 *     constructor :      
           2 parameter constructor to set model and price 
       methods : 
        drive

    // ElectricCar
 *     fields : 
            batteryCapacity
 *     constructor :      
           3 parameters constructor to set model, price and batteryCapacity
    // GasCar
 *     fields : 
            tankCapacity
 *     constructor :      
           3 parameters constructor to set model, price and tankCapacity

 Build parent child relationship between Car-GasCar  Car-ElectricCar
*/
ElectricCar c1 = new ElectricCar('Tesla X', 95000, 10) ;
System.debug('c1 value is : ' + c1);
c1.drive() ; 

ElectricCar c2 = new ElectricCar('Lucid', 85000, 8) ;
System.debug('c2 value is : ' + c2);
c2.drive() ; 

GazCar c3 = new GazCar('Toyota Corolla',25000, 2);
System.debug('c3 value is : ' + c3);
c3.drive(); 


