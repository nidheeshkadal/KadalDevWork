public class apexq3{

set<String > myset;
public apexq3(){
    
    
    set<Candidate__c> myset = new set<Candidate__c>([SELECT email__c,gender__c,mobile__c FROM Candidate__c]);
   // List<Candidate__c> mylist = new List<Candidate__c>([SELECT email__c,gender__c,mobile__c FROM Candidate__c])
  //  for(integer i=0;i<mylist.size();i++){
   //     myset.add(mylist[i]);
//}
   list<Candidate__c>mylist=new list<Candidate__c>([SELECT email__c,gender__c,mobile__c FROM Candidate__c]) ;
   
    
    
    
    System.debug('2,,,,,,,'+myset.size());

}

}