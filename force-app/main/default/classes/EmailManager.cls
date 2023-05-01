public class EmailManager {
    // Public method
    public static void sendMail(String address, String subject, String body) {
        // Create an email message object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        // Pass this email message to the built-in sendEmail method 
        // of the Messaging class
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                 new Messaging.SingleEmailMessage[] { mail });
        // Call a helper method to inspect the returned results
        inspectResults(results);
    }
    // Helper method
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
        Boolean sendResult = true;
        // sendEmail returns an array of result objects.
        // Iterate through the list to inspect results. 
        // In this class, the methods send only one email, 
        // so we should have only one result.
        for (Messaging.SendEmailResult res : results) {
            if (res.isSuccess()) {
                System.debug('Email sent successfully');
            }
            else {
                sendResult = false;
                System.debug('The following errors occurred: ' + res.getErrors());                 
            }
        }
        return sendResult;
    }
/**
Create a method called getAccountAndContacts
It will get accountName and contact count as parameters
return Account with child contatcs created under this account
the contact lastName should be : account name contact + 1 2 3 4 5
 */


   public static Account getAccountAndContacts(String accName, Integer contactCount){

     Account a = new Account(Name = accName);
     insert a ; 
     //create empty list of contact to store all child contacts to be inserted 
     List<Contact> contacts = new List<Contact>(); 
     // use loop to go through iterations according to contactCount
      for(Integer i=1; i<= contactCount ;i++) {
        // add new contacts to the list 
        contacts.add(  new Contact(LastName = accName+' contact '+i , AccountId = a.Id )  ) ; 
        
      }
      // perform dml outside the loop 
      insert contacts ; 
    
      return a ; 
  }










}