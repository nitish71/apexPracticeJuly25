Set<String> notHotIndustries  = new Set<String> {'Insurence','Retail','Shipping'};
        for(Account acc : Trigger.New){
            if(notHotIndustries.contains(acc.Industry)){
                acc.Rating = 'Cold';
            }
        }
