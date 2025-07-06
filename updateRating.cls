trigger AccountTrigeerEx1 on Account (before insert, before update) {
    if(Trigger.isBefore && ((Trigger.isUpdate) || (Trigger.isInsert))){
        for(Account acc : Trigger.new){
            if(acc.Industry == 'Finance' || acc.Industry == 'Healthcare'){
                acc.Rating = 'Hot';
            }
            
        }
    }
}

