//List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true); 
//System.debug('myOpps.size()  value is : ' + myOpps.size() );
//delete [Select Id From Lead WHERE CreatedDate = TODAY] ; 

OverdueOppProcessor ovp = new OverdueOppProcessor(); 
Database.executeBatch(ovp, 150);  // 500/150  150-150-150-50





git config --global user.name "Your Own Name"

git config --global user.email "yourOwn@email.com"



