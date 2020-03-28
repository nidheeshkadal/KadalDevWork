public class apex2{
    public Map<string, string> mymap;
    list<Junction__c> l1;
    public apex2(){
            
         l1=[SELECT position_candidateassociation__r.Name, position_candidate_association__r.First_Name__c FROM Junction__c];
         mymap = new Map<string, string>();
        for (Junction__c J :l1)
        {
           if(mymap.containsKey(J.position_candidate_association__r.First_Name__c)) {
            string str=mymap.get(J.position_candidate_association__r.First_Name__c);
           
           mymap.put(J.position_candidate_association__r.First_Name__c,  str+ ','+J.position_candidateassociation__r.Name);
           }
           else{
           mymap.put(J.position_candidate_association__r.First_Name__c, J.position_candidateassociation__r.Name);
           
           }   
        }
    }
    public string checkvalue(string name1){
    
    
        if(mymap.containsKey(name1)){
            return mymap.get(name1);
        }
        else{
            return 'Resource didn\'t apply for a position';
        }

    }
}