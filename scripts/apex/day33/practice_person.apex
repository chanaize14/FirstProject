Person p3 = new Person(); 
p3.setPersonInfo('Nurzat', 21, 167); 
p3.describePerson(); 
// Nurzat is 21 and height is 167
p3.changeName('Nurzat_5');
p3.printName() ; 
// printing the person name Nurzat_5
p3.setAgeAndHeight(18, 180); 
p3.printAge(); 
// age of the person is : 18
p3.describePerson(); 
// Nurzat_5 is 18 and height is 180


String uppercaseName = p3.getAllCapName(); 
System.debug('uppercaseName value is : ' + uppercaseName);
// uppercaseName value is : NURZAT_5

System.debug('p3.getAllCapName() value is : ' 
                            + p3.getAllCapName());
// p3.getAllCapName() value is : NURZAT_5


Boolean isAdult =  p3.isEligibleForVote(); 
System.debug('isAdult value is : ' + isAdult); 
//isAdult value is : true
p3.setAgeAndHeight(16, 180) ; 

System.debug('p3.isEligibleForVote value is : ' 
                        + p3.isEligibleForVote() );
// p3.isEligibleForVote value is : false

System.debug('p3.getAgeGroup() value is : ' 
                        + p3.getAgeGroup() );
//p3.getAgeGroup() value is : teenager
