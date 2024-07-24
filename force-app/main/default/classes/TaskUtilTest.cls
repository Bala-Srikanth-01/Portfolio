@istest
private class TaskUtilTest {
    @istest
    static void testTaskPriority() {
        String pri = TaskUtil.getTaskPriority('CA');
        System.assertequals('High',pri);
        String pri2 = TaskUtil.getTaskPriority('NY');
        System.assertequals('Normal',pri2);
        String pri3 = TaskUtil.getTaskPriority('');
    }

}