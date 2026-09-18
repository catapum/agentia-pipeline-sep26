public class AccountProcessor {
    
    // PMD Violation 1: HardcodedId
    private static final String DEFAULT_OWNER_ID = '005000000000000AAA';

    public static void processAccounts(List<Account> accountsToProcess) {
        
        for(Account acc : accountsToProcess) {
            acc.Description = 'Processed by system';
            acc.OwnerId = DEFAULT_OWNER_ID;
            
            // PMD Violation 2: AvoidDmlStatementsInLoops
            update acc; 
        }
        
        try {
            System.debug('Account processing finished.');
        } catch (Exception e) {
            // PMD Violation 3: EmptyCatchBlock
        }
    }
}