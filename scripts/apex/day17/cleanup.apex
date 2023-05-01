// Clean up all the Opportunity Records created Today

delete [SELECT Id from Opportunity Where CreatedDate = TODAY] ; 