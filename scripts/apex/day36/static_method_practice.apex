/*List<Integer> numberList = new List<Integer>{65,80,83,149,48};

Integer highNum = Helper.getHighestNumber(numberList);
System.debug('highNum value is : ' + highNum);  //83

List<Integer> numberList2 = new List<Integer>{10,17,66,23,78};

System.debug(numberList2 + ' Highest value is : ' 
                         + Helper.getHighestNumber(numberList2));



System.debug(numberList + ' Sum is : ' 
                         + Helper.getTotal(numberList) );
System.debug(numberList2 + ' Sum is : ' 
                         + Helper.getTotal(numberList2) );



System.debug(numberList + ' Average is : ' 
                         + Helper.getAverage(numberList) );
System.debug(numberList2 + ' Average is : ' 
                         + Helper.getAverage(numberList2) );
                        */
 /*List<String> names = new List<String>{'Suat','Esra','Tamara','Yagut','Dzhamilia', 'Neslihan'};

List<String> filteredlist = new List<String>();
for(String each : names){
    if(each.length()>5){
        filteredlist.add(each);
    }
}
System.debug('filteredList value is : ' + filteredList);*/
List<String> names 
    = new List<String>{'Suat','Esra','Tamara','Yagut','Dzhamilya','Neslihan'};



System.debug('filteredList value is : ' + Helper.getLongerNames(names)   );