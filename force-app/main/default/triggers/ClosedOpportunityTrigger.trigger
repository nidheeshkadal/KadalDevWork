trigger ClosedOpportunityTrigger on Opportunity (after insert,before update) {
      List<Opportunity> myopp=new List<Opportunity>();
    for(Opportunity opt:trigger.new){
        if(trigger.isInsert){
            
        
        if(opt.StageName=='Closed Won'){
            
            myopp.add(opt);
        }
         
        }
}
 List<Task> taskList = new List<Task>();
for(Opportunity opt :myopp) {

    Task t        = new Task();
    t.WhatId      = opt.Id;
    t.Subject     = 'Follow up test task';
    t.Priority    = 'Normal';
    t.Status      = 'Not Started';
    taskList.add(t);
}

insert taskList;

}