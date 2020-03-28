public class vftable{
public list<Account> acclist{get;set;}
public vftable(){
 acclist=[SELECT Id,Name FROM Account]; 
 
 
}
}