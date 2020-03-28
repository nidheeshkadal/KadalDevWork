public class D3piecharter {
    
    Public children root{set;get;}
   
     Public String root1{set;get;}
    public D3piecharter(){
        
        
        List<Lead> LdList = [Select id, name, annualrevenue from Lead Limit 1000];
        Map<Integer,List<children>> mymap=new Map<Integer,List<children>>();
        Map<integer,Children> Mynewmap = new map<integer,Children>();
        root = new children('Total',1, 1);
         List<children> Ch1=new List<children>();
         List<children> Ch2=new List<children>();
         List<children> Ch3=new List<children>();
         List<children> Ch4=new List<children>();
         List<children> Ch5=new List<children>();
         List<children> Ch6=new List<children>();
        
        for(Lead ld: Ldlist){
            
            if(ld.AnnualRevenue<100000){
                Ch1.add(new children(ld.name,1,1));
                 mymap.put(100000,Ch1);
                 
            }   
             else if(ld.AnnualRevenue<200000){
                 Ch2.add(new children(ld.name,1,1));
                 mymap.put(200000,Ch2);
           }  
           else if(ld.AnnualRevenue<300000){
              Ch3.add(new children(ld.name,1,1));
                 mymap.put(300000,Ch3);
           }
           else if(ld.AnnualRevenue<400000){
               Ch4.add(new children(ld.name,1,1));
                 mymap.put(400000,Ch4);
           }
              else if(ld.AnnualRevenue<500000){
              Ch5.add(new children(ld.name,1,1));
                 mymap.put(500000,Ch5);
           }
              else {
               Ch6.add(new children(ld.name,1,1));
                 mymap.put(600000,Ch6);
           }
            
            /*root.children.add(new Children('Other',Ch6.size(),Ch6.size(),Ch6));
            ro;ot.children.add(new Children('Other',Ch5.size(),Ch5.size(),Ch5));
            root.children.add(new Children('Other',Ch4.size(),Ch4.size(),Ch4));
            root.children.add(new Children('Other',Ch3.size(),Ch3.size(),Ch3));
            root.children.add(new Children('Other',Ch2.size(),Ch2.size(),Ch2));
            root.children.add(new Children('Other',Ch1.size(),Ch1.size(),Ch1));*/
            
          
        }
        
         for(Integer idd: mymap.keyset()){
             
               Mynewmap.put(idd,new children(String.valueof(idd),mymap.get(idd).size(),mymap.get(idd).size(), mymap.get(idd)));
                 
               
            
              
   }
         
        List<Children> child1 =new List<children>();
        List<Children> child2 =new List<children>();
        List<Children> child3 =new List<children>();
        
         for(Integer idd: Mynewmap.keyset()){
             if(idd<=200000){
                 child1.add(Mynewmap.get(idd));
                /* if(Mynewmap.containskey(200000);){
                     Mynewmap.get(20000).add(new children())
                 }
                 else{
                     Mynewmap.put(2000, new List<Children>{(new children())});
                 }*/
                 
                
             }
             else if(idd<=400000){
                 child2.add(Mynewmap.get(idd));
                 //root.children.add(new children('<400000',Mynewmap.get(idd).size(),Mynewmap.get(idd).size(),Mynewmap.get(idd)));
             }
             else if(idd<=600000){
                 child3.add(Mynewmap.get(idd));
                // root.children.add(new children('<600000',Mynewmap.get(idd).size(),Mynewmap.get(idd).size(),Mynewmap.get(idd)));
             }
              
              
   }
   
    
         root.children.add(new children('<200000',child1.size(),child1.size(),child1));
          root.children.add(new children('<400000',child2.size(),child2.size(),child2));
           root.children.add(new children('<600000',child3.size(),child3.size(),child3));
       
        
       /*   root.children.add(new Children('Other',Ch6.size(),Ch6.size(),Ch6));
            root.children.add(new Children('<500000',Ch5.size(),Ch5.size(),Ch5));
            root.children.add(new Children('<400000',Ch4.size(),Ch4.size(),Ch4));
            root.children.add(new Children('<300000',Ch3.size(),Ch3.size(),Ch3));
            root.children.add(new Children('<200000',Ch2.size(),Ch2.size(),Ch2));
            root.children.add(new Children('<100000',Ch1.size(),Ch1.size(),Ch1));*/
            
           
        root1 = JSON.serialize(root);
        root1 = root1.replace(',"children":[]','');
        system.debug(root1);
    }
    public class children{
       // public decimal maxRevenue;
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