public class leadshow{
public list<Lead> leadlist{get;set;}
public Lead lds{get;set;}

    public leadshow(){
        leadlist=[SELECT FirstName,LastName,Email,Company,Phone FROM Lead];
        lds = new Lead();
    }


    public PageReference Move() {
        PageReference Page = new PageReference('/apex/leadform');
            Page.setRedirect(true);
        return Page;
    }
 
     public PageReference save(){
         insert lds;
         PageReference Page1 = new PageReference('/00Q/o');
         Page1.setRedirect(false);
         return Page1 ; 
     }
 
 
 }