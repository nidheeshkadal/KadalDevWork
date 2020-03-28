public class apex3{
 public Map<integer,string> mymap;
 public list<Candidate__c> mylist;
public apex3(){
    mylist=[SELECT First_Name__c FROM Candidate__c];
        mymap =new Map<integer,string>();

   
    for(integer i=0;i<mylist.size();i++){
        mymap.put(i,mylist[i].First_Name__c);
        }

    }
    
    public string checkvalue(Integer k){

      if(mymap.containsKey(k)){
            return mymap.get(k);
        }
        else{
            return 'Resource didn\'t apply for a position';
        }

    }
    
}