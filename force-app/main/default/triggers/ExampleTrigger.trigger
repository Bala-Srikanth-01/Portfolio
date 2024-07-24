trigger ExampleTrigger on Contact (after insert, after delete) {
    Integer recordCount = Trigger.new.size();
    if (Trigger.isInsert) {
        
        // Call a utility method from another class
        EmailManager.sendMail('balasrikanth01@gmail.com', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were inserted.');
    }
    else if (Trigger.isDelete) {
        // Process after delete
        EmailManager.sendMail('balasrikanth01@gmail.com', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were deleted.');
    }
}