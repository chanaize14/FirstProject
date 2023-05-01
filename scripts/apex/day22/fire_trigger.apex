// Create a new Book instance with fields 
Book__c b = new Book__c(Name='Apex Book' );
// insert as Salesforce record
insert b ; 

b.Name = 'Awesome new book for lunch!!' ; 
update b ; 