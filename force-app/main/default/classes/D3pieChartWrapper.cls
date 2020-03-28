public class D3pieChartWrapper {






     
    Public children root{set;get;}
     Public children2 root2{set;get;}
     Public String root1{set;get;}
  
  

    
    



   

    public class children{
        Public string name{get;set;}
        Public Integer size{get;set;}
        Public Integer sign{get;set;}
         public List<children> children{get;set;}
        public children(String name, integer size,Integer sign){
            this.name = name;
            this.size = size;
            this.sign=sign;
            this.children=children;
         
            
        }
    }
    public class children2{
        public String name{get;set;}
        public Integer size{get;set;}
        public Integer sign{get;set;}
       public List<children2> children1{get;set;}
        
         public children2(String name, integer size, Integer sign){
            this.name = name;
            this.size = size;
            this.sign=sign;
           this.children1 = children1;
    }
    }
    public D3pieChartWrapper(){
        
        
      List<Lead> LdList = [Select  name, AnnualRevenue from Lead];
            root2 = new children2('Total',Ldlist.size(),Ldlist.size());  
        for(Lead ld: Ldlist){
            
          
          if(ld.AnnualRevenue<10000){
              
                root2.children1.add(new children2(ld.name,1,-2));
          }
          else if(ld.AnnualRevenue<20000){
              root2.children1.add(new children2(ld.name,1,-1));
              
          }
         else if(ld.AnnualRevenue<30000){
             root2.children1.add(new children2(ld.name,1,0));
             
         }
           else if(ld.AnnualRevenue<40000){
               root2.children1.add(new children2(ld.name,1,1));
               
           }
            else{
              root2.children1.add(new children2(ld.name,1,2));
            
         
          }  
         
        }
       
       /* root = new children('Total',Ldlist.size(),Ldlist.size());
            for(children2 ld: root2.children1){
            
          
          if(root2.children1.){
              
                root.children.add(new children('less than 10000',1,1));
          }
          else if(ld.AnnualRevenue<20000){
              root.children.add(new children('less than 20000',1,1));
              
          }
         else if(ld.AnnualRevenue<30000){
             root.children.add(new children('less than 30000',1,1));
             
         }
           else if(ld.AnnualRevenue<40000){
               root.children.add(new children('less than 40000',1,1));
               
           }
            else{
              root.children.add(new children('greater than 40000',1,1));
            
         
          }  */
         
        
       
        
       root1 = JSON.serialize(root2);   
           
    }
    }