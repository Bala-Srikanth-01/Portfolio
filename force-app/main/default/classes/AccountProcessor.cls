public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accts){
        List<Account> getAccounts = [Select Id,Name from Account where Id in: accts];
        List<Account> updatedAccounts = new List<Account>();
        for (Account acc: getAccounts){
            acc.Number_Of_Contacts__c = [Select count() from contact where AccountId =: acc.Id];
            updatedAccounts.add(acc);
        }
        update updatedAccounts;        
    }
}