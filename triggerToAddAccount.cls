//Trigger to add Account on Contact

trigger triggerToAddAccount on Contact (before insert, before update) {
    
    if((Trigger.isUpdate || Trigger.isInsert) && (Trigger.isBefore)){
        
        for(Contact con : Trigger.New){
            if(con.AccountID == NULL){
                con.addError('Please associate this Contact with an Account');
                
            }
        }
    }
    
}
