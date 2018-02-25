public class AccountExt {

public String searchString{get;set;}
public List<Account> lstAccounts{get;set;}

    public AccountExt(ApexPages.StandardController controller) {

    }
    public void searchAccount()
    {
        String str='%'+searchString+'%';
        lstAccounts=[Select id,name,rating from Account where name LIKE: str];
 
        
    }

}