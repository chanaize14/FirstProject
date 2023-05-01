/*Create a sub class for Animal called Dog 
Field Breed 
Constractor to set 3 fields value 
Call constructor from Animal using which Method? 
Add breed 

Add override makeNoise method 
Override abstract method getInfor(){*/




public  class Dogs extends Animals {
    
public string breed;
public Dogs(string Name , Integer age, string breed){



super(Name,age);
this.breed=breed;
}
public override void  makeNoise(){
    System.debug('dog will barck'); 
    
}
public override string getInfo(string food){
   return  'food';
    
}



}