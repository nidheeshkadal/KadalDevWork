public with sharing class myAccount {

    //Variable Declaration

    private final Account con;

    public string Conlastname{get;set;}

    public string conphone{get;set;}

    //public string conemail{get;set;}

    public string Conmobilephone{get;set;}

    public string Accid='';

    public blob Photo{get;set;}

    public string photoname{get;set;}

    public string photourl{get;set;}

    //Contstructor

    public myAccount(apexpages.standardController controller){

        con=(Account)controller.getRecord();

    }
     

    //this method updates the Contact with photourl and insert The Attachment Record

    public void UploadPhoto(){

        try{

            con.Name = conlastname; 
            //con.email = conemail;

            con.phone = conphone;

            con.Phone = conmobilephone;

            insert con;

           // Accid = ApexPages.currentPage().getParameters().get('id'); 

           // inserting attachement with Attached photo     

            Attachment objA=new Attachment();

            objA.body = photo;

            objA.name = 'testname';

            objA.parentid= con.id;

            objA.ContentType = 'application/jpg';

            insert objA;

            string Attid= objA.id;

            string attachmentid=Attid.substring(0,15);

            con.Photo__c = 'https://ap2.salesforce.com/servlet/servlet.FileDownload?file='+attachmentid;

            update con;

            photourl = con.Photo__c;       

        }catch(Exception e){

            system.debug('Exception message'+e);

        }

     }

}