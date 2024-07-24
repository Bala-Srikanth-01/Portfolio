trigger AccountAddressTrigger on Account (before insert,before update) {
    /* for (Account acc : Trigger.New){
        if(trigger.isBefore && trigger.isInsert){
            if(acc.Description == null){
                acc.Description = 'Description for this account inserted based on the trigger written';
                System.debug('The account is inserted with description');
            }
        }
    }
    for (Account acc : Trigger.New){
        if(trigger.isBefore && trigger.isUpdate){
            if(acc.Description == null){
                acc.Description = 'Description for this account updated based on the trigger written';
                System.debug('The account is updated');
            }
        }
    } */
    
    for(Account acc : Trigger.new){
        if(acc.Match_Billing_Address__c == true){
            acc.BillingPostalCode = acc.ShippingPostalCode;
            System.debug('Trigger called : '+acc.BillingPostalCode);
        }
    }
}