public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String lName){
        List<list<sObject>> sList = [FIND :lName IN NAME FIELDS 
                   RETURNING Contact(Name),Lead(FirstName)];
        System.debug(sList);
       return sList;
    }

}