Set<String> hotIndustries = new Set<String>{'Media','Technology','Manufacturing'};
        for(Account acc : Trigger.New){
            if(hotIndustries.contains(acc.Industry)){
                acc.Rating = 'Hot';
            }
            
        }
