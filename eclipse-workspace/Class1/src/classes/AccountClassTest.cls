@isTest
private class AccountClassTest {

    @isTest
	private static void test() {
        AccountCreation ac = new AccountCreation();
        ac.createAccount('Test1', 'Hot', 'HDFC1234');
        List<Account> Lista1 = [select id,name from Account where name='Test1' AND Rating='Hot' AND AccountNumber = 'HDFC1234'];
        System.assertEquals(1, Lista1.size());
	}

}