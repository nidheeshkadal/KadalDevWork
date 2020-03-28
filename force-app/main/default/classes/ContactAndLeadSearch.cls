public class ContactAndLeadSearch {

   public static list<list<sobject>> searchContactsAndLeads(String name){

       list<list<sobject>> result = [FIND : name IN ALL FIELDS RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName) ];

       return result;
   }
}