public with sharing class createNewAccount {
    public void createAccount() {
        Account newAccount = new Account();
        newAccount.Name = 'Test Account -1';
        
        try{
            insert newAccount;
            System.debug('Account Created');
        }
        catch (Exception e){
            System.debug('Error'+ e.getMessage());
        }
    }
    @AuraEnabled
    public static void createAccountImperative(String Name, String Description){
        system.debug('Name and des'+Name+Description);
        Account na = new Account();
        na.Name = Name;
        na.Description = Description;
        try {
            insert na;
            System.debug('Account Created' + na.Id + na.Name);   
        } catch (Exception e) {
            System.debug('Error ->'+ e.getMessage());
        }
    }
    
}