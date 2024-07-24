@istest
private class TestVerifyDate {
    @istest
    static void checkDatesTest(){
        Date testDate1 = date.newInstance(2024, 01, 12);
        Date testDate2 = date.newInstance(2024, 01, 24);
        Date resultDate = VerifyDate.CheckDates(testDate1, testDate2);
        System.assertequals(resultdate , testDate2);
        Date testDate3 = date.newInstance(2025, 01, 24);
        Date testDate4 = date.newInstance(2024, 01, 31);
        Date resultDate2 = VerifyDate.CheckDates(testDate1, testDate3);
        System.assertEquals(resultDate2, testDate4);
    }
}