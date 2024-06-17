module models.common.objclasses.applications.recurring_appointment;

import models.common;

static this() {
  // The Master appointment of a recurring appointment series.
  gsCommon.objclasses("common/application/recurringAppointment", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"common/application/recurringAppointment/modifiedOnBehalfBy", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/recurringAppointment/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/recurringAppointment/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/recurringAppointment/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/recurringAppointment/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/recurringAppointment/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/recurringAppointment/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/recurringAppointment/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/recurringAppointment/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "activityId":"common/application/recurringAppointment/activityId", //	Unique identifier of the activity.	
        "activityTypeCode":"common/application/recurringAppointment/activityTypeCode", //	Type of activity.	
        "isBilled":"common/application/recurringAppointment/isBilled", //	Information regarding whether the fax activity was billed as part of resolving a case.	
        "isRegularActivity":"dataformat/boolean/nullable/false", //	Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"dataformat/boolean/nullable/true", //	Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/recurringAppointment/priorityCode", //	Priority of the activity.	
        "priorityCode_display":"common/application/recurringAppointment/priorityCode_display", //		
        "regardingObjectId":"common/application/recurringAppointment/regardingObjectId", //	Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/recurringAppointment/regardingObjectTypeCode", //	The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/recurringAppointment/scheduledEnd", //	Scheduled end time of the activity.	
        "scheduledStart":"common/application/recurringAppointment/scheduledStart", //	Scheduled start time of the activity.	
        "sortDate":"common/application/recurringAppointment/sortDate", //	Shows the date and time by which the activities are sorted.	
        "subject":"common/application/recurringAppointment/subject", //	Subject associated with the activity.	
        "category":"common/application/recurringAppointment/category", //	Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory":"common/application/recurringAppointment/subcategory", //	Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "instanceTypeCode":"common/application/recurringAppointment/instanceTypeCode", //	Type of instance of a recurring series.	
        "instanceTypeCode_display":"common/application/recurringAppointment/instanceTypeCode_display", //		
        "isMapiPrivate":"common/application/recurringAppointment/isMapiPrivate", //	For internal use only.	
        "organizer":"common/application/recurringAppointment/organizer", //	The user who is in charge of coordinating or leading the activity.	
        "requiredAttendees":"common/application/recurringAppointment/requiredAttendees", //	Enter the account, contact, lead, user, or other equipment resources that are required to attend the activity.	
        "optionalAttendees":"common/application/recurringAppointment/optionalAttendees", //	The account, contact, lead, user, or other equipment resources that are not needed at the activity, but can optionally attend.	
        "isWeekDayPattern":"dataformat/boolean/nullable/false", //	Indicates whether the weekly recurrence pattern is a daily weekday pattern. Valid for weekly recurrence pattern only.	
        "ruleId":"common/application/recurringAppointment/ruleId", //	Unique identifier of the recurrence rule that is associated with the recurring appointment series.	
        "isNthYearly":"dataformat/boolean/nullable/false", //	Indicates whether the recurring appointment series should occur after every N years. Valid for yearly recurrence pattern only.	
        "stateCode":"common/application/recurringAppointment/stateCode", //	Shows whether the recurring appointment is open, scheduled, completed, or canceled. Completed and canceled appointments are read-only and can't be edited.	
        "stateCode_display":"common/application/recurringAppointment/stateCode_display", //		
        "groupId":"common/application/recurringAppointment/groupId", //	Unique identifier of the recurring appointment series for which the recurrence information was updated.	
        "lastExpandedInstanceDate":"common/application/recurringAppointment/lastExpandedInstanceDate", //	Date of last expanded instance of a recurring appointment series.	
        "effectiveEndDate":"common/application/recurringAppointment/effectiveEndDate", //	Actual end date of the recurring appointment series based on the specified end date and recurrence pattern.	
        "patternStartDate":"common/application/recurringAppointment/patternStartDate", //	Start date of the recurrence range.	
        "isRegenerate":"dataformat/boolean/nullable/false", //	For internal use only.	
        "firstDayOfWeek":"common/application/recurringAppointment/firstDayOfWeek", //	First day of week for the recurrence pattern.	
        "outlookOwnerApptId":"common/application/recurringAppointment/outlookOwnerApptId", //	Unique identifier of the Microsoft Office Outlook recurring appointment series owner that correlates to the PR_OWNER_APPT_ID MAPI property.	
        "recurrencePatternType":"common/application/recurringAppointment/recurrencePatternType", //	Select the pattern type for the recurring appointment to indicate whether the appointment occurs daily, weekly, monthly, or yearly.	
        "recurrencePatternType_display":"common/application/recurringAppointment/recurrencePatternType_display", //		
        "nextExpansionInstanceDate":"common/application/recurringAppointment/nextExpansionInstanceDate", //	Date of the next expanded instance of a recurring appointment series.	
        "expansionStateCode":"common/application/recurringAppointment/expansionStateCode", //	State code to indicate whether the recurring appointment series is expanded fully or partially.	
        "expansionStateCode_display":"common/application/recurringAppointment/expansionStateCode_display", //		
        "patternEndDate":"common/application/recurringAppointment/patternEndDate", //	End date of the recurrence range.	
        "globalObjectId":"common/application/recurringAppointment/globalObjectId", //	Unique Outlook identifier to correlate recurring appointment series across Exchange mailboxes.	
        "effectiveStartDate":"common/application/recurringAppointment/effectiveStartDate", //	Actual start date of the recurring appointment series based on the specified start date and recurrence pattern.	
        "dayOfMonth":"common/application/recurringAppointment/dayOfMonth", //	The day of the month on which the recurring appointment occurs.	
        "statusCode":"common/application/recurringAppointment/statusCode", //	Select the recurring appointment's status.	
        "statusCode_display":"common/application/recurringAppointment/statusCode_display", //		
        "startTime":"common/application/recurringAppointment/startTime", //	Start time of the recurring appointment series.	
        "occurrences":"common/application/recurringAppointment/occurrences", //	Number of appointment occurrences in a recurring appointment series.	
        "isAllDayEvent":"dataformat/boolean/nullable/true", //	Select whether the recurring appointment is an all-day event to make sure that the required resources are scheduled for the full day.	
        "seriesStatus":"common/application/recurringAppointment/seriesStatus", //	Indicates whether the recurring appointment series is active or inactive.	
        "isNthMonthly":"dataformat/boolean/nullable/false", //	Indicates whether the recurring appointment series should occur after every N months. Valid for monthly recurrence pattern only.	
        "endTime":"common/application/recurringAppointment/endTime", //	End time of the associated activity.	
        "daysOfWeekMask":"common/application/recurringAppointment/daysOfWeekMask", //	Bitmask that represents the days of the week on which the recurring appointment occurs.	
        "instance":"common/application/recurringAppointment/instance", //	Specifies the recurring appointment series to occur on every Nth day of a month. Valid for monthly and yearly recurrence patterns only.	
        "instance_display":"common/application/recurringAppointment/instance_display", //		
        "deletedExceptionsList":"common/application/recurringAppointment/deletedExceptionsList", //	List of deleted instances of the recurring appointment series.	
        "interval":"common/application/recurringAppointment/interval", //	Number of units of a given recurrence type between occurrences.	
        "duration":"common/application/recurringAppointment/duration", //	Duration of the recurring appointment series in minutes.	
        "monthOfYear":"common/application/recurringAppointment/monthOfYear", //	Indicates the month of the year for the recurrence pattern.	
        "monthOfYear_display":"common/application/recurringAppointment/monthOfYear_display", //		
        "location":"common/application/recurringAppointment/location", //	Type the location where the recurring appointment will take place, such as a conference room or customer office.	
        "patternEndType":"common/application/recurringAppointment/patternEndType", //	Select the type of end date for the recurring appointment, such as no end date or the number of occurrences.	
        "patternEndType_display":"common/application/recurringAppointment/patternEndType_display", //		
        "transactionCurrencyId":"common/application/recurringAppointment/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/recurringAppointment/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "processId":"common/application/recurringAppointment/processId", //	Shows the ID of the process.	
        "stageId":"common/application/recurringAppointment/stageId", //	Shows the ID of the stage.	
        "traversedPath":"common/application/recurringAppointment/traversedPath", //	For internal use only.	
        "isUnsafe":"common/application/recurringAppointment/isUnsafe", //	For internal use only.	
      ]); 
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}