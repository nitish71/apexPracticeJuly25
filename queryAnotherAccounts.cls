public static void queryAnotherAccounts(){
        List <Account> accList = new List<Account>();
        accList = [Select ID, Name FROM Account LIMIT 5];
        
        Map<ID, Account> accMap = new Map<ID,Account>();
        for(Account acc : accList){
            accMap.put(acc.Id, acc);
            System.debug('Account Map contains '+accMap.Keyset());
            System.debug('Account map contains '+ accMap.Values());
        }
        
    }
