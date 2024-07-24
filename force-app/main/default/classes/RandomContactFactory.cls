public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer count, String lastName){
        //lastName = 'Contact';
        List<Contact> cons = new List<Contact>();
        for (Integer i = 0; i<count; i++){
            Contact con = new Contact(FirstName='Test' + i, LastName = lastName);
            cons.add(con);
        }
        //Database.Saveresult result = Database.insert(cons,false);
        insert cons;
        return cons;
    }

}