@isTest
private class AccountHelperTest {
    @isTest
    static void testUpdateAccountDescription() {
        // 1. Setup Test Data
        List<Account> testAccs = new List<Account>{
            new Account(Name = 'Test Account A'),
            new Account(Name = 'Test Account B')
        };
        insert testAccs;
        
        // 2. Execute Method
        Test.startTest();
        AccountHelper.updateAccountDescription(testAccs, 'Updated by Unit Test');
        Test.stopTest();
        
        // 3. Assert Results
        List<Account> results = [SELECT Description FROM Account WHERE Id IN :testAccs];
        System.assertEquals('Updated by Unit Test', results[0].Description, 'Description should match');
        System.assertEquals('Updated by Unit Test', results[1].Description, 'Description should match');
    }
}