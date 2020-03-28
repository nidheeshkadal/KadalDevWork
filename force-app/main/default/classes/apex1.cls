public class apex1{

   public Integer x{get;set;}
   public string y{get;set;}
   public string z{get;set;}
    public string pan;

    String convertedChar;
    public PageReference gogoogle(){
        
    
    PageReference pageRef = new PageReference('http://www.google.co.in/Search');
    pageRef.getparameters().put('q',z);
    return pageRef;

}
public apex1(){
    y=ApexPages.currentPage().getParameters().get('hemanth');
}
   /* public apex1(){
        convertedChar='';
    pan='malayalam';
    string[] chars=pan.split('');
    system.debug('1----'+chars);
    chars.remove(0);
    system.debug('2----'+chars);
    Integer len=pan.length();
        list<string> chars1 = new string[len];
        integer j =0;
    for(integer i=len-1;i>=0;i--){
        
            
        
        chars1[j]=chars[i];
         j++;
        
    
    }
        for(integer k=0;k<chars1.size();k++){
            convertedChar +=chars1[k];
        }
        system.debug(convertedChar);
    }*/
public void calculator(){
    
}


}