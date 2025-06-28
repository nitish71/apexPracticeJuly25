public class July2025 {
    
    public static void queryAccounts(){
        
        List <Account> accList = new List<Account>(); 
        accList = [select ID, name FROM Account LIMIT 5];
        
        Set<ID> accID = new Set<ID>();
        for(Account acc : accList){
            accID.add(acc.ID);
            
            system.debug('Account set contains '+ accID);
        }
    }

}
