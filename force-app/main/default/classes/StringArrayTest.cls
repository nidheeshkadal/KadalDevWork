public class StringArrayTest{

public static List<String> generateStringArray(Integer k){
List<String> mylist=new List<String>();
for(Integer i=0;i<k;i++){
mylist.add('Test '+i);
system.debug(mylist[i]);
}
return mylist;
}

}