public class GasCar extends Car {

    public Integer tankCapacity ; 


    public GasCar(String model,Decimal price, Integer tankCapacity){

        super(model, price);
        this.tankCapacity = tankCapacity ; 

    }

    
    /**
     * Create overriden version of the drive method
     * to print different message 
     */
    public override void drive(){

        System.debug('Car '+ this.model + ' is driving on gas'); 
        
    }

 /**
     * Add a method called fillupGas 
     * accept no param , return nothing 
     * simply print out -- CarModelHere is filling up Gas
     */
    public void fillupGas(){
         System.debug( this.model + ' is filling up Gas'); 
    }
       
}