public class AccountCreation{
    Account a1 = new Account();
    
    public void createAccount(String strname, String rate, String act){
    a1.name = strname;
    a1.rating = rate;
    a1.accountNumber = act;
    insert a1;}
    
    
    public void updateAccount(String actName){
    List<Account> lstAccounts = [Select id, name from Account where name=:actName];
    if(lstAccounts !=null && lstAccounts.size() >0)
    lstAccounts[0].rating ='Warm';
    update lstAccounts[0];
        
    }
    
    public void deleteAccount(String strname)
    {
     List<Account> lstAccounts = [Select id, name from Account where name=:strname];
     if(lstAccounts !=null && lstAccounts.size() >0)
     delete lstAccounts;
    }
    
}