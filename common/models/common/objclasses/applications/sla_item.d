module models.common.objclasses.applications.sla_item;

import models.common;

static this() {
  // Contains information about a tracked support KPI for a specific customer.
  gsCommon.objclasses("common/application/slaItem", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "SLAItemId":"common/application/slaItem/SLAItemId", //	Unique identifier of the SLA Item.	
        "title":"common/application/slaItem/name", //	Type a descriptive name of the service level agreement (SLA) item.	
        "owningBusinessUnit":"common/application/slaItem/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "relatedField":"common/application/slaItem/relatedField", //	Select the service level agreement (SLA) key performance indicator (KPI) that this SLA Item is created for.	
        "SLAId":"common/application/slaItem/SLAId", //	Unique identifier for SLA associated with SLA Item.	
        "exchangeRate":"common/application/slaItem/exchangeRate", //	Exchange rate between the currency associated with the SLA Item record and the base currency.	
        "transactionCurrencyId":"common/application/slaItem/transactionCurrencyId", //	Unique identifier of the currency associated with the SLA Item record.	
        "applicableWhenXml":"common/application/slaItem/applicableWhenXml", //	Condition for SLA item	
        "successConditionsXml":"common/application/slaItem/successConditionsXml", //	Condition for SLA item	
        "solutionId":"common/application/slaItem/solutionId", //	Unique identifier of the associated solution.	
        "componentState":"common/application/slaItem/componentState", //	For internal use only.	
        "componentState_display":"common/application/slaItem/componentState_display", //		
        "overwriteTime":"common/application/slaItem/overwriteTime", //	For internal use only.	
        "isManaged":"common/application/slaItem/isManaged", //	For internal use only.	
        "SLAItemIdUnique":"common/application/slaItem/SLAItemIdUnique", //	For internal use only.	
        "sequenceNumber":"common/application/slaItem/sequenceNumber", //	Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address.	
        "failureAfter":"common/application/slaItem/failureAfter", //	Select how soon the success criteria must be met until the SLA item is considered failed and failure actions are initiated. The actual duration is based on the business hours as specified in the associated SLA record.	
        "warnAfter":"common/application/slaItem/warnAfter", //	Select how soon the success criteria must be met before warning actions are initiated. The actual duration is based on the business hours as specified in the associated SLA record.	
        "owningUser":"common/application/slaItem/owningUser", //	Unique identifier of the user who owns the SLA Item record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/slaItem/ownerIdType", //	The type of owner, either User or Team.	
        "workflowId":"dataformat/guid/nullable/true", //	Workflow associated with the SLA Item.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}