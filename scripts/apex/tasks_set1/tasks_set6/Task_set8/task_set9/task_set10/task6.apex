/*6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)*/

   date birthday = date.newInstance(1988,5,18);    
   System.debug('birthday value is : ' + birthday.day());
   System.debug('birthday value is : ' + birthday.month());
   System.debug('birthday value is : ' + birthday.year());
   System.debug('Leap year : ' + Date.isLeapYear(1988)); 
System.debug('months between: ' + birthDay.monthsBetween(Date.today())); 
System.debug('days between: ' + birthDay.daysBetween(Date.today())); 