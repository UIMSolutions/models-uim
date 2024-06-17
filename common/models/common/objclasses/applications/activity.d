module models.common.objclasses.applications.activity;

import models.common;

static this() {
  // Task performed, or to be performed, by a user. An activity is any action for which an entry can be made on a calendar.
  gsCommon.objclasses("common/application/activity", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity")
      .attclasses([        
        "createdOnBehalfBy":"dataformat/guid/nullable/true", // 	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", // 	Shows who last updated the record on behalf of another user.	
        "ownerId":"common/ownerId", // 	Owner Id	
        "ownerIdType":"common/application/activity/ownerIdType", // 	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/activity/owningBusinessUnit", // 	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/activity/owningUser", // 	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/activity/owningTeam", // 	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/activity/timeZoneRuleVersionNumber", // 	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/activity/UTCConversionTimeZoneCode", // 	Time zone code that was in use when the record was created.	
        "activityTypeCode":"common/application/activity/activityTypeCode", // 	Type of activity.	
        "isBilled":"common/application/activity/isBilled", // 	Information regarding whether the activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/activity/isRegularActivity", // 	Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/activity/isWorkflowCreated", // 	Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/activity/priorityCode", // 	Priority of the activity.	
        "priorityCode_display":"common/application/activity/priorityCode_display", // 		
        "regardingObjectId":"common/application/activity/regardingObjectId", // 	Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/activity/regardingObjectTypeCode", // 	The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/activity/scheduledEnd", // 	Scheduled end time of the activity.	
        "scheduledStart":"common/application/activity/scheduledStart", // 	Scheduled start time of the activity.	
        "sortDate":"common/application/activity/sortDate", // 	Shows the date and time by which the activities are sorted.	
        "subject":"common/application/activity/subject", // 	Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/activity/scheduledDurationMinutes", // 	Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/activity/actualDurationMinutes", // 	Actual duration of the activity in minutes.	
        "actualEnd":"common/application/activity/actualEnd", // 	Actual end time of the activity.	
        "actualStart":"common/application/activity/actualStart", // 	Actual start time of the activity.	
        "activityAdditionalParams":"common/application/activity/activityAdditionalParams", // 	Additional information provided by the external application as JSON. For internal use only.	
        "instanceTypeCode":"common/application/activity/instanceTypeCode", // 	Type of instance of a recurring series.	
        "instanceTypeCode_display":"common/application/activity/instanceTypeCode_display", // 		
        "isMapiPrivate":"common/application/activity/isMapiPrivate", // 	For internal use only.	
        "seriesId":"common/application/activity/seriesId", // 	Uniqueidentifier specifying the id of recurring series of an instance.	
        "sentOn":"common/application/activity/sentOn", // 	Date and time when the activity was sent.	
        "senderMailboxId":"common/application/activity/senderMailboxId", // 	Unique identifier of the mailbox associated with the sender of the email message.	
        "deliveryPriorityCode":"common/application/activity/deliveryPriorityCode", // 	Priority of delivery of the activity to the email server.	
        "deliveryPriorityCode_display":"common/application/activity/deliveryPriorityCode_display", // 		
        "community":"common/application/activity/community", // 	Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only.	
        "community_display":"common/application/activity/community_display", // 		
        "leftVoiceMail":"common/application/activity/leftVoiceMail", // 	Left the voice mail	
        "deliveryLastAttemptedOn":"common/application/activity/deliveryLastAttemptedOn", // 	Date and time when the delivery of the activity was last attempted.	
        "exchangeItemId":"common/application/activity/exchangeItemId", // 	The message id of activity which is returned from Exchange Server.	
        "exchangeWebLink":"common/application/activity/exchangeWebLink", // 	Shows the web link of Activity of type email.	
        "postponeActivityProcessingUntil":"common/application/activity/postponeActivityProcessingUntil", // 	For internal use only.	
        "stateCode":"common/application/activity/stateCode", // 	Status of the activity.	
        "stateCode_display":"common/application/activity/stateCode_display", // 		
        "statusCode":"common/application/activity/statusCode", // 	Reason for the status of the activity.	
        "statusCode_display":"common/application/activity/statusCode_display", // 		
        "transactionCurrencyId":"common/application/activity/transactionCurrencyId", // 	Unique identifier of the currency associated with the activitypointer.	
        "exchangeRate":"common/application/activity/exchangeRate", // 	Exchange rate for the currency associated with the activitypointer with respect to the base currency.	
        "allActivityParties":"common/application/activity/allActivityParties", // 	All activity parties associated with this activity.	
        "traversedPath":"common/application/activity/traversedPath", // 	For internal use only.	
        "processId":"common/application/activity/processId", // 	Unique identifier of the Process.	
        "stageId":"common/application/activity/stageId", // 	Unique identifier of the Stage.	
        "SLAId":"common/application/activity/SLAId", // 	Choose the service level agreement (SLA) that you want to apply to the case record.	
        "SLAInvokedId":"common/application/activity/SLAInvokedId", // 	Last SLA that was applied to this case. This field is for internal use only.	
        "onHoldTime":"common/application/activity/onHoldTime", // 	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/activity/lastOnHoldTime", // 	Contains the date and time stamp of the last on hold time.	
      ]);
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}
