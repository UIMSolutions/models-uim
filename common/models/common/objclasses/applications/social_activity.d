module models.common.objclasses.applications.social_activity;

import models.common;

static this() {
  // For internal use only.
  gsCommon.objclasses("common/application/socialActivity", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/socialActivity/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/socialActivity/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/socialActivity/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/socialActivity/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/socialActivity/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/socialActivity/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/socialActivity/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/socialActivity/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "activityId":"common/application/socialActivity/activityId", //	Unique identifier of the activity.	
        "activityTypeCode":"common/application/socialActivity/activityTypeCode", //	Type of activity.	
        "isBilled":"common/application/socialActivity/isBilled", //	Information regarding whether the fax activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/socialActivity/isRegularActivity", //	Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/socialActivity/isWorkflowCreated", //	Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/socialActivity/priorityCode", //	Priority of the activity.	
        "priorityCode_display":"common/application/socialActivity/priorityCode_display", //		
        "regardingObjectId":"common/application/socialActivity/regardingObjectId", //	Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/socialActivity/regardingObjectTypeCode", //	The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/socialActivity/scheduledEnd", //	Scheduled end time of the activity.	
        "scheduledStart":"common/application/socialActivity/scheduledStart", //	Scheduled start time of the activity.	
        "sortDate":"common/application/socialActivity/sortDate", //	Shows the date and time by which the activities are sorted.	
        "subject":"common/application/socialActivity/subject", //	Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/socialActivity/scheduledDurationMinutes", //	Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/socialActivity/actualDurationMinutes", //	Actual duration of the activity in minutes.	
        "actualEnd":"common/application/socialActivity/actualEnd", //	Actual end time of the activity.	
        "actualStart":"common/application/socialActivity/actualStart", //	Actual start time of the activity.	
        "activityAdditionalParams":"common/application/socialActivity/activityAdditionalParams", //	Additional information provided by the external application as JSON. For internal use only.	
        "to":"common/application/socialActivity/to", //	Enter the account, contact, lead, or user recipients of the phone call.	
        "from":"common/application/socialActivity/from", //	The sender of the activity.	
        "resources":"common/application/socialActivity/resources", //	Users or facility/equipment that are required for the activity.	
        "community":"common/application/socialActivity/community", //	Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only.	
        "community_display":"common/application/socialActivity/community_display", //		
        "directionCode":"common/application/socialActivity/directionCode", //	Select the direction of the activity as incoming or outbound.	
        "traversedPath":"common/application/socialActivity/traversedPath", //	For internal use only.	
        "processId":"common/application/socialActivity/processId", //	Unique identifier of the Process.	
        "stageId":"common/application/socialActivity/stageId", //	Unique identifier of the Stage.	
        "stateCode":"common/application/socialActivity/stateCode", //	Shows whether the social activity completed. This field is read-only.	
        "stateCode_display":"common/application/socialActivity/stateCode_display", //		
        "statusCode":"common/application/socialActivity/statusCode", //	Shows whether the social activity is completed, failed, or processing. This field is read-only.	
        "statusCode_display":"common/application/socialActivity/statusCode_display", //		
        "transactionCurrencyId":"common/application/socialActivity/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/socialActivity/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "sentimentValue":"common/application/socialActivity/sentimentValue", //	Value derived after assessing words commonly associated with a negative, neutral, or positive sentiment that occurs in a social post. Sentiment information can also be reported as numeric values.	
        "postedOn":"common/application/socialActivity/postedOn", //	For internal use only.	
        "postURL":"common/application/socialActivity/postURL", //	Shows the URL of the post.	
        "inResponseTo":"common/application/socialActivity/inResponseTo", //	Unique identifier for the responses to a post. For internal use only.	
        "postMessageType":"common/application/socialActivity/postMessageType", //	Shows if the social post originated as a private or public message.	
        "postMessageType_display":"common/application/socialActivity/postMessageType_display", //		
        "postId":"common/application/socialActivity/postId", //	Unique identifier of the post. For internal use only.	
        "threadId":"common/application/socialActivity/threadId", //	Unique identifier of the social conversation. For internal use only.	
        "SLAInvokedId":"common/application/socialActivity/SLAInvokedId", //	Last SLA that was applied to this Social Activity. This field is for internal use only.	
        "postFromProfileId":"common/application/socialActivity/postFromProfileId", //	Shows the author of the post on the corresponding social channel.	
        "postToProfileId":"common/application/socialActivity/postToProfileId", //	Shows the recipients of the social post.	
        "postAuthorAccount":"common/application/socialActivity/postAuthorAccount", //	Shows the parent account of the author of the post.	
        "postAuthorAccountType":"common/application/socialActivity/postAuthorAccountType", //	The type of post author account, either Account or Contact.	
        "postAuthor":"common/application/socialActivity/postAuthor", //	Shows the contact or account that authored the post.	
        "postAuthorType":"common/application/socialActivity/postAuthorType", //	The type of post author, either Account or Contact.	
        "socialAdditionalParams":"common/application/socialActivity/socialAdditionalParams", //	For internal use only.	
        "SLAId":"common/application/socialActivity/SLAId", //	Choose the service level agreement (SLA) that you want to apply to the Social Activity record.	
        "onHoldTime":"common/application/socialActivity/onHoldTime", //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/socialActivity/lastOnHoldTime", //	Contains the date and time stamp of the last on hold time.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}