trigger OppColorTrigger on Account (after insert) {
	List<Opportunity> oppsToInsert = new List<Opportunity>();
    OppColorCreator creator = new OppColorCreator();
    Opportunity opp = null;
	for(Account a: Trigger.new){
        opp = creator.returnedColoredOpp(a);
        oppsToInsert.add(opp);
    }
    if (oppsToInsert.size() > 0) {
        insert oppsToInsert;
    }
}