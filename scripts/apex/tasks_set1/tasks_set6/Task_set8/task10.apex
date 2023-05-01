/*10. Write an Apex code that create a role List of 10 String 
   - join each item by space and store it into a String variable joined text 
     - and print it out
   - loop through the list 
     - print out each item along with character count in each item
     - in this format : 'admin has 5 characters'

   - loop through the list 
     - if it contains('dev') print out the items in UPPERCASE
     - if it contains('admin') print out the items removing the word admin : str.remove('admin') */
     List<String> strList = new List<String>{
  'SF admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
};

String joinedText = String.join(strList, ' ');
System.debug(joinedText); 

for(String each : strList) {
  System.debug(each +' has '+ each.length()+' characters');
}

for(String each : strList) {
  
  if(each.contains('dev'))
   System.debug(each.tolowerCase()); 

  if(each.contains('admin'))
  System.debug(each.remove('admin')); 
}

