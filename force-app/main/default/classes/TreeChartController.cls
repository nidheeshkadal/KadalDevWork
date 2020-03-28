public class TreeChartController {
    
    Public children root{set;get;}
   
     Public String root1{set;get;}
    public TreeChartController(){
        
        List<Lead> LdList = [Select id, name, annualrevenue from Lead Limit 1000];
        List<Children> Ch0 = new List<Children>();
        List<Children> Ch1 = new List<Children>();
        List<Children> Ch2 = new List<Children>(); 
        List<Children> Ch3 = new List<Children>();
        List<Children> Ch4 = new List<Children>();
        List<Children> Ch5 = new List<Children>();
        root = new children('Total',LdList.size(), 1);
        for(Lead ld: Ldlist){
            if(ld.AnnualRevenue<100000){
                 Ch0.add(new children(ld.Name, 1,1));
            }   
                
            else if (ld.AnnualRevenue<200000) {
                Ch1.add(new children(ld.Name, 1,1));
            }
            else if (ld.AnnualRevenue<300000) {
                Ch2.add(new children(ld.Name, 1,1));
            }
            else if (ld.AnnualRevenue<400000) {
                Ch3.add(new children(ld.Name, 1,1));
            }
            
            else if (ld.AnnualRevenue<500000) {
                Ch4.add(new children(ld.Name, 1,1));
            }
             
            else {
                Ch5.add(new children(ld.Name, 1,1));
            }
            
            /*root.children.add(new Children('Other',Ch6.value(),Ch6.value(),Ch6));
            root.children.add(new Children('Other',Ch5.value(),Ch5.value(),Ch5));
            root.children.add(new Children('Other',Ch4.value(),Ch4.value(),Ch4));
            root.children.add(new Children('Other',Ch3.value(),Ch3.value(),Ch3));
            root.children.add(new Children('Other',Ch2.value(),Ch2.value(),Ch2));
            root.children.add(new Children('Other',Ch1.value(),Ch1.value(),Ch1));*/
            
          
        }
        
        
          root.children.add(new Children('Other',Ch0.size(),Ch0.size(),Ch0));
            root.children.add(new Children('<500000',Ch1.size(),Ch1.size(),Ch1));
            root.children.add(new Children('<400000',Ch2.size(),Ch2.size(),Ch2));
            root.children.add(new Children('<300000',Ch3.size(),Ch3.size(),Ch3));
            root.children.add(new Children('<200000',Ch4.size(),Ch4.size(),Ch4));
            root.children.add(new Children('<100000',Ch5.size(),Ch5.size(),Ch5));
            
           
        root1 = JSON.serialize(root);
       // root1 = root1.replace(',"children":[]','');-->
        system.debug(root);
    }
    public class children{
        Public string name{get;set;}
        Public Integer value{get;set;}
        Public Double rate{get;set;}
        public List<children> children{get;set;}
         
        
        public children(String name, integer value, Double rate){
            this.name = name;
            this.value = value;
            this.rate=rate;
            this.children = new List<Children>();
            
            
             
        }
        
        
      public children(String name, integer value, Double rate, List<Children> childrenList){
            this.name = name;
            this.value = value;
            this.rate=rate;
            this.children = childrenList;
            
            
             
        }
    }
    
    
}