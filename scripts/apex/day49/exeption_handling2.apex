List<Integer> numberList = new List<Integer>{ 37, 43, 22, 76, 32 };
try {
  System.debug('numberList[1]value is :' + numberList[1]);
  //System.debug('numberList[5]value is :' + numberList[5]);
} catch (ListException e) { // e= new ListExeption();
  //if the exeption occere,just print last item in the list
  System.debug('INDEX OUT OF BOUND!!!!! RETURNING LAST ITEM');
  System.debug(
    'numberList[numberList.size-1]' + numberList[numberList.size() - 1]
  );
}
System.debug('Ending the code');