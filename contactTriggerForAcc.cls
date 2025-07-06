//Write a trigger to create an Account when Contact is inserted witgout any Account.

trigger ContactTriggerEx2 on Contact (after insert) {
    if(Trigger.isAfter && Trigger.isInsert){
        List<Account> accList = new List<Account>();
        for(Contact con : Trigger.new){
            if(con.AccountId == null){
                Account acc = new Account();
                acc.name = con.LastName;
                acc.Phone = con.Phone;
                accList.add(acc);
            }
        }
        insert accList;
    }
}
