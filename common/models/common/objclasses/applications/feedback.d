module models.common.objclasses.applications.feedback;

import models.common;

static this() {
  // Container for feedback and ratings for knowledge articles.
  gsCommon.objclasses("common/application/feedback", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "title":"common/application/feedback/title", //	Type a title for the feedback.	
        "feedbackId":"common/application/feedback/feedbackId", //	FeedbackId	
        "rating":"common/application/feedback/rating", //	Specifies how helpful the related record was.	
        "minRating":"common/application/feedback/minRating", //	Enter the minimum rating value.	
        "maxRating":"common/application/feedback/maxRating", //	Enter the maximum rating value.	
        "normalizedRating":"common/application/feedback/normalizedRating", //	Shows the rating scaled to a value between 0 and 1 based on minimum and maximum ratings.	
        "comments":"common/application/feedback/comments", //	Type the feedback comments.	
        "source":"common/application/feedback/source", //	Shows where the feedback was submitted from.	
        "source_display":"common/application/feedback/source_display", //		
        "stateCode":"common/application/feedback/stateCode", //	Shows whether the feedback is open, rejected or closed.	
        "stateCode_display":"common/application/feedback/stateCode_display", //		
        "statusCode":"common/application/feedback/statusCode", //	Select the feedback's status.	
        "statusCode_display":"common/application/feedback/statusCode_display", //		
        "regardingObjectId":"common/application/feedback/regardingObjectId", //	Shows the record that the feedback is associated with.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who modified the record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/feedback/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/feedback/owningBusinessUnit", //	Unique identifier of the business unit that owns the knowledge article views.	
        "owningUser":"common/application/feedback/owningUser", //	Unique identifier of the user who owns this feedback.	
        "owningTeam":"common/application/feedback/owningTeam", //	Unique identifier of the team that owns the feedback.	
        "closedBy":"common/application/feedback/closedBy", //	Shows who closed the record.	
        "closedOn":"common/application/feedback/closedOn", //	Shows the date and time when the record was closed. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	
        "importSequenceNumber":"common/application/feedback/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "overriddenCreatedOn":"common/application/feedback/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "transactionCurrencyId":"common/application/feedback/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/feedback/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "createdByContact":"common/application/feedback/createdByContact", //	Shows the contact who created the record.	
        "createdOnBehalfByContact":"dataformat/guid/nullable/trueContact", //	Shows the contact who created the record on behalf of another user.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}