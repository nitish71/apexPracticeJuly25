Set<String> warmIndustries = new Set<String>{'Healthcare','Finance','Bitechnology'};
        for(Account acc : Trigger.New){
            if(warmIndustries.contains(acc.Industry)){
                acc.Rating = 'Warm';
            }
        }
