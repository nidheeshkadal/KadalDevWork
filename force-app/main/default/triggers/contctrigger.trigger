trigger contctrigger on Contact (before insert, after insert) {

Map<Id,Contact> con=new Map<Id,Contact>([SELECT AccountId,Name FROM Contact]);
List<Contact> conid=[SELECT AccountId,Name FROM Contact];

}