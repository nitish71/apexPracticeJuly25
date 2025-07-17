//Trigger to add account on the contact if its not there.

trigger addAccountToContact on Contact (before insert) {
    
    List<Account> accList = New List<Account>();
    
    if((Trigger.isAfter) && (Trigger.isInsert)){
        
        for(Contact con : Trigger.New){
            if(con.AccountID == NULL){
                Account acc = new Account();
                
                acc.Name = con.LastName;
                acc.Phone = con.Phone;
                
                
                accList.add(acc);
            }
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        
        
    }

}
