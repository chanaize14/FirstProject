public class OppTriggerHandler {
    // a static variable to keep track of whether the trigger has already run
    public static Boolean firstRun = true;

    public static void handleAfterUpdate(List<Opportunity> opps) {
        if (!firstRun) {
            // exit the method early if the trigger has already run
            return;
        }

        // set the firstRun flag to false to prevent recursion
        firstRun = false;

        // perform the logic for the trigger
        List<Opportunity> updatedOpps = new List<Opportunity>();
        for (Opportunity each : opps) {
            // can not update anything
            //  inside Trigger.new directly  in after update 
            // below line will make a copy of opp entered the trigger
            // and we can update the cloned one
            Opportunity oppNew = each.clone(true);
            if (each.Amount > 100000) {
                oppNew.Description = 'high amount';
            } else {
                oppNew.Description = 'low amount';
            }

            updatedOpps.add(oppNew);
        }

        // update the Opportunities
        update updatedOpps;

    }
}