@isTest
private class AccountProcessorTest {
    @isTest
    static void testProcessAccounts() {
        Account testAcc = new Account(Name = 'Test PMD Account');
        insert testAcc;
        
        Test.startTest();
        AccountProcessor.processAccounts(new List<Account>{testAcc});
        Test.stopTest();
        
        Account updatedAcc = [SELECT Description FROM Account WHERE Id = :testAcc.Id LIMIT 1];
        System.assertEquals('Processed by system', updatedAcc.Description, 'Account description should be updated.');
    }
}