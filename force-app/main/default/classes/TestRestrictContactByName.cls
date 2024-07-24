@istest
private class TestRestrictContactByName {
    @istest
    static void testContactTrigger(){
        Contact con = new Contact();
        con.LastName = 'INVALIDNAME';
        //Insert con;
        Test.startTest();
        Database.Saveresult result = Database.Insert(con, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML' , result.getErrors()[0].getMessage());
    }
}