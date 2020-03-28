public class D3pieChartController {
    
    Public children root{set;get;}
   
     Public String root1{set;get;}
    public D3pieChartController(){
        
        List<Lead> LdList = [Select id, name, annualrevenue from Lead Limit 1000];
        List<Children> Ch = new List<Children>();
       
        root = new children('Total',1, 1);
        for(Lead ld: Ldlist){
            if(ld.AnnualRevenue<100000){
                 Ch.add(new children(ld.Name, 1,1));
            }   
                
            else if (ld.AnnualRevenue<200000) {
                Ch.add(new children(ld.Name, 1,1));
            }
            else if (ld.AnnualRevenue<300000) {
                Ch.add(new children(ld.Name, 1,1));
            }
            else if (ld.AnnualRevenue<400000) {
                Ch.add(new children(ld.Name, 1,1));
            }
            
            else if (ld.AnnualRevenue<500000) {
                Ch.add(new children(ld.Name, 1,1));
            }
             
            else {
                Ch.add(new children(ld.Name, 1,1));
            }
            
            /*root.children.add(new Children('Other',Ch6.size(),Ch6.size(),Ch6));
            root.children.add(new Children('Other',Ch5.size(),Ch5.size(),Ch5));
            root.children.add(new Children('Other',Ch4.size(),Ch4.size(),Ch4));
            root.children.add(new Children('Other',Ch3.size(),Ch3.size(),Ch3));
            root.children.add(new Children('Other',Ch2.size(),Ch2.size(),Ch2));
            root.children.add(new Children('Other',Ch1.size(),Ch1.size(),Ch1));*/
            
          
        }
        
        
          root.children.add(new Children('Other',Ch.size(),Ch.size(),Ch));
            root.children.add(new Children('<500000',Ch.size(),Ch.size(),Ch));
            root.children.add(new Children('<400000',Ch.size(),Ch.size(),Ch));
            root.children.add(new Children('<300000',Ch.size(),Ch.size(),Ch));
            root.children.add(new Children('<200000',Ch.size(),Ch.size(),Ch));
            root.children.add(new Children('<100000',Ch.size(),Ch.size(),Ch));
            
           
        root1 = JSON.serialize(root);
       // root1 = root1.replace(',"children":[]','');-->
        system.debug(root);
    }
    public class children{
        Public string name{get;set;}
        Public Integer size{get;set;}
        Public Integer sign{get;set;}
        public List<children> children{get;set;}
         
        
        public children(String name, integer size, integer sign){
            this.name = name;
            this.size = size;
            this.sign=sign;
            this.children = new List<Children>();
            
            
             
        }
        
        
      public children(String name, integer size, integer sign, List<Children> childrenList){
            this.name = name;
            this.size = size;
            this.sign=sign;
            this.children = childrenList;
            
            
             
        }
    }
    
    
}