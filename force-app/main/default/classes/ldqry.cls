public class ldqry {
   
  public list<Lead>newlist{get;set;}
  public string jsondata{get;set;}
  public void que1()
  {
       newlist= [SELECT Name, AnnualRevenue FROM Lead];
       
  }
  
  
    
}