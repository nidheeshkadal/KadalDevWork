public class CTMS_GantWrapper {
    
    //public Task__c parentTask{get;set;}
    //public Task__c childTask{get;set;}
    //public Project__c project{get;set;}
    //public Milestone__c milestone{get;set;}
    public String taskJson{get;set;}
    public CTMS_GantWrapper()
    {
      List<Tasks> taskList = new List<Tasks>();
      for(Integer i=1;i<=4;i++)
      {
          Tasks taskObj = new Tasks();
          taskObj.taskID='111'+i;
          taskObj.name='task'+i;
          taskObj.status='STATUS_ACTIVE';
          Datetime now =DateTime.now();
          Datetime enddate= Datetime.now().addDays(1);
          taskObj.start=String.valueOf(now.getTime());
          taskObj.duration=String.valueOf((enddate.getTime()-now.getTime()));
          taskObj.taskEnd=String.valueOf(enddate.getTime());
          Assignment assign = new Assignment();
          assign.resourceId='1234'+i;
          assign.timesheetID='11'+i;
          assign.effort='60';
          List<Assignment> assignList= new List<Assignment>();
          assignList.add(assign);
          taskObj.assigs=assignList;
          taskObj.level= String.valueOf(i);
          taskList.add(taskObj);
          
      }
      taskWrapper twrap  = new taskWrapper();
      twrap.tasks= taskList;
       taskJson = Json.serialize(twrap) ; 
    }
    
    Public class taskWrapper
    {
        public List<Tasks> tasks{get;set;}
    }
    
    
    public class Tasks{
        // project level 1
        // Milestone level 2
        //parent task level 3
        //child task level 4
       public string taskID{get;set;}
       public string name{get;set;}
       public string level{get;set;}
       public string status{get;set;}
       public string start{get;set;}
       public string duration{get;set;}
       public string taskEnd{get;set;}
       public string startIsMilestone{get;set;}
       public string endIsMilestone{get;set;}
       public Assignment[] assigs{get;set;}
       public string depends{get;set;}
       public string description{get;set;}
       public string progress{get;set;}
       
        public  Tasks()
        {
            
        }
        
        
    }
    
     public class Assignment{
        //get all timesheets under the particular tasks
       public string resourceId{get;set;}
       public string timesheetID{get;set;}
       public string effort{get;set;}
      
       
        public  Assignment()
        {
            
        }
        
        
    }
    
    
    
     public class Resources{
        //all users under the project. get  from timesheet in tasks
       public string resourceId{get;set;}
       public string resourceName{get;set;}
       
      
       
        public  Resources()
        {
            
        }
        
        
    }
   


}