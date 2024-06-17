module models.common.objclasses.applications.activity_party;

import models.common;

static this() {
  // Person or group associated with an activity. An activity can have multiple activity parties.
  gsCommon.objclasses("common/application/activityParty", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "activityId":"common/application/activityParty/activityId", //	Unique identifier of the activity associated with the activity party. (A "party" is any person who is associated with an activity.)	
        "partyId":"common/application/activityParty/partyId", //		Unique identifier of the party associated with the activity.	
        "partyObjectTypeCode":"common/application/activityParty/partyObjectTypeCode", //		The name of the entity linked by partyId	
        "participationTypeMask":"common/application/activityParty/participationTypeMask", //		Role of the person in the activity, such as sender, to, cc, bcc, required, optional, organizer, regarding, or owner.	
        "participationTypeMask_display":"common/application/activityParty/participationTypeMask_display", //			
        "addressUsed":"common/application/activityParty/addressUsed", //		Email address to which an email is delivered, and which is associated with the target entity.	
        "doNotFax":"common/application/activityParty/doNotFax", //		Information about whether to allow sending faxes to the activity party.	
        "scheduledStart":"common/application/activityParty/scheduledStart", //		Scheduled start time of the activity.	
        "scheduledEnd":"common/application/activityParty/scheduledEnd", //		Scheduled end time of the activity.	
        "effort":"common/application/activityParty/effort", //		Amount of effort used by the resource in a service appointment activity.	
        "doNotEMail":"common/application/activityParty/doNotEMail", //		Information about whether to allow sending email to the activity party.	
        "exchangeEntryId":"common/application/activityParty/exchangeEntryId", //		For internal use only.	
        "doNotPostalMail":"common/application/activityParty/doNotPostalMail", //		Information about whether to allow sending postal mail to the lead.	
        "doNotPhone":"common/application/activityParty/doNotPhone", //		Information about whether to allow phone calls to the lead.	
        "ownerId":"common/ownerId", //		Owner Id	
        "ownerIdType":"common/application/activityParty/ownerIdType", //		The type of owner, either User or Team.	
        "instanceTypeCode":"common/application/activityParty/instanceTypeCode", //		Type of instance of a recurring series.	
        "instanceTypeCode_display":"common/application/activityParty/instanceTypeCode_display", //			
        "isPartyDeleted":"common/application/activityParty/isPartyDeleted", //		Information about whether the underlying entity record is deleted.	
        "addressUsedEmailColumnNumber":"common/application/activityParty/addressUsedEmailColumnNumber", //		Email address column number from associated party.	
      ]);
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}
