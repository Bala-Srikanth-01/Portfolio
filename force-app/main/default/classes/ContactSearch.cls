public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String pCode){
        
        //use syntax to give refrence of paramameter name ex. :para_name
       return [SELECT Id, Name, LastName, MailingPostalCode
                                     FROM Contact
                                     WHERE LastName =:lName AND MailingPostalCode = :pCode];
    }

}