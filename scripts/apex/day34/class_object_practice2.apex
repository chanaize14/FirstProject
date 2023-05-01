//Account a = new Account(Name='Apex acc', Rating='Hot');

// Student s1 = new Student('Ilaha','H',100); 

/*Student s1 = new Student(); 
System.debug('s1 value is : ' + s1);


Student s2 = new Student(); 
System.debug('s2 value is : ' + s2);

Student s3 = new Student('Ilaha', 'H', 100);
System.debug('s3 value is : '
system.debug('--------------------------');







House h1 = new House() ; 
//constructor no param
System.debug('h1 value is : ' + h1);
//h1 value is : House:[hasGarage=null, squareFootage=null, style=null, year=null]
House h2 = new House('Victorian');
System.debug('h2 value is : ' + h2);
//h2 value is : House:[hasGarage=null, squareFootage=null, style=Victorian, year=null]

House h3 = new House('Victorian', 2023, true, 7000);
System.debug('h3 value is : ' + h3);
//h3 value is : House:[hasGarage=true, squareFootage=7000, style=Victorian, year=2023]
*/

Student s4= new Student('Abbas','m',101);
s4.study();
s4.study(5);
 

List<Student> studentLst = new List<Student>(); 

studentLst.add(  new Student('Abbas', 'M', 101)    ) ; 
studentLst.add(  new Student('Shay', 'A', 102)    ) ; 
studentLst.add(  new Student('Cavidan', 'M', 103)    ) ; 
studentLst.add(  new Student('Gurkan', 'D', 104)    ) ; 
studentLst.add(  new Student('Neslihan', 'K', 105)    ) ; 

System.debug('studentLst value is : ' + studentLst);

// Loop through each item in this List 
// and call the study method on each student 

for (Student each : studentLst) {
    
    each.study(5);
}










