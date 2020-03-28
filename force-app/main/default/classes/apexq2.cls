public class apexq2{
 public Map<string,list<string>> mymap;
    list<Junction__c> l1;
    list<string> l2=new list<string>();
    list<string> l3=new list<string>();
    public apexq2(){
            
         l1=[SELECT position_candidateassociation__r.Name, position_candidate_association__r.First_Name__c FROM Junction__c];
    
         mymap = new Map<string,list<string>>();
    
        
    
        for (Junction__c J :l1)
        {
           if(mymap.containsKey(J.position_candidateassociation__r.Name)) {
               l2=new list<string>();
            l2.addAll(mymap.get(J.position_candidateassociation__r.Name));
            l2.add(j.position_candidate_association__r.First_Name__c);
           mymap.put(J.position_candidateassociation__r.Name,  l2);
           }
           else{
              
           mymap.put(J.position_candidateassociation__r.Name,new List<String>{j.position_candidate_association__r.First_Name__c});
           
     
            }   
     }
    }
 public list<String> checkvalue(string name1){
    
    
        if(mymap.containsKey(name1)){
            return mymap.get(name1);
        }
        else{
            return null;
        }

}
}