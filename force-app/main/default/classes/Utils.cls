// We do not need to write test for all these utility methods 
// that supposed to create some test data 
// so in order to tell salesforce not to take this into consideration 
// while calculating test coverage , we will mark this class as 
// @isTest   // this class does not contain test and will not contain test 
public class Utils {
  /**
   * Create a static method called getContact
   * that accept lastName
   * and return Contact sObject with that lastName
   *
   */
  public static Contact getContact(String lName) {
    Contact c = new Contact(LastName = lName);
    return c;
  }

  /**
   * Create a static method called getContacts
   * that accept lastName as String ,
   * count of contacts as Integer
   * and return List of Contact
   *  with size = the count of contact
   *  with lastName = lastName+1 2 3 4 5
   */
  public static List<Contact> getContacts(String lName, Integer count) {
    List<Contact> cons = new List<Contact>();

    for (Integer i = 1; i <= count; i++) {
      cons.add(new Contact(LastName = lName + ' ' + i));
    }
    return cons;
  }

  /**
     * The Apex class must have a public static method called insertNewAccount
        The method must accept an incoming string as a parameter,
            which will be used to create the Account name
        The method must insert the account into the system
         and then return the record
     * 
     */
  public static Account insertNewAccount(String accName) {
    Account a = new Account(Name = accName);

    try {
      insert a;
      System.debug('everything is great');
      return a;
    } catch (Exception e) {
      System.debug('ERROR OCCURED !!!!');
      return null;
    }
  }

  /**
   * Create a method called getAccountAndContacts
   * It will get accoutName and and contact count as parameters
   * return Account with child contacts created under this account
   * the contact lastName should be : account name contact + 1 2 3 4 5
   * the account and contacts should be inserted into Salesforce
   *
   */
  public static Account getAccountAndContacts(
    String accName,
    Integer contactCount
  ) {
    Account a = new Account(Name = accName);
    insert a;
    //create empty list of contact to store all child contacts to be inserted
    List<Contact> contacts = new List<Contact>();
    // use loop to go through iterations according to contactCount
    for (Integer i = 1; i <= contactCount; i++) {
      // add new contacts to the list
      contacts.add(
        new Contact(LastName = accName + ' contact ' + i, AccountId = a.Id)
      );
    }
    // perform dml outside the loop
    insert contacts;
    System.debug('contacts value is : ' + contacts);

    return a;
  }

  /**
   * Create a method called getLead
   * It expect the lastName and Company
   * and doInsert as boolean for Parameters
   *
   * it create lead with given lastName and company
   * and fill up other fields with default values
   * phone, industry, title , leadSource
   * if doInsert is true it will insert it to salesforce
   * if not it will not insert
   *
   * return the newly created lead
   */
  public static Lead getLead(String lName, String company, Boolean doInsert) {
    Lead l = new Lead(LastName = lName, Company = company);
    l.Phone = '7034560124';
    l.Industry = 'Technology';
    l.Title = 'Salesforce Developer';
    l.LeadSource = 'Web';

    if (doInsert) {
      insert l;
    }

    return l;
  }

  /**
   * Create a method called getLeads
   * It expect the lastName and Company
   * and doInsert as boolean and count as Integer for count of leads
   * for Parameters
   *
   * it create List of Lead with given lastName(1234) and company(1234)
   * and fill up other fields with default values
   * phone, industry, title , leadSource
   * if doInsert is true it will insert it to salesforce
   * if not it will not insert
   *
   * return the newly created leads
   */

  public static List<Lead> getLeads(
    String lName,
    String company,
    Boolean doInsert,
    Integer count
  ) {
    List<Lead> leadLst = new List<Lead>();

    for (Integer i = 1; i <= count; i++) {
      // FALSE BECAUSE WE DO NOT INSERT IN THE LOOP
      Lead myLead = getLead(lName + i, company + i, false);
      leadLst.add(myLead);
    }

    if (doInsert) {
      insert leadLst;
    }
    return LeadLst;
  }


  /**
   * Create a static method called getOneOpportunity
   * Parameters : 
   * @param oppName name of the opportunity
   *  set the value of CloseDate to 7 days from now 
   *  set the StageName to Prospecting 
   *  set the amount to 50000 
   * @param doInsert boolean value to decide insert into salesforce or not
   * @return Opportunity created 
   */
  public static Opportunity getOneOpportunity(String oppName, Boolean doInsert){

      Opportunity opp = new Opportunity(Name=oppName);
      opp.CloseDate = Date.today() + 7 ; 
      opp.StageName = 'Prospecting';
      opp.Amount    = 50000; 

      if(doInsert){
        insert opp ; 
      }

      return opp ; 
  }

    /**
   * Create a static method called getManyOpps
   * Parameters : 
   * @param oppName name of the opportunity 
   *  set the value of CloseDate to 7 days from now 
   *  set the StageName to Prospecting 
   *  set the amount to 50000 
   * @param count count of opportunity need to be created
   * @param doInsert boolean value to decide insert into salesforce or not
   * @return List of Opportunity with name  oppName+123455
   */
  public static List<Opportunity> getManyOpps(String oppName, Integer count, Boolean doInsert){

       List<Opportunity> oppList = new List<Opportunity>(); 
       
       for(Integer i=1; i<=count ;i++) {
          // reusing the method created above 
          // passing false to second paramter 
          // because we SHOULD NOT insert inside the loop
          oppList.add(   getOneOpportunity(oppName+' '+i, false)   ); 
       }
       // check if doInsert is true then insert or do not insert into salesforce
       if(doInsert){
        insert oppList ; 
       }

       return oppList ; 
  }



/**
 * Create a method called insertAccountWithOpps
 * @param accName  accountName
 * @param count   count of child opportunity 
 * @return newly created account with all the opportunity created under
 *    opportunity name should be accountName + Opp 12345 
 *    closedDate 7 days from now 
 *    StageName  Prospecting 
 *    Amount  50000
 */
  public static Account insertAccountWithOpps(String accName, Integer count){

    // creating an account with name accName using existing method 
    // you can do it yourself as well new Account(Name=accName)
    Account newAcc = insertNewAccount(accName); 
    // creating List of Opportunity using existing method
    // we should not insert yet because we need to fillup accountId field 
    List<Opportunity> opps = getManyOpps(accName + ' opp', count, false) ; 
    // loop through each opportunity and set the AccountId field value 
    // so this opportunity will be under the Account above
    for(Opportunity each : opps) {
        each.AccountId = newAcc.Id ; 
    }
    // insert the opportunity list
    insert opps ; 
    // return the account 
    return newAcc ; 
  }


  public static Account insertAccountWithOpps(String accName, Integer count, boolean doInsert){

    // creating an account with name accName using existing method 
    // you can do it yourself as well new Account(Name=accName)
    Account newAcc = insertNewAccount(accName); 

    // creating List of Opportunity using existing method
    // we should not insert yet because we need to fillup accountId field 
    List<Opportunity> opps = getManyOpps(accName + ' opp', count, false) ; 
    // loop through each opportunity and set the AccountId field value 
    // so this opportunity will be under the Account above
    for(Opportunity each : opps) {
        each.AccountId = newAcc.Id ; 
    }
    // insert the opportunity list
    if(doInsert){
      insert opps ;
    } 
    // return the account 
    return newAcc ; 
  }




  /**
   * Create a method that create multiple accounts with give opportunity count 
   * @param accName as account name 
   * @param accCount count of Account record 
   * @param oppsCount count of opportunities under each account 
   * @return List of Account with all the child Opps 
   */

public static List<Account> createAccountsWithOpps(String accName, 
                                                      Integer accCount, 
                                                      Integer oppsCount){
      
        // create empty list to store all accouts in the loop 
        List<Account> accList = new  List<Account>(); 
        // loop according to how many account is needed
        for(Integer i=1; i<=accCount ;i++) {
          // call the insertAccountWithOpps(String accName, Integer count) method
          // to reuse it's functionality and add it to the list 
          Account acc = insertAccountWithOpps(accName+i, oppsCount); 
          accList.add(acc) ; 
        }

        return accList ; 

   }



    public static List<Account> createAccountsWithOpps(Integer numAccts, Integer numOppsPerAcct) {
        List<Account> accts = new List<Account>();
        for(Integer i=0;i<numAccts;i++) {
            Account a = new Account(Name='TestAccount' + i);
            accts.add(a);
        }
        insert accts;
        List<Opportunity> opps = new List<Opportunity>();
        for (Integer j=0;j<numAccts;j++) {
            Account acct = accts[j];
            // For each account just inserted, add opportunities
            for (Integer k=0;k<numOppsPerAcct;k++) {
                opps.add(new Opportunity(Name=acct.Name + ' Opportunity ' + k,
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=acct.Id));
            }
        }
        // Insert all opportunities for all accounts.
        insert opps;
        return accts;
    }

   /**
    * A method that return List of account with Contacts under 
    * @param numAccts 
    * @param numContactsPerAcct 
    * @return  `List<Account>`
    */
   
    public static List<Account> createAccountsWithContacts(Integer numAccts, Integer numContactsPerAcct) {
        List<Account> accts = new List<Account>();
        for(Integer i=0;i<numAccts;i++) {
            Account a = new Account(Name='Cool Account' + (i+1) );
            accts.add(a);
        }
        insert accts;

        List<Contact> contacts = new List<Contact>();
        for (Integer j=0;j<numAccts;j++) {
            Account acct = accts[j];
            // For each account just inserted, add Contacts
            for (Integer k=0;k<numContactsPerAcct;k++) {
                contacts.add(new Contact(AccountId = acct.Id , LastName= acct.Name + ' Contact '+ (k+1)) );
            }
        }
        // Insert all opportunities for all accounts.
        insert contacts;
        return accts;
    }


















}


