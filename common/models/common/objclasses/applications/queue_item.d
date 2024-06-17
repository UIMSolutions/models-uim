module models.common.objclasses.applications.queue_item;

import models.common;

static this() {
  // A specific item in a queue, such as a case record or an activity record.
  gsCommon.objclasses("common/application/queueItem", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "queueItemId":"common/application/queueItem/queueItemId", //	Unique identifier of the queue item.	
        "queueId":"common/application/queueItem/queueId", //	Choose the queue that the item is assigned to.	
        "objectId":"common/application/queueItem/objectId", //	Choose the activity, case, or article assigned to the queue.	
        "objectIdTypeCode":"common/application/queueItem/objectIdTypeCode", //	The name of the entity linked by objectId	
        "objectTypeCode":"common/application/queueItem/objectTypeCode", //	Select the type of the queue item, such as activity, case, or appointment.	
        "objectTypeCode_display":"common/application/queueItem/objectTypeCode_display", //		
        "title":"common/application/queueItem/title", //	Shows the title or name that describes the queue record. This value is copied from the record that was assigned to the queue.	
        "enteredOn":"common/application/queueItem/enteredOn", //	Shows the date the record was assigned to the queue.	
        "priority":"common/application/queueItem/priority", //	Priority of the queue item.	
        "state":"common/application/queueItem/state", //	Status of the queue item.	
        "status":"common/application/queueItem/status", //	Reason for the status of the queue item.	
        "toRecipients":"common/application/queueItem/toRecipients", //	Recipients listed on the To line of the message for email queue items.	
        "sender":"common/application/queueItem/sender", //	Sender who created the queue item.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization with which the queue item is associated.	
        "timeZoneRuleVersionNumber":"common/application/queueItem/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/queueItem/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "overriddenCreatedOn":"common/application/queueItem/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "workerIdModifiedOn":"common/application/queueItem/workerIdModifiedOn", //	Shows the date and time when the queue item was last assigned to a user.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/queueItem/ownerIdType", //	The type of owner, either User or Team.	
        "owningUser":"common/application/queueItem/owningUser", //	Unique identifier of the user who owns the queue item.	
        "workerId":"common/application/queueItem/workerId", //	Shows who is working on the queue item.	
        "workerIdType":"common/application/queueItem/workerIdType", //	The name of the entity linked by workerId	
        "owningBusinessUnit":"common/application/queueItem/owningBusinessUnit", //	Unique identifier of the business unit that owns the queue item.	
        "statusCode":"common/application/queueItem/statusCode", //	Select the item's status.	
        "statusCode_display":"common/application/queueItem/statusCode_display", //		
        "stateCode":"common/application/queueItem/stateCode", //	Shows whether the queue record is active or inactive. Inactive queue records are read-only and can't be edited unless they are reactivated.	
        "stateCode_display":"common/application/queueItem/stateCode_display", //		
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the queueitem.	
        "transactionCurrencyId":"common/application/queueItem/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/queueItem/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "importSequenceNumber":"common/application/queueItem/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.		
      ]); 
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}