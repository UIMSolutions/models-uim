module models.common.objclasses.applications.letter;

import models.common;

static this() {
  // Activity that tracks the delivery of a letter. The activity can contain the electronic copy of the letter.
  gsCommon.objclasses("common/application/letter", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/letter/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/letter/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/letter/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/letter/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/letter/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/letter/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/letter/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/letter/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "activityId":"common/application/letter/activityId", //	Unique identifier of the activity.	
        "activityTypeCode":"common/application/letter/activityTypeCode", //	Type of activity.	
        "isBilled":"common/application/letter/isBilled", //	Information regarding whether the fax activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/letter/isRegularActivity", //	Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/letter/isWorkflowCreated", //	Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/letter/priorityCode", //	Priority of the activity.	
        "priorityCode_display":"common/application/letter/priorityCode_display", //		
        "regardingObjectId":"common/application/letter/regardingObjectId", //	Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/letter/regardingObjectTypeCode", //	The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/letter/scheduledEnd", //	Scheduled end time of the activity.	
        "scheduledStart":"common/application/letter/scheduledStart", //	Scheduled start time of the activity.	
        "sortDate":"common/application/letter/sortDate", //	Shows the date and time by which the activities are sorted.	
        "subject":"common/application/letter/subject", //	Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/letter/scheduledDurationMinutes", //	Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/letter/actualDurationMinutes", //	Actual duration of the activity in minutes.	
        "actualEnd":"common/application/letter/actualEnd", //	Actual end time of the activity.	
        "actualStart":"common/application/letter/actualStart", //	Actual start time of the activity.	
        "category":"common/application/letter/category", //	Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory":"common/application/letter/subcategory", //	Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "to":"common/application/letter/to", //	The account, contact, lead, queue, or user recipients for the activity.	
        "from":"common/application/letter/from", //	The sender of the activity.	
        "BCC":"common/application/letter/BCC", //	Enter the recipients that are included on the activity distribution, but are not displayed to other recipients.	
        "CC":"common/application/letter/CC", //	Enter the recipients that should be copied on the activity.	
        "directionCode":"common/application/letter/directionCode", //	Select the direction of the activity as incoming or outbound.	
        "address":"common/application/letter/address", //	Type the complete recipient address for the letter to ensure timely delivery.	
        "statusCode":"common/application/letter/statusCode", //	Select the letter's status.	
        "statusCode_display":"common/application/letter/statusCode_display", //		
        "stateCode":"common/application/letter/stateCode", //	Shows whether the letter is open, completed, or canceled. Completed and canceled letters are read-only and can't be edited.	
        "stateCode_display":"common/application/letter/stateCode_display", //		
        "transactionCurrencyId":"common/application/letter/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/letter/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "processId":"common/application/letter/processId", //	Shows the ID of the process.	
        "stageId":"common/application/letter/stageId", //	Shows the ID of the stage.	
        "traversedPath":"common/application/letter/traversedPath", //	For internal use only.	
        "SLAId":"common/application/letter/SLAId", //	Choose the service level agreement (SLA) that you want to apply to the Letter record.	
        "SLAInvokedId":"common/application/letter/SLAInvokedId", //	Last SLA that was applied to this Letter. This field is for internal use only.	
        "onHoldTime":"common/application/letter/onHoldTime", //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/letter/lastOnHoldTime", //	Contains the date and time stamp of the last on hold time.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}