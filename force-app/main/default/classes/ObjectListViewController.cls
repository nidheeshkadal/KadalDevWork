public class ObjectListViewController {
    public list<Opportunity> lstofopportunity{get;set;}
    public Id oppId{get;set;}
    public string showid{get;set;}
    public Map<string,string> MapofRelatedObject{get;set;}
    Public ObjectListViewController(){
        Id oppId = apexpages.currentpage().getparameters().get('id');
        showid = ''+oppId;
        System.debug('oppId'+oppId);
        MapofRelatedObject = getRelatedObjects('Opportunity');
        System.debug('Relatedlist'+MapofRelatedObject.get('ContentVersion'));
        
    }
    public static Map<string,string> getRelatedObjects(string masterObjectName){
        Map<string,string> relatedObjectsMap = new Map<string,string>();
        List<Schema.Childrelationship> relatedObjectsList = Schema.getGlobalDescribe().get(masterObjectName).getdescribe().getChildRelationships();
        for (Schema.Childrelationship  relatedObject : relatedObjectsList) {
             if(relatedObject.getChildSObject().getDescribe().isUpdateable()
                    && 
                    relatedObject.getChildSObject().getDescribe().getKeyPrefix()!=null
                    && 
                    !relatedObject.getChildSObject().getDescribe().isCustomSetting()
                    &&
                    relatedObject.getChildSObject().getDescribe().isCreateable()
                )
                relatedObjectsMap.put(relatedObject.getChildSObject().getDescribe().getName(),relatedObject.getChildSObject().getDescribe().getLabel());
        }
        return relatedObjectsMap;
    }
    
}