// each and every class has constructor 
// if no constructor is explicitly defined 
// compiler will provide 
// empty constructor with no param
// this is also called default constructor
// if any constructor is defined 
// compiler will not provide default constructor
public class House {
    
    // Charatristic | attributes of House 
    //  style , year, hasGarage , squareFootage
    public String style ; 
    public Integer year ; 
    public Boolean hasGarage ; 
    public Integer squareFootage; 

    public House(){
        System.debug('constructor no param'); 
        
    }

    public House(String stylee){
        this.style = stylee ; 
    }



    // create a constructor to initilize all for
    // field values
    // while object is being created
    public House(String style, Integer year,Boolean hasGarage, Integer squareFootage){
        this.style          = style ; 
        this.year           = year ; 
        this.hasGarage      = hasGarage ; 
        this.squareFootage  = squareFootage ; 
    } 

















}

