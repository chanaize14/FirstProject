

public class Order {
  
    public String product;
    public String customerName;
    public Decimal price;

    // create a static field tax rate 
    public static Decimal taxRate ; 


    public Order(String product, String customerName, Decimal price) {
        this.product = product;
        this.customerName = customerName;
        this.price = price;
    }

    public void printOrder(){

        // this keyword represent the current object calling the method
        System.debug(this);
        // System.debug('tax rate is '  + taxRate  ); 
        // System.debug('Order:[customerName=' + this.customerName   
        //                     + ', price='    + this.price
        //                     + ', product='  + this.product   + ']'); 
        

    }

    public static void showTaxRate(){
        System.debug('taxRate value is : ' + taxRate); 
    }



}































