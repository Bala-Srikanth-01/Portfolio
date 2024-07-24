public class StringArrayTest {
    Public static List<String> generateStringArray (Integer num){
        List <String> newList = new List<String>();
        for(Integer i = 0; i<num ; i++){
            String lstElem = 'Test '+i;
            newList.add(lstElem);
        }
        return newList;
    }

}