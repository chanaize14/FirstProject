//List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true); 
//System.debug('myOpps.size()  value is : ' + myOpps.size() );
//delete [Select Id From Lead WHERE CreatedDate = TODAY] ; 

//OverdueOppProcessor ovp = new OverdueOppProcessor(); 
//Database.executeBatch(ovp, 150);  // 500/150  150-150-150-50





OverDueOppProcessor ovp = new OverDueOppProcessor();
Database.executeBatch(ovp, 100);


