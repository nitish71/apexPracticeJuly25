//Trigger to throw error if email or phone is empty.

trigger errorForPhoneEmailEx3 on Contact (before insert, before update) {
    
    if((Trigger.isBefore) && (Trigger.isInsert) || (Trigger.isUpdate)){
        
        for(Contact con : Trigger.new){
            if(con.Phone == NULL || con.Phone ==  ' '){
                
                con.Phone.addError('Phone  can not be empty.');
            }
            if(con.Email == NULL || con.Email == ' '){
                
                con.Email.addError('Email can not be empty.');
            }
        }
    }
    

}
