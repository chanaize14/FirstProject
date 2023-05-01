Map<Integer, String> numberName = new Map<Integer, String>{1 => 'Josh', 2 => 'Ben'};
numberName.put(3, 'Mary');

System.debug(numberName);

System.debug(numberName.keySet());          // retrieves all the keys (unique-Set)

System.debug(numberName.values());          // retrieves all the values (can be duplicate-List)

System.debug(numberName.get(1) + ' is the value of key 1');            // retrieves the value of key 1
