/* Create a List of 10 String with your own values
   - create a Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index
   - (wait did we just crack how lottery system work?*/
   List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
}; 

Integer randomIndex=(Math.random()*10).intValue(); 
System.debug(randomIndex); 
System.debug(strList[randomIndex]); 
//strList.get(randomIndex)





