public class OppColorCreator {
    Opp_Color__mdt red = Opp_Color__mdt.getInstance('Red');
    Opp_Color__mdt orange = Opp_Color__mdt.getInstance('Orange');
    Opp_Color__mdt green = Opp_Color__mdt.getInstance('Green');
    Opp_Color__mdt yellow = Opp_Color__mdt.getInstance('Yellow');
    public static Opportunity createColoredOpp(Account a, Opp_Color__mdt color){
        Opportunity opp = new Opportunity(Name = a.Name+' Initial', AccountId =a.Id,
                                              CloseDate = System.today() + 3,
                                              StageName = 'Prospecting',
                                              Colour_Url__c = color.Url_Image__c);
        return opp;
    }
    public Opportunity returnedColoredOpp(Account a){
        if(a.Annual_Revenue_Date__c != System.today()) return createColoredOpp(a, orange);
        if(a.AnnualRevenue < 10000) return createColoredOpp(a, red);
        if(a.AnnualRevenue > 30000) return createColoredOpp(a, green);
        return createColoredOpp(a, yellow);
    }
}