module models.common.objclasses.applications.social_profile;

import models.common;

static this() {
  // This entity is used to store social profile information of its associated account and contacts on different social channels.
  gsCommon.objclasses("common/application/socialProfile", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.
        "overriddenCreatedOn":"common/application/socialProfile/overriddenCreatedOn", //	Date and time that the record was migrated.
        "importSequenceNumber":"common/application/socialProfile/importSequenceNumber", // Unique identifier of the data import or data migration that created this record.
        "ownerId":"common/ownerId", // Owner Id
        "ownerIdType":"common/application/socialProfile/ownerIdType", // The type of owner, either User or Team.
        "owningBusinessUnit":"common/application/socialProfile/owningBusinessUnit", // Unique identifier for the business unit that owns the record
        "owningUser":"common/application/socialProfile/owningUser", // Unique identifier of the user that owns the activity.
        "owningTeam":"common/application/socialProfile/owningTeam", // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber":"common/application/socialProfile/timeZoneRuleVersionNumber", // For internal use only.
        "UTCConversionTimeZoneCode":"common/application/socialProfile/UTCConversionTimeZoneCode", // Time zone code that was in use when the record was created.
        "socialProfileId":"common/application/socialProfile/socialProfileId", // Unique Identifier of the social profile name.
        "profileName":"common/application/socialProfile/profileName", // Shows the name of the social profile on the corresponding social channel.
        "profileFullName":"common/application/socialProfile/profileFullName", // Shows the display name of the customer on this social profile.
        "stateCode":"common/application/socialProfile/stateCode", // Status of the Social Profile
        "stateCode_display":"common/application/socialProfile/stateCode_display", // 
        "statusCode":"common/application/socialProfile/statusCode", // Reason for the status of the Social Profile
        "statusCode_display":"common/application/socialProfile/statusCode_display", // 
        "customerId":"common/application/socialProfile/customerId", // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.
        "customerIdType":"common/application/socialProfile/customerIdType", // The type of customer, either Account or Contact.
        "blocked":"common/application/socialProfile/blocked", // Identifies if the social profile has been blocked.
        "community":"common/application/socialProfile/community", // Identifies where the social profile originated from, such as Twitter, or Facebook.
        "community_display":"common/application/socialProfile/community_display", // 
        "influenceScore":"common/application/socialProfile/influenceScore", // Shows the score that determines the online social influence of the social profile.
        "profileLink":"common/application/socialProfile/profileLink", // Shows the customer that this social profile belongs to.
        "uniqueProfileID":"common/application/socialProfile/uniqueProfileID", // Unique ID of the Profile ID
        "transactionCurrencyId":"common/application/socialProfile/transactionCurrencyId", // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate":"common/application/socialProfile/exchangeRate", // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}