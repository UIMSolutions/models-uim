module models.common.objclasses.applications.email;

import models.common;

static this() {
  // Activity that is delivered using email protocols.
  gsCommon.objclasses("common/application/email", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //		Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //		Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/email/overriddenCreatedOn", //		Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/email/importSequenceNumber", //		Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //		Owner Id	
        "ownerIdType":"common/application/email/ownerIdType", //		The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/email/owningBusinessUnit", //		Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/email/owningUser", //		Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/email/owningTeam", //		Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/email/timeZoneRuleVersionNumber", //		For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/email/UTCConversionTimeZoneCode", //		Time zone code that was in use when the record was created.	
        "activityId":"common/application/email/activityId", //		Unique identifier of the activity.	
        "activityTypeCode":"common/application/email/activityTypeCode", //		Type of activity.	
        "isBilled":"common/application/email/isBilled", //		Information regarding whether the activity was billed as part of resolving a case.	
        "isRegularActivity":"common/application/email/isRegularActivity", //		Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated":"common/application/email/isWorkflowCreated", //		Information regarding whether the activity was created from a workflow rule.	
        "priorityCode":"common/application/email/priorityCode", //		Priority of the activity.	
        "priorityCode_display":"common/application/email/priorityCode_display", //			
        "regardingObjectId":"common/application/email/regardingObjectId", //		Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode":"common/application/email/regardingObjectTypeCode", //		The name of the entity linked by regardingObjectId	
        "scheduledEnd":"common/application/email/scheduledEnd", //		Scheduled end time of the activity.	
        "scheduledStart":"common/application/email/scheduledStart", //		Scheduled start time of the activity.	
        "sortDate":"common/application/email/sortDate", //		Shows the date and time by which the activities are sorted.	
        "subject":"common/application/email/subject", //		Subject associated with the activity.	
        "scheduledDurationMinutes":"common/application/email/scheduledDurationMinutes", //		Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes":"common/application/email/actualDurationMinutes", //		Actual duration of the activity in minutes.	
        "actualEnd":"common/application/email/actualEnd", //		Actual end time of the activity.	
        "actualStart":"common/application/email/actualStart", //		Actual start time of the activity.	
        "category":"common/application/email/category", //		Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory":"common/application/email/subcategory", //		Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "activityAdditionalParams":"common/application/email/activityAdditionalParams", //		Additional information provided by the external application as JSON. For internal use only.	
        "to":"common/application/email/to", //		The account, contact, lead, queue, or user recipients for the activity.	
        "from":"common/application/email/from", //		The sender of the activity.	
        "BCC":"common/application/email/BCC", //		Enter the recipients that are included on the activity distribution, but are not displayed to other recipients.	
        "CC":"common/application/email/CC", //		Enter the recipients that should be copied on the activity.	
        "sentOn":"common/application/email/sentOn", //		Date and time when the activity was sent.	
        "senderMailboxId":"common/application/email/senderMailboxId", //		Unique identifier of the mailbox associated with the sender of the email message.	
        "deliveryPriorityCode":"common/application/email/deliveryPriorityCode", //		Priority of delivery of the activity to the email server.	
        "deliveryPriorityCode_display":"common/application/email/deliveryPriorityCode_display", //			
        "directionCode":"common/application/email/directionCode", //		Select the direction of the activity as incoming or outbound.	
        "statusCode":"common/application/email/statusCode", //		Select the email's status.	
        "statusCode_display":"common/application/email/statusCode_display", //			
        "submittedBy":"common/application/email/submittedBy", //		Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365.	
        "mimeType":"common/application/email/mimeType", //		MIME type of the email message data.	
        "readReceiptRequested":"common/application/email/readReceiptRequested", //		Indicates that a read receipt is requested.	
        "trackingToken":"common/application/email/trackingToken", //		Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365.	
        "sender":"common/application/email/sender", //		Sender of the email.	
        "toRecipients":"common/application/email/toRecipients", //		Shows the email addresses corresponding to the recipients.	
        "deliveryReceiptRequested":"common/application/email/deliveryReceiptRequested", //		Select whether the sender should receive confirmation that the email was delivered.	
        "stateCode":"common/application/email/stateCode", //		Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited.	
        "stateCode_display":"common/application/email/stateCode_display", //			
        "messageId":"common/application/email/messageId", //		Unique identifier of the email message. Used only for email that is received.	
        "deliveryAttempts":"common/application/email/deliveryAttempts", //		Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues.	
        "compressed":"common/application/email/compressed", //		Indicates if the body is compressed.	
        "notifications":"common/application/email/notifications", //		Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments.	
        "notifications_display":"common/application/email/notifications_display", //			
        "transactionCurrencyId":"common/application/email/transactionCurrencyId", //		Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/email/exchangeRate", //		Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "emailSender":"common/application/email/emailSender", //		Shows the sender of the email.	
        "emailSenderObjectTypeCode":"common/application/email/emailSenderObjectTypeCode", //		The name of the entity linked by emailSender	
        "sendersAccount":"common/application/email/sendersAccount", //		Shows the parent account of the sender of the email.	
        "sendersAccountObjectTypeCode":"common/application/email/sendersAccountObjectTypeCode", //		The name of the entity linked by sendersAccount	
        "attachmentCount":"common/application/email/attachmentCount", //		Shows the umber of attachments of the email message.	
        "parentActivityId":"common/application/email/parentActivityId", //		Select the activity that the email is associated with.	
        "inReplyTo":"common/application/email/inReplyTo", //		Type the ID of the email message that this email activity is a response to.	
        "baseConversationIndexHash":"common/application/email/baseConversationIndexHash", //		Hash of base of conversation index.	
        "conversationIndex":"common/application/email/conversationIndex", //		Identifier for all the email responses for this conversation.	
        "correlationMethod":"common/application/email/correlationMethod", //	Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only.	
        "correlationMethod_display":"common/application/email/correlationMethod_display", //			
        "postponeEmailProcessingUntil":"common/application/email/postponeEmailProcessingUntil", //		For internal use only.	
        "processId":"common/application/email/processId", //		Shows the ID of the process.	
        "stageId":"common/application/email/stageId", //		Shows the ID of the stage.	
        "isUnsafe":"common/application/email/isUnsafe", //		For internal use only.	
        "SLAId":"common/application/email/SLAId", //		Choose the service level agreement (SLA) that you want to apply to the email record.	
        "SLAInvokedId":"common/application/email/SLAInvokedId", //		Last SLA that was applied to this email. This field is for internal use only.	
        "onHoldTime":"common/application/email/onHoldTime", //		Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/email/lastOnHoldTime", //		Contains the date and time stamp of the last on hold time.	
        "traversedPath":"common/application/email/traversedPath", //		For internal use only.	
        "attachmentOpenCount":"common/application/email/attachmentOpenCount", //		Shows the number of times an email attachment has been viewed.	
        "conversationTrackingId":"common/application/email/conversationTrackingId", //		Conversation Tracking Id.	
        "delayedEmailSendTime":"common/application/email/delayedEmailSendTime", //		Enter the expected date and time when email will be sent.	
        "lastOpenedTime":"common/application/email/lastOpenedTime", //		Shows the latest date and time when email was opened.	
        "linksClickedCount":"common/application/email/linksClickedCount", //		Shows the number of times a link in an email has been clicked.	
        "openCount":"common/application/email/openCount", //		Shows the number of times an email has been opened.	
        "replyCount":"common/application/email/replyCount", //		Shows the number of replies received for an email.	
        "emailTrackingId":"common/application/email/emailTrackingId", //		Email Tracking Id.	
        "followEmailUserPreference":"common/application/email/followEmailUserPreference", //		Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state.	
        "isEmailFollowed":"common/application/email/isEmailFollowed", //		For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email.	
        "emailReminderExpiryTime":"common/application/email/emailReminderExpiryTime", //		Shows the date and time when an email reminder expires.	
        "emailReminderType":"common/application/email/emailReminderType", //		Shows the type of the email reminder.	
        "emailReminderType_display":"common/application/email/emailReminderType_display", //			
        "emailReminderStatus":"common/application/email/emailReminderStatus", //		Shows the status of the email reminder.	
        "emailReminderStatus_display":"common/application/email/emailReminderStatus_display", //			
        "emailReminderText":"common/application/email/emailReminderText", //		For internal use only.	
        "templateId":"common/application/email/templateId", //		For internal use only. ID for template used in email.	
        "reminderActionCardId":"common/application/email/reminderActionCardId", //		Reminder Action Card Id.	
        "isEmailReminderSet":"common/application/email/isEmailReminderSet", //		For internal use only. Shows whether this email Reminder is Set.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}