public with sharing class NewsMaker {

    //Variable Declaration

    private final NewsMaker__c news;

    public string newsSubject{get;set;}

    public string newsContent{get;set;}

    //public string conemail{get;set;}

    public string conlastname{get;set;}

    public string Accid='';

    public blob Photo{get;set;}

    public string photoname{get;set;}

    public string photourl{get;set;}

    //Contstructor

    public NewsMaker(apexpages.standardController controller){

        news=(NewsMaker__c)controller.getRecord();

    }
     

    //this method updates the Contact with photourl and insert The Attachment Record

    public void UploadPhoto(){

        try{

            news.Name = conlastname; 
            //con.email = conemail;

            news.Description__c = newsContent;

            news.Subject__c = newsSubject;

            insert news;

           // Accid = ApexPages.currentPage().getParameters().get('id'); 

           // inserting attachement with Attached photo     

            Attachment objA=new Attachment();

            objA.body = photo;

            objA.name = 'newsImage';

            objA.parentid= news.id;

            objA.ContentType = 'application/jpg';

            insert objA;

            string Attid= objA.id;

            string attachmentid=Attid.substring(0,15);

            news.Photo__c = 'https://ap2.salesforce.com/servlet/servlet.FileDownload?file='+attachmentid;

            update news;

            photourl = news.Photo__c;       

        }catch(Exception e){

            system.debug('Exception message'+e);

        }

     }

}