module models.common.objclasses.applications.queue;

import models.common;

static this() {
  // A list of records that require action, such as accounts, activities, and cases.
  gsCommon.objclasses("common/application/queue", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "businessUnitId":"dataformat/guid/nullable/false", //	Unique identifier of the business unit with which the queue is associated.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization associated with the queue.	
        "emailAddress":"common/application/queue/emailAddress", //	Email address that is associated with the queue.	
        "primaryUserId":"common/application/queue/primaryUserId", //	Unique identifier of the owner of the queue.	
        "queueTypeCode":"common/application/queue/queueTypeCode", //	Type of queue that is automatically assigned when a user or queue is created. The type can be public, private, or work in process.	
        "queueTypeCode_display":"common/application/queue/queueTypeCode_display", //		
        "title":"common/application/queue/name", //	Name of the queue.	
        "queueSemantics":"common/application/queue/queueSemantics", //	For internal use only.	
        "ignoreUnsolicitedEmail":"common/application/queue/ignoreUnsolicitedEmail", //	Information that specifies whether a queue is to ignore unsolicited email (deprecated).	
        "isFaxQueue":"common/application/queue/isFaxQueue", //	Indication of whether a queue is the fax delivery queue.	
        "emailPassword":"common/application/queue/emailPassword", //	This attribute is no longer used. The data is now in the Mailbox.Password attribute.	
        "incomingEmailDeliveryMethod":"common/application/queue/incomingEmailDeliveryMethod", //	Incoming email delivery method for the queue.	
        "incomingEmailDeliveryMethod_display":"common/application/queue/incomingEmailDeliveryMethod_display", //		
        //:"common/application/queue/emailUsername", //	This attribute is no longer used. The data is now in the Mailbox.UserName attribute.	
        "outgoingEmailDeliveryMethod":"common/application/queue/outgoingEmailDeliveryMethod", //	Outgoing email delivery method for the queue.	
        "outgoingEmailDeliveryMethod_display":"common/application/queue/outgoingEmailDeliveryMethod_display", //		
        "allowEmailCredentials":"common/application/queue/allowEmailCredentials", //	This attribute is no longer used. The data is now in the Mailbox.AllowEmailConnectorToUseCredentials attribute.	
        "incomingEmailFilteringMethod":"common/application/queue/incomingEmailFilteringMethod", //	Convert Incoming Email To Activities	
        "incomingEmailFilteringMethod_display":"common/application/queue/incomingEmailFilteringMethod_display", //		
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/queue/ownerIdType", //	The type of owner, either User or Team.	
        "overriddenCreatedOn":"common/application/queue/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "statusCode":"common/application/queue/statusCode", //	Reason for the status of the queue.	
        "statusCode_display":"common/application/queue/statusCode_display", //		
        "owningBusinessUnit":"common/application/queue/owningBusinessUnit", //	Unique identifier of the business unit that owns the queue.	
        "owningUser":"common/application/queue/owningUser", //	Unique identifier of the user who owns the queue.	
        "stateCode":"common/application/queue/stateCode", //	Status of the queue.	
        "stateCode_display":"common/application/queue/stateCode_display", //		
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the queue.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the queue.	
        "numberOfItems":"common/application/queue/numberOfItems", //	Number of Queue items associated with the queue.	
        "numberOfMembers":"common/application/queue/numberOfMembers", //	Number of Members associated with the queue.	
        "importSequenceNumber":"common/application/queue/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "owningTeam":"common/application/queue/owningTeam", //	Unique identifier of the team who owns the queue.	
        "transactionCurrencyId":"common/application/queue/transactionCurrencyId", //	Unique identifier of the currency associated with the queue.	
        "exchangeRate":"common/application/queue/exchangeRate", //	Exchange rate for the currency associated with the queue with respect to the base currency.	
        "emailRouterAccessApproval":"common/application/queue/emailRouterAccessApproval", //	Shows the status of the primary email address.	
        "emailRouterAccessApproval_display":"common/application/queue/emailRouterAccessApproval_display", //		
        "defaultMailbox":"common/application/queue/defaultMailbox", //	Select the mailbox associated with this queue.	
        "entityImageId":"common/application/queue/entityImageId", //	For internal use only.	
        "isEmailAddressApprovedByO365Admin":"common/application/queue/isEmailAddressApprovedByO365Admin", //	Shows the status of approval of the email address by O365 Admin.	
        "queueViewType":"common/application/queue/queueViewType", //	Select whether the queue is public or private. A public queue can be viewed by all. A private queue can be viewed only by the members added to the queue.	
        "queueViewType_display":"common/application/queue/queueViewType_display", //		
      ]); 
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}