public class apexq4{

Map <Contact,Account> mymap;
 
 public apexq4(){
    
     
     mymap =new Map<Contact,Account >();
     
    
 }
 public void ctacnt(Map<string,string> mapcontactaccount){
    
         //mapcontactaccount=new map<String,String>();
         list<string> mylist= mapcontactaccount.values();
         List<Account> accList = [Select id, Name from Account where name in :mylist ];
         
        
         
        
         
          
         
         
             
         
 // mapcontactaccount=new map<Contact,AccountPartner>();
   //   Map<Contact,AccountPartner> mapcontactaccount   
    
// system.debug('2        '+mymap);

}
}