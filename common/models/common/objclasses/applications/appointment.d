module models.common.objclasses.applications.appointment;

import models.common;

static this() {
  // Commitment representing a time interval with start/end times and duration.
  gsCommon.objclasses("common/application/appointment", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/appointment/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/appointment/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/appointment/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/appointment/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/appointment/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/appointment/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/appointment/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/appointment/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "activityId":"common/application/appointment/activityId", //	Unique identifier of the activity.	
        "activityTypeCode":"common/application/appointment/activityTypeCode", //	Type of activity.	
        "isBilled":"common/application/appointment/isBilled", //	Information regarding whether the activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/appointment/isRegularActivity", //	Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/appointment/isWorkflowCreated", //	Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/appointment/priorityCode", //	Priority of the activity.	
        "priorityCode_display":"common/application/appointment/priorityCode_display", //		
        "regardingObjectId":"common/application/appointment/regardingObjectId", //	Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/appointment/regardingObjectTypeCode", //	The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/appointment/scheduledEnd", //	Scheduled end time of the activity.	
        "scheduledStart":"common/application/appointment/scheduledStart", //	Scheduled start time of the activity.	
        "sortDate":"common/application/appointment/sortDate", //	Shows the date and time by which the activities are sorted.	
        "subject":"common/application/appointment/subject", //	Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/appointment/scheduledDurationMinutes", //	Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/appointment/actualDurationMinutes", //	Actual duration of the activity in minutes.	
        "actualEnd":"common/application/appointment/actualEnd", //	Actual end time of the activity.	
        "actualStart":"common/application/appointment/actualStart", //	Actual start time of the activity.	
        "category":"common/application/appointment/category", //	Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory":"common/application/appointment/subcategory", //	Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "activityAdditionalParams":"common/application/appointment/activityAdditionalParams", //	Additional information provided by the external application as JSON. For internal use only.	
        "instanceTypeCode":"common/application/appointment/instanceTypeCode", //	Type of instance of a recurring series.	
        "instanceTypeCode_display":"common/application/appointment/instanceTypeCode_display", //		
        "isMapiPrivate":"common/application/appointment/isMapiPrivate", //	For internal use only.	
        "organizer":"common/application/appointment/organizer", //	The user who is in charge of coordinating or leading the activity.	
        "requiredAttendees":"common/application/appointment/requiredAttendees", //	Enter the account, contact, lead, user, or other equipment resources that are required to attend the activity.	
        "optionalAttendees":"common/application/appointment/optionalAttendees", //	The account, contact, lead, user, or other equipment resources that are not needed at the activity, but can optionally attend.	
        "isAllDayEvent":"dataformat/boolean/nullable/true", //	Select whether the appointment is an all-day event to make sure that the required resources are scheduled for the full day.	
        "globalObjectId":"common/application/appointment/globalObjectId", //	Shows the ID of the appointment in Microsoft Office Outlook. The ID is used to synchronize the appointment between Microsoft Dynamics 365 and the correct Exchange account.	
        "statusCode":"common/application/appointment/statusCode", //	Select the appointment's status.	
        "statusCode_display":"common/application/appointment/statusCode_display", //		
        "outlookOwnerApptId":"common/application/appointment/outlookOwnerApptId", //	Unique identifier of the Microsoft Office Outlook appointment owner that correlates to the PR_OWNER_APPT_ID MAPI property.	
        "location":"common/application/appointment/location", //	Type the location where the appointment will take place, such as a conference room or customer office.	
        "stateCode":"common/application/appointment/stateCode", //	Shows whether the appointment is open, completed, or canceled. Completed and canceled appointments are read-only and can't be edited.	
        "stateCode_display":"common/application/appointment/stateCode_display", //		
        "traversedPath":"common/application/appointment/traversedPath", //	For internal use only.	
        "modifiedFieldsMask":"common/application/appointment/modifiedFieldsMask", //	For internal use only.	
        "seriesId":"common/application/appointment/seriesId", //	Shows the ID of the recurring series of an instance.	
        "originalStartDate":"common/application/appointment/originalStartDate", //	The original start date of the appointment.	
        "transactionCurrencyId":"common/application/appointment/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/appointment/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "processId":"common/application/appointment/processId", //	Shows the ID of the process.	
        "stageId":"common/application/appointment/stageId", //	Shows the ID of the stage.	
        "attachmentErrors":"common/application/appointment/attachmentErrors", //	Select the error code to identify issues with the outlook item recipients or attachments, such as blocked attachments.	
        "attachmentErrors_display":"common/application/appointment/attachmentErrors_display", //		
        "attachmentCount":"common/application/appointment/attachmentCount", //	Shows the number of attachments on the appointment.	
        "SLAId":"common/application/appointment/SLAId", //	Choose the service level agreement (SLA) that you want to apply to the appointment record.	
        "SLAInvokedId":"common/application/appointment/SLAInvokedId", //	Last SLA that was applied to this appointment. This field is for internal use only.	
        "onHoldTime":"common/application/appointment/onHoldTime", //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/appointment/lastOnHoldTime", //	Contains the date and time stamp of the last on hold time.	
        "isUnsafe":"common/application/appointment/isUnsafe", //	For internal use only.	
        "isDraft":"common/application/appointment/isDraft", //	Information regarding whether the appointment is a draft.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}