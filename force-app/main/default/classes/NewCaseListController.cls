public class NewCaseListController {
    public List<Case> getNewCases(){
       List<Case> newCases=[SELECT CaseNumber,Id FROM Case WHERE Status = 'New'];
   return newCases;
   }
}