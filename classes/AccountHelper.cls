public class AccountHelper {
    // Updates the description field for a given list of accounts
    public static void updateAccountDescription(List<Account> accList, String newDescription) {
        if (accList == null || accList.isEmpty()) return;
        
        for (Account acc : accList) {
            acc.Description = newDescription;
        }
        
        update accList;
    }
}