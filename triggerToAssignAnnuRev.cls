//create a trigger to assign anuual revenue based on industry.

trigger triggerToAssignAnnuRev on Account (before insert, before Update) {
    
    if(((Trigger.isBefore) && (Trigger.isUpdate)) || (Trigger.isInsert)){
        
        for(Account acc : Trigger.new){
            if(acc.Industry == 'Finance'){
                acc.AnnualRevenue = 50000000;
            }
            if(acc.Industry == 'Manufacturing'){
                acc.AnnualRevenue = 40000000;
            }
            if(acc.Industry == 'Media'){
                acc.AnnualRevenue = 30000000;
            }
            if(acc.Industry == 'Entertainmennt'){
                acc.AnnualRevenue = 25000000;
            }
            
        }
    }
    
    
}
