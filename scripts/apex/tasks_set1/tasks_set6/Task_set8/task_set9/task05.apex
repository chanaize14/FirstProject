/* Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters */

    String email = 'jonsnow@nightwatch.com';
 Integer index = email.indexOf('@');
 
 System.debug(index);  

 System.debug(email.left(index).toUpperCase()); 

 System.debug(email.mid (index + 1 , 14 ));

System.debug('last three characters: ' + email.right(3) ); 