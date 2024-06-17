module models.common.objclasses.applications.fax;

import models.common;

static this() {
  // Activity that tracks call outcome and number of pages for a fax and optionally stores an electronic copy of the document.
  gsCommon.objclasses("common/application/fax", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //		Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //		Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/fax/overriddenCreatedOn", //		Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/fax/importSequenceNumber", //		Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //		Owner Id	
        "ownerIdType":"common/application/fax/ownerIdType", //		The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/fax/owningBusinessUnit", //		Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/fax/owningUser", //		Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/fax/owningTeam", //		Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/fax/timeZoneRuleVersionNumber", //		For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/fax/UTCConversionTimeZoneCode", //		Time zone code that was in use when the record was created.	
        "activityId":"common/application/fax/activityId", //		Unique identifier of the activity.	
        "activityTypeCode":"common/application/fax/activityTypeCode", //		Type of activity.	
        "isBilled":"common/application/fax/isBilled", //		Information regarding whether the fax activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/fax/isRegularActivity", //		Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/fax/isWorkflowCreated", //		Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/fax/priorityCode", //		Priority of the activity.	
        "priorityCode_display":"common/application/fax/priorityCode_display", //			
        "regardingObjectId":"common/application/fax/regardingObjectId", //		Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/fax/regardingObjectTypeCode", //		The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/fax/scheduledEnd", //		Scheduled end time of the activity.	
        "scheduledStart":"common/application/fax/scheduledStart", //		Scheduled start time of the activity.	
        "sortDate":"common/application/fax/sortDate", //		Shows the date and time by which the activities are sorted.	
        "subject":"common/application/fax/subject", //		Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/fax/scheduledDurationMinutes", //		Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/fax/actualDurationMinutes", //		Actual duration of the activity in minutes.	
        "actualEnd":"common/application/fax/actualEnd", //		Actual end time of the activity.	
        "actualStart":"common/application/fax/actualStart", //		Actual start time of the activity.	
        "category":"common/application/fax/category", //		Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory":"common/application/fax/subcategory", //		Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "to":"common/application/fax/to", //		The account, contact, lead, queue, or user recipients for the activity.	
        "from":"common/application/fax/from", //		The sender of the activity.	
        "directionCode":"common/application/fax/directionCode", //		Select the direction of the activity as incoming or outbound.	
        "coverPageName":"common/application/fax/coverPageName", //		Type the name of the cover page to use when sending the fax.	
        "billingCode":"common/application/fax/billingCode", //		Type the billing code for the fax to make sure the fax is charged to the correct sender or customer account.	
        "stateCode":"common/application/fax/stateCode", //		Shows whether the fax activity is open, completed, or canceled. Completed and canceled fax activities are read-only and can't be edited.	
        "stateCode_display":"common/application/fax/stateCode_display", //			
        "numberOfPages":"common/application/fax/numberOfPages", //		Type the number of pages included in the fax.	
        "faxNumber":"common/application/fax/faxNumber", //		Type the recipient's fax number.	
        "tsid":"common/application/fax/tsid", //		Type the Transmitting Subscriber ID (TSID) associated with a send action. This is typically a combination of the recipient's fax or phone number and company name.	
        "statusCode":"common/application/fax/statusCode", //		Select the fax's status.	
        "statusCode_display":"common/application/fax/statusCode_display", //			
        "transactionCurrencyId":"common/application/fax/transactionCurrencyId", //		Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/fax/exchangeRate", //		Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "processId":"common/application/fax/processId", //		Shows the ID of the process.	
        "stageId":"common/application/fax/stageId", //		Shows the ID of the stage.	
        "traversedPath":"common/application/fax/traversedPath", //		For internal use only.	
        "SLAId":"common/application/fax/SLAId", //		Choose the service level agreement (SLA) that you want to apply to the fax record.	
        "SLAInvokedId":"common/application/fax/SLAInvokedId", //		Last SLA that was applied to this fax. This field is for internal use only.	
        "onHoldTime":"common/application/fax/onHoldTime", //		Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/fax/lastOnHoldTime", //		Contains the date and time stamp of the last on hold time.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}