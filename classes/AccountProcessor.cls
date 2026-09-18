public class AccountProcessor {
    
    public static void updateAccountStatus(List<Account> accountsToProcess) {
        List<Account> accountsToUpdate = new List<Account>();
        
        for(Account acc : accountsToProcess) {
            // The class appends the current date to the description
            acc.Description = 'Processed on: ' + Date.today().format();
            accountsToUpdate.add(acc);
        }
        
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate; 
        }
    }
}