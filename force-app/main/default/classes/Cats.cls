/*Create a sub class for Animal called Cat
Field color
Constractor to set 3 fields value name, age, color
Call constructor from Animal using which Method? 
Add color

Add override makeNoise method 
Override abstract method getInfor(){*/





public  class Cats extends Animals {
  public string color;  
  public Cats (string Name , Integer age, string color){
    super( Name ,  age);
    this.color = color;

  }
public override void makeNoise(){
    System.debug('the cats make miaw'); 
    }

    public override string getInfo(string food){
        return 'food';

    }

}