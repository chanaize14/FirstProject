/**
 * 
 * Create a Queueable Apex class that 
 * inserts the same Contact for each Account for a specific state.
 * 
 * AddPrimaryContact q = new AddPrimaryContact(contactObject, 'CA');
 * System.enqueJob(q) ; 
 * 
 */

public with sharing class AddPrimaryContact implements Queueable{

    String state ; 
    Contact con ; 

    public AddPrimaryContact(Contact con,String state){
        this.con = con ; 
        this.state = state ; 
    }

}
