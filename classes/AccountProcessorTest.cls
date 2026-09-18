@isTest
private class AccountProcessorTest {
    
    @isTest
    static void testUpdateAccountStatus_WillPass() {
        // 1. Setup Data
        Account testAcc = new Account(Name = 'Passing Test Account');
        insert testAcc;
        
        // 2. Execute Logic
        Test.startTest();
        AccountProcessor.updateAccountStatus(new List<Account>{testAcc});
        Test.stopTest();
        
        // 3. Query the result
        Account updatedAcc = [SELECT Description FROM Account WHERE Id = :testAcc.Id LIMIT 1];
        
        // 4. Passing Assertion
        // The expected value now mirrors the dynamic date logic used in the main class
        String expectedDescription = 'Processed on: ' + Date.today().format();
        
        System.assertEquals(
            expectedDescription, 
            updatedAcc.Description, 
            'The description should correctly append the current date.'
        );
    }
}