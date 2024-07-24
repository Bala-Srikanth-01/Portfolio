public class AccountHandler {
    public static void insertAccount (Integer numAcc){
        List<Account> addAccounts = new List<Account>();
        for(Integer i = 1; i <= numAcc; i++){
            Account newAcc = new Account();
            newAcc.Name = 'Acme Inc '+ i;
            newAcc.AccountNumber = 'A000n';
            addAccounts.add(newAcc);
        }
        insert addAccounts;
    }
    public static Account insertNewAccount(String s) {
        Account acct = new Account(Name = s);
        try {
            insert acct;
            ID acctID = acct.ID;
            System.debug('new record ID is: ' + acctID);
            return acct;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        } 
        
    }
}