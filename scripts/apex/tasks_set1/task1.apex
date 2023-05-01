/*# Tasks : 
1. Write an Apex code that store two numbers in Integer variables 
   - Print out the bigger number */
   
Integer score1 =10,score2 =15;
if(score1>score2){
system.debug('is the smaller number');
}else if(score2>score1){
    system.debug('is the bigger number ');
}

/* Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number 
   */
   integer num1=20, num2=15, num3=10;
   if(num1<num2 && num1<num3){
    system.debug('smaller number is '+num1);
   }else if(num2<num1 && num2<num3){
    system.debug('smaller number is '+num2);
   }else if(num3<num1 && num3<num2){
    system.debug('smaller number is '+num3);
   }
 
/*3. Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'
   */
   Boolean isBaby1Laughing=true , isBaby2Laughing=false;
      if(isBaby1Laughing==true && isBaby2Laughing==true){
    system.debug('both laughing'+true);
   }else if(isBaby1Laughing==true){
    system.debug('only first baby laughing');
     }else if(isBaby2Laughing==true){
        system.debug('only second baby laughing');
     }else{system.debug('no babies are laughing');

     }

     

    /*4. Write an Apex that store caseStatus as String 
   - if  caseStatus is New print 'Case need attention'
   - if  caseStatus is Working print 'Case in progress'
   - if  caseStatus is Escalated print 'Case need to be reassigned and manager need to be notified'
   - if  caseStatus is Closed print 'Case has been resolved'
   */
   String  caseStatus = 'Closed';
   if(caseStatus=='New'){
    system.debug('Case need attention');
   }else if(caseStatus =='Working'){
    system.debug('Case in progress');
   }else if(caseStatus=='Escalated'){
    system.debug('Case need to be reassigned and manager need to be notified');
    }else if(caseStatus=='Closed'){
        system.debug('Case has been resolved');
    }
String caseStatus = 'New' ; 
// the values are check in case sensitive manner 
switch on caseStatus {

    when 'New' {
        System.debug('Case need attention'); 
    }
    when 'Working' {
        System.debug('Case in progress'); 
    }
    when 'Escalated' {
        System.debug('Case need to be reassigned and manager need to be notified'); 
    }
    when 'Closed' {
        System.debug('Case has been resolved'); 
    }
    when else {
        System.debug('Nothing match ,invalid case status ') ; 
    }
}

/*5. Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
   - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
   - if the stage is 'Qualificationn', assign the value of probabilityPercentage to 0.2
   - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
   - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
   - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0

   - at the end Print out message 'State is X and probability Percentage is X %'
   */

   String opportunityStage = 'Closed Lost';
   Decimal probabilityPercentage = 0;
   If(opportunityStage=='Prospecting'){
    system.debug('probabilityPercentage is 0.1');
   }else If(opportunityStage=='Qualification'){
    system.debug('probabilityPercentage is 0.2');
   }else If(opportunityStage=='Need Analysis'){
    system.debug('probabilityPercentage is 0.3');
   }else If(opportunityStage== 'Closed Won'){
    system.debug('probabilityPercentage is 1.0');
   }else If (opportunityStage =='Closed Lost'){
    system.debug('probabilityPercentage is 0');
   }else{
    system.debug('State is X and probability Percentage is X %');
   }

   /*6. Write and Apex code that store leadScore as Integer inialize it's value to 50 and hasEmail, hasPhone, hasTwitter as Boolean variables 
   - in 3 separate if statements (without else) do as below : 
   - if hasEmail equal true , increase the value of leadScore by 20
   - if hasPhone equal true , increase the value of leadScore by 18
   - if hasTwitter equal true , increase the value of leadScore by 12
   - 'The lead store is  XX'
   */
   Integer leadScore=50;
   Boolean hasEmail=True , hasPhone=False , hasTwitter=True;
   If(hasEmail==True){
    system.debug('lead Score is'+(leadScore+20)  );
   }If(hasPhone==True){
    system.debug('lead Score is' + (leadScore+18) );
   }If(hasTwitter==True){
    System.debug('lead Score is' + (leadScore+12));
   }else{
    System.debug('The lead store is  XX');

   }
   
Integer leadScore = 50  ; 
Boolean hasEmail=false; 
Boolean  hasPhone=true;
Boolean hasTwitter=true ; 

// this is the shortcut if you have only one statement 
// inside your if block 
if(hasEmail)  leadScore += 20 ; 

if(hasPhone)  leadScore += 18 ; 

if(hasTwitter)  leadScore += 12 ; 

System.debug('The lead socre is ' + leadScore ); 

















   /*6. Write an Apex code that store contactEmail and mailingState as String 
   - check if a Contact's email is not null (!=null) and it's mailing state is Californina, 
   - if both conditions are true, print out 'Valid Californnia Contact'
   */
   String contactEmail = 'sga@hot.com', mailingState='Californina';
   If (contactEmail != Null && mailingState=='Californina'){
    System.debug('Valid Californnia Contact');
   }else{
    system.debug('invalid Californnia Contact' );
   }
   
  /* 7. Write an Apex code that strore Case's Priority (casePriority) as String and is Tier One Customer or not(isTierOneCustomer) as Boolean.
   - if isTierOneCustomer value true , print 'Tier 1 Customer, handle within 1 hour'
   - else
     - check if a Case's Priority is either 'High' or casePriority=' 'Critical' '
       - if so , print out 'urgent case handle inn 6 hours'
       - else print out 'handle within 2 days
       */

  String  casePriority = 'High';
  Boolean  isTierOneCustomer=True;
If(isTierOneCustomer==True){
  system.debug('Tier 1 Customer , handle within 1 hour');
}else If(casePriority=='High'||casePriority=='Critical'){
    system.debug('urgent case handle inn 6 hours');
}else{
    system.debug('handle within 2 days');
}  


     


    

    

    
   
    
   
   
   
   

   


