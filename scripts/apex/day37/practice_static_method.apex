/*Lead ld1 = Utils.getLead('Snow', 'Nightwatch LLC', true);
System.debug('ld1 value is : ' + ld1);

Lead ld2 = Utils.getLead('Stark','Stark Industry', false) ; 
System.debug('ld2 value is : ' + ld2);*/


/*List<Lead> myLeads1 = Utils.getLeads('Lannister', 'Westro', true, 4) ; 
System.debug('myLeads1 value is : ' + myLeads1);*/

/*List<Lead> myLeads2 = Utils.getLeads('Smith', 'IMB', false, 2) ; 
System.debug('myLeads2 value is : ' + myLeads2);

LeadTriggerHandler.handleBeforeInsert(myLeads2);
System.debug('myLeads2 value after calling the method is : ' + myLeads2);*/

//Create a list of lead with FirstName,lastName,Company with2 elements
//call the method above to see your result

List<Lead> myLeads3 = new List<Lead>(); 
myLeads3.add( new Lead(FirstName='clark', LastName='Kent',Company='Justice League' )); 
myLeads3.add( new Lead(FirstName='bruce', LastName='Wayne',Company='Wayne Enterprise' )); 
myLeads3.add( new Lead(FirstName='diana', LastName='Prince',Company='Amazon' )); 
 //System.debug('myLeads3 value is : ' + myLeads3);
 
 //LeadTriggerHandler.handleBeforeInsert(myLeads3);
 //System.debug('myLeads3 value is : ' + myLeads3);

 insert myLeads3;


 
















