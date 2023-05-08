public class Dealership {

    private String name ; 
    private List<ElectricCar>  eCars ; 

    public Dealership(String name, List<ElectricCar> eCars ){
        this.name = name ; 
        this.eCars = eCars ; 
    }


    public void showCars(){

        for(ElectricCar each : eCars) {
            System.debug('model is '+ each.model 
                        +' and price is '+ each.price );
        }

    }

    public Integer getCarCount(){
        return this.eCars.size() ; 
    }

    
    public void discountAllCars(Integer discountAmount){

        for(ElectricCar each : eCars) {
           each.price -= discountAmount; 
        }
        

    }



    // public Integer getDealershipNameCharacterCount(){
    //     return this.name.length(); 
    // }



}
