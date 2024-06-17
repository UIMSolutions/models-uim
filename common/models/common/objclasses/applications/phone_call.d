module models.common.objclasses.applications.phone_call;

import models.common;

static this() {
  // Activity to track a telephone call.
  gsCommon.objclasses("common/application/phoneCall", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //		Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //		Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/phoneCall/overriddenCreatedOn", //		Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/phoneCall/importSequenceNumber", //		Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //		Owner Id	
        "ownerIdType":"common/application/phoneCall/ownerIdType", //		The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/phoneCall/owningBusinessUnit", //		Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/phoneCall/owningUser", //		Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/phoneCall/owningTeam", //		Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/phoneCall/timeZoneRuleVersionNumber", //		For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/phoneCall/UTCConversionTimeZoneCode", //		Time zone code that was in use when the record was created.	
        "activityId":"common/application/phoneCall/activityId", //		Unique identifier of the activity.	
        "activityTypeCode":"common/application/phoneCall/activityTypeCode", //		Type of activity.	
        "isBilled":"common/application/phoneCall/isBilled", //		Information regarding whether the fax activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/phoneCall/isRegularActivity", //		Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/phoneCall/isWorkflowCreated", //		Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/phoneCall/priorityCode", //		Priority of the activity.	
        "priorityCode_display":"common/application/phoneCall/priorityCode_display", //			
        "regardingObjectId":"common/application/phoneCall/regardingObjectId", //		Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/phoneCall/regardingObjectTypeCode", //		The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/phoneCall/scheduledEnd", //		Scheduled end time of the activity.	
        "scheduledStart":"common/application/phoneCall/scheduledStart", //		Scheduled start time of the activity.	
        "sortDate":"common/application/phoneCall/sortDate", //		Shows the date and time by which the activities are sorted.	
        "subject":"common/application/phoneCall/subject", //		Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/phoneCall/scheduledDurationMinutes", //		Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/phoneCall/actualDurationMinutes", //		Actual duration of the activity in minutes.	
        "actualEnd":"common/application/phoneCall/actualEnd", //		Actual end time of the activity.	
        "actualStart":"common/application/phoneCall/actualStart", //		Actual start time of the activity.	
        "category":"common/application/phoneCall/category", //		Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory":"common/application/phoneCall/subcategory", //		Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "activityAdditionalParams":"common/application/phoneCall/activityAdditionalParams", //		Additional information provided by the external application as JSON. For internal use only.	
        "to":"common/application/phoneCall/to", //		Enter the account, contact, lead, or user recipients of the phone call.	
        "from":"common/application/phoneCall/from", //		The sender of the activity.	
        "leftVoiceMail":"common/application/phoneCall/leftVoiceMail", //		Left the voice mail	
        "directionCode":"common/application/phoneCall/directionCode", //		Select the direction of the activity as incoming or outbound.	
        "phoneNumber":"common/application/phoneCall/phoneNumber", //		Type the phone number.	
        "stateCode":"common/application/phoneCall/stateCode", //		Shows whether the phone call is open, completed, or canceled. Completed and canceled phone calls are read-only and can't be edited.	
        "stateCode_display":"common/application/phoneCall/stateCode_display", //			
        "statusCode":"common/application/phoneCall/statusCode", //		Select the phone call's status.	
        "statusCode_display":"common/application/phoneCall/statusCode_display", //			
        "transactionCurrencyId":"common/application/phoneCall/transactionCurrencyId", //		Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/phoneCall/exchangeRate", //		Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "processId":"common/application/phoneCall/processId", //		Shows the ID of the process.	
        "stageId":"common/application/phoneCall/stageId", //		Shows the ID of the stage.	
        "traversedPath":"common/application/phoneCall/traversedPath", //		For internal use only.	
        "SLAInvokedId":"common/application/phoneCall/SLAInvokedId", //		Last SLA that was applied to this Phone Call. This field is for internal use only.	
        "onHoldTime":"common/application/phoneCall/onHoldTime", //		Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/phoneCall/lastOnHoldTime", //		Contains the date and time stamp of the last on hold time.	
        "SLAId":"common/application/phoneCall/SLAId", //		Choose the service level agreement (SLA) that you want to apply to the Phone Call record.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}