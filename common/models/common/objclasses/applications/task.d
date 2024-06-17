module models.common.objclasses.applications.task;

import models.common;

static this() {
  // Generic activity representing work needed to be done.
  gsCommon.objclasses("common/application/task", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", // Shows who created the record on behalf of another user.", 
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", // Shows who last updated the record on behalf of another user.", 
        "overriddenCreatedOn":"common/application/task/overriddenCreatedOn", // Date and time that the record was migrated.", 
        "importSequenceNumber":"common/application/task/importSequenceNumber", // Unique identifier of the data import or data migration that created this record.", 
        "ownerId":"common/ownerId", // Owner Id", 
        "ownerIdType":"common/application/task/ownerIdType", // The type of owner, either User or Team.", 
        "owningBusinessUnit":"common/application/task/owningBusinessUnit", // Unique identifier for the business unit that owns the record", 
        "owningUser":"common/application/task/owningUser", // Unique identifier of the user that owns the activity.", 
        "owningTeam":"common/application/task/owningTeam", // Unique identifier for the team that owns the record.", 
        "timeZoneRuleVersionNumber":"common/application/task/timeZoneRuleVersionNumber", // For internal use only.", 
        "UTCConversionTimeZoneCode":"common/application/task/UTCConversionTimeZoneCode", // Time zone code that was in use when the record was created.", 
        "activityId":"common/application/task/activityId", // Unique identifier of the activity.", 
        "activityTypeCode":"common/application/task/activityTypeCode", // Type of activity.", 
        "isBilled":"common/application/task/isBilled", // Information regarding whether the fax activity was billed as part of resolving a case.", 
        "isRegularActivity":"common/application/task/isRegularActivity", // Information regarding whether the activity is a regular activity type or event type.", 
        "isWorkflowCreated":"common/application/task/isWorkflowCreated", // Information regarding whether the activity was created from a workflow rule.", 
        "priorityCode":"common/application/task/priorityCode", // Priority of the activity.", 
        "priorityCode_display":"common/application/task/priorityCode_display", // ", 
        "regardingObjectId":"common/application/task/regardingObjectId", // Unique identifier of the object with which the activity is associated.", 
        "regardingObjectTypeCode":"common/application/task/regardingObjectTypeCode", // The name of the entity linked by regardingObjectId", 
        "scheduledEnd":"common/application/task/scheduledEnd", // Scheduled end time of the activity.", 
        "scheduledStart":"common/application/task/scheduledStart", // Scheduled start time of the activity.", 
        "sortDate":"common/application/task/sortDate", // Shows the date and time by which the activities are sorted.", 
        "subject":"common/application/task/subject", // Subject associated with the activity.", 
        "scheduledDurationMinutes":"common/application/task/scheduledDurationMinutes", // Scheduled duration of the activity, specified in minutes.", 
        "actualDurationMinutes":"common/application/task/actualDurationMinutes", // Actual duration of the activity in minutes.", 
        "actualEnd":"common/application/task/actualEnd", // Actual end time of the activity.", 
        "actualStart":"common/application/task/actualStart", // Actual start time of the activity.", 
        "category":"common/application/task/category", // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.", 
        "subcategory":"common/application/task/subcategory", // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.", 
        "activityAdditionalParams":"common/application/task/activityAdditionalParams", // Additional information provided by the external application as JSON. For internal use only.", 
        "stateCode":"common/application/task/stateCode", // Shows whether the task is open, completed, or canceled. Completed and canceled tasks are read-only and can't be edited.", 
        "stateCode_display":"common/application/task/stateCode_display", // ", 
        "percentComplete":"common/application/task/percentComplete", // Type the percentage complete value for the task to track tasks to completion.", 
        "statusCode":"common/application/task/statusCode", // Select the task's status.", 
        "statusCode_display":"common/application/task/statusCode_display", // ", 
        "transactionCurrencyId":"common/application/task/transactionCurrencyId", // Choose the local currency for the record to make sure budgets are reported in the correct currency.", 
        "exchangeRate":"common/application/task/exchangeRate", // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.", 
        "processId":"common/application/task/processId", // Shows the ID of the process.", 
        "stageId":"common/application/task/stageId", // Shows the ID of the stage.", 
        "traversedPath":"common/application/task/traversedPath", // For internal use only.", 
        "crmTaskAssignedUniqueId":"common/application/task/crmTaskAssignedUniqueId", // Assigned Task Unique Id", 
        "SLAId":"common/application/task/SLAId", // Choose the service level agreement (SLA) that you want to apply to the Task record.", 
        "SLAInvokedId":"common/application/task/SLAInvokedId", // Last SLA that was applied to this Task. This field is for internal use only.", 
        "onHoldTime":"common/application/task/onHoldTime", // Shows how long, in minutes, that the record was on hold.", 
        "lastOnHoldTimes":"common/application/task/lastOnHoldTime", // Contains the date and time stamp of the last on hold time.", 
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}