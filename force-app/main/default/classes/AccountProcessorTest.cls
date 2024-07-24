@isTest
public class AccountProcessorTest {
    @isTest
    public static void countContactsTest(){
        List<Id> testAccounts = new List<Id>();
        
        Account acc1 = new Account(Name = 'Test Account_01');
        Insert acc1;
        testAccounts.add(acc1.Id);
        Contact con1 = new Contact(LastName = 'Test Contact_01', AccountId = acc1.Id);
        Contact con2 = new Contact(LastName = 'Test Contact_02', AccountId = acc1.Id);
        Insert con1;
        Insert con2;
        
        Test.StartTest();
        AccountProcessor.countContacts(testAccounts);
        Test.StopTest();
        
    }

}