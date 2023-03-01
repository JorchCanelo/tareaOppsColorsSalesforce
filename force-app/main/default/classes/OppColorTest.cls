@isTest
public class OppColorTest {
    @isTest static void TestCreateOrangeOpp(){
        Account acctOrange = new Account(Name='Test Account 1', 
                                         AnnualRevenue = 10000,
                                         Support_Tier__c = 'Bronze',
                                         Annual_Revenue_Date__c = System.today() + 3);
        Test.startTest();
        insert acctOrange;
        Test.stopTest();
        Opportunity created = [select Colour_Url__c from Opportunity Where Name = 'Test Account 1 Initial'];
        System.assertEquals('https://freesvg.org/img/Sticky-Note-03-Orange.png', created.Colour_Url__c, 'Error');
    }
    @isTest static void TestCreateGreenOpp(){
        Account acctGreen = new Account(Name='Test Account 2', 
                                         AnnualRevenue = 40000,
                                         Support_Tier__c = 'Bronze',
                                         Annual_Revenue_Date__c = System.today());
        Test.startTest();
        insert acctGreen;
        Test.stopTest();
        Opportunity created = [select Colour_Url__c from Opportunity Where Name = 'Test Account 2 Initial'];
        System.assertEquals('https://freesvg.org/img/1286138576.png', created.Colour_Url__c, 'Error');
    }
    @isTest static void TestCreateYellowOpp(){
        Account acctYellow = new Account(Name='Test Account 3', 
                                         AnnualRevenue = 20000,
                                         Support_Tier__c = 'Bronze',
                                         Annual_Revenue_Date__c = System.today());
        Test.startTest();
        insert acctYellow;
        Test.stopTest();
        Opportunity created = [select Colour_Url__c from Opportunity Where Name = 'Test Account 3 Initial'];
        System.assertEquals('https://freesvg.org/img/1286146809.png', created.Colour_Url__c, 'Error');
    }
    @isTest static void TestCreateRedOpp(){
        Account acctRed = new Account(Name='Test Account 4', 
                                         AnnualRevenue = 9000,
                                         Support_Tier__c = 'Bronze',
                                         Annual_Revenue_Date__c = System.today());
        Test.startTest();
        insert acctRed;
        Test.stopTest();
        Opportunity created = [select Colour_Url__c from Opportunity Where Name = 'Test Account 4 Initial'];
        System.assertEquals('https://freesvg.org/img/1286146771.png', created.Colour_Url__c, 'Error');
    }
}