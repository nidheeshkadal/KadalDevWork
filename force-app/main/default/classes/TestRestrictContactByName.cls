@isTest
private class TestRestrictContactByName {

    @isTest static void metodoTest() {

        List<Contact> listaContatti = new List<Contact>();
        Contact c1 = new Contact(FirstName='Francesco', LastName='Riggio' , email='Testfr@test.com');
        Contact c2 = new Contact(FirstName='Andrea', LastName = 'INVALIDNAME', email='Testam@test.com');
        listaContatti.add(c1);
        listaContatti.add(c2);

        //Test.startTest();
            try{
                insert listaContatti;
            } catch(Exception ee){

            }

        //Test.stopTest(); 


    }


    @isTest static void metodoTest2() {

        List<Contact> listaContatti = new List<Contact>();
        Contact c1 = new Contact(FirstName='Stefano', LastName='Massoni' , email='Testm@test.com');
        Contact c2 = new Contact(FirstName='Simone', LastName = 'Coman',email='Testb@test.com');
        listaContatti.add(c1);
        listaContatti.add(c2);

        //Test.startTest();
            try{
                insert listaContatti;
            } catch(Exception ee){

            }

            listaContatti.get(0).LastName = 'INVALIDNAME';

            try{
                update listaContatti;
            } catch(Exception ee){

            }        
        //Test.stopTest();              
    } }