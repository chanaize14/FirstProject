Map<Integer, String> oldMap = new Map<Integer, String> {
                                         100=> 'Op1' ,    
                                         200=> 'Op2' ,    
                                         300=> 'Op3'    
                                        } ; 

Map<Integer, String> newMap = new Map<Integer, String> {
                                         100=> 'Op1-Updated' ,    
                                         200=> 'Op2-Updated' ,
                                         300=> 'Op3-Updated' 
                                        } ; 

// get new value and old value of item with id of 100 together 

System.debug('new value of key 100 ' +  newMap.get(100)  );
System.debug('old value of key 100 ' +  oldMap.get(100)  );
System.debug('new value of key 200 ' +  newMap.get(200)  );
System.debug('old value of key 200 ' +  oldMap.get(200)  );
System.debug('new value of key 300 ' +  newMap.get(300)  );
System.debug('old value of key 400 ' +  oldMap.get(300)  );