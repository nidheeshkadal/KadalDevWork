public class newsview {
    
    public String decription{get;set;}
    public String subject{get;set;}
    public list<NewsMaker__c> newslist{get;set;}
    public String jsonNews{get;set;}
    
    
    public newsview(){
        newslist=[SELECT Description__c,name,Photo__c FROM NewsMaker__c ORDER BY CreatedDate DESC  LIMIT 1];
        
        for(NewsMaker__c newsobj :newslist){
            
            decription=newsobj.Description__c;
            subject=newsobj.Photo__c;
        }
        
        
    }

}