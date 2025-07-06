//Trigger to not delete active accounts.

trigger triggerToNotDeleteAccount on Account (before delete) {
    
    if(Trigger.isBefore && Trigger.isDelete){
        
        for(Account acc : Trigger.New){
            
            if(acc.Active__c == 'Yes'){
                acc.addError('You can not delete an active Account');
            }
        }
    }
    
}
