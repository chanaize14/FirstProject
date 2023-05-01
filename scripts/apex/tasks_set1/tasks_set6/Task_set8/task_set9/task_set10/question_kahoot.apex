//question 1:
String myString1 = 'The quick brown fox jumps over the lazy dog';

String[] myWords = myString1.split(' ');
System.debug(myWords[3].toUpperCase());


//Question 2:
String myString = 'The quick brown fox jumps over the lazy dog';
Boolean containsFox = myString.contains('fox');
System.debug(containsFox);

//Question 3:
String str1 = 'The quick brown fox jumps over the lazy dog';
str1 = str1.replaceAll('the', 'a');
System.debug(str1.substring(10, 15));

//Question 4:
List<Integer> numList = new List<Integer>{1, 2, 3, 4, 5};
numList.remove(1);
numList.add(1);
System.debug(numList);

//Question 5:
String str2 = 'hello world';
String newStr = str2.replace('o', 'e').toUpperCase();
System.debug(newStr);

//Question 6:
String s = 'Welcome to Cydeo!';


//Question 7:
String str = 'The quick brown fox jumps over the lazy dog';
str = str.substring(4, 19).toUpperCase().replace('QUICK', 'slow');
System.debug(str);

//Question 8:
List<String> fruits = new List<String>{'apple', 'banana', 'cherry', 'date'};
String lastFruit = fruits[fruits.size() - 1];
String reversedLastFruit = lastFruit.reverse();

System.debug(reversedLastFruit);


//Question 9:
List<String> words = new List<String>{'Hello', 'world', 'how', 'are', 'you'};

String joinedWords = String.join(words, ' ');
String[] splitWords = joinedWords.split('o');

System.debug(splitWords.size());

//Question 10:
Account a = new Account();
a.Name = 'Acme Corp';
a.Industry = 'Technology';
a.Phone = '555-1234';
insert a;

System.debug('New account ID: ' + a.Id);