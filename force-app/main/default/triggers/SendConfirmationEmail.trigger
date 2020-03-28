trigger SendConfirmationEmail on Session_Speaker__c (after insert) {

    for(Session_Speaker__c newItem : trigger.new) {

        // Retrieve session name and time + speaker name and email address
        List<Session_Speaker__c> sessionSpeakers =
            [SELECT Session__r.Name,
                    Session__r.Session_Date__c,
                    Speaker__r.First_Name__c,
                    Speaker__r.Last_Name__c,
                 Speaker__r.Email__c
             FROM Session_Speaker__c WHERE Id=:newItem.Id];
        if(sessionSpeakers.size() > 0) {  
            // Send confirmation email if we know the speaker's email address
            Session_Speaker__c sessionSpeaker = sessionSpeakers[0];
            if (sessionSpeaker.Speaker__r.Email__c != null) {
                String address = sessionSpeaker.Speaker__r.Email__c;
                String subject = 'Speaker Confirmation';
                String message = 'Dear ' + sessionSpeaker.Speaker__r.First_Name__c +
                    ',\nYour session "' + sessionSpeaker.Session__r.Name + '" on ' +
                    sessionSpeaker.Session__r.Session_Date__c + ' is confirmed.\n\n' +
                    'Thanks for speaking at the conference!';
                EmailManager.sendMail(address, subject, message);
            }
        }
    }

    
    
}