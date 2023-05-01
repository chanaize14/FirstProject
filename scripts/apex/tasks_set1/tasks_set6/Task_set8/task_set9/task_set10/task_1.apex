/*1. Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false 
    (check out the existing method in String class)
   - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false 
    (check out the existing method in String class)*/

    String sentence = '  DML   iS reaLly CoOl   ';

// Remove spaces in the beginning and at the end
String trimmed = sentence.trim();
System.debug(trimmed); // 'DML   iS reaLly CoOl'

// Normalize spaces
String normalized = trimmed.replaceAll('\\s+', ' ');
System.debug(normalized); // 'DML iS reaLly CoOl'

// Check if the normalized version starts with 'DML'
Boolean startsWithDML = normalized.startsWith('DML');
System.debug(startsWithDML); // true or false

// Check if the normalized version ends with 'cool' (case-insensitive)
Boolean endsWithCool = normalized.endsWithIgnoreCase('cool');
System.debug(endsWithCool); // true or false





String myString = '    This  is       my   string    ';
System.debug('message value is : ' + myString.trim());
System.debug('message.normalizeSpace() value is : ' 
            + myString.normalizeSpace());
String normalizedMyString = myString.trim();

System.debug( myString + 'starts with This :' 
            + normalizedMyString.startsWith('This')); 
System.debug( myString + 'ends with string :' 
            + normalizedMyString.endsWith('string'));

String practice = '     ToDay   iS     reaLly RaINy     ';
System.debug('practice value is : ' + practice); 
System.debug(' value is : ' + practice.trim());

practice = practice.normalizeSpace();
System.debug('practice-normalizeSpace() value is : ' + practice.normalizeSpace());
System.debug('practice-startsWith(\'Today\') value is : ' + practice.startsWith('Today'));
System.debug('practice-ends With (rainy) value is : ' + practice.endsWithIgnoreCase('rainy'));


string mySentence='    I    love   my   dad     ';
System.debug('mySentence value is : ' + mySentence); 
System.debug(' value is : ' + mySentence.trim()); 
System.debug('mySentence-normalizespace() value is : ' + mySentence.normalizeSpace()); 
System.debug('mySentence-startswith(I) value is : ' + mySentence.startsWith('I')); 
System.debug('mySentence-ends with (dad) value is : ' + mySentence.endsWithIgnoreCase('dad')); 