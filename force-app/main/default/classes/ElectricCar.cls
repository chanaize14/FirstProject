public class ElectricCar extends Car {
    
    public Integer batteryCapacity ; 

    public ElectricCar(String model, Decimal price, Integer batteryCapacity ){

        super(model, price);
        this.batteryCapacity = batteryCapacity ; 
    }

    /**
     * We inherit the drive method from the parent 
     * However we want to provide different implemention details 
     * for how electricCar supposed to drive 
     * in this case simply added is driving on Electricty in the print 
     * in order to override parent class method 
     * parent class method must be marked as virtual in method declaration line
     * child class method must use the keyword override to indicate the intention 
     */
    public override void drive(){

        System.debug('Car '+ this.model + ' is driving on Electricty'); 
        
    }

      /**
     * Add a method called recharge 
     * accept no param , return nothing 
     * simply print out -- CarModelHere is re-charging 
     */
    public void recharge(){

        System.debug( this.model + ' is re-charging'); 
        
    }

}