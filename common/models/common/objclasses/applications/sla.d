module models.common.objclasses.applications.sla;

import models.common;

static this() {
  // Contains information about the tracked service-level KPIs for cases that belong to different customers.
  gsCommon.objclasses("common/application/sla", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "SLAId":"common/application/sla/SLAId", //	Unique identifier of the SLA.	
        "title":"common/application/sla/name", //	Type a descriptive name of the service level agreement (SLA).	
        "businessHoursId":"common/application/sla/businessHoursId", //	Choose the business hours for calculating SLA item timelines.	
        "objectTypeCode":"common/application/sla/objectTypeCode", //	Choose the entity type that the SLA is defined.	
        "objectTypeCode_display":"common/application/sla/objectTypeCode_display", //		
        "owningBusinessUnit":"common/application/sla/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/sla/owningUser", //	Unique identifier for the user that owns the record.	
        "owningTeam":"common/application/sla/owningTeam", //	Unique identifier for the team that owns the record.	
        "changedAttributeList":"common/application/sla/changedAttributeList", //	Type additional information to describe the SLA	
        "applicableFrom":"common/application/sla/applicableFrom", //	Select the field that specifies the date and time from which the SLA items will be calculated for the case record. For example, if you select the Case Created On field, SLA calculation will begin from the time the case is created.	
        "isDefault":"common/application/sla/isDefault", //	Tells whether this SLA is the default one.	
        "exchangeRate":"common/application/sla/exchangeRate", //	Exchange rate between the currency associated with the SLA record and the base currency.	
        "transactionCurrencyId":"common/application/sla/transactionCurrencyId", //	Unique identifier of the currency associated with the SLA record.	
        "stateCode":"common/application/sla/stateCode", //	Shows whether the Service Level Agreement (SLA) is active or inactive.	
        "stateCode_display":"common/application/sla/stateCode_display", //		
        "statusCode":"common/application/sla/statusCode", //	Select the status of the service level agreement (SLA).	
        "statusCode_display":"common/application/sla/statusCode_display", //		
        "solutionId":"common/application/sla/solutionId", //	Unique identifier of the associated solution.	
        "componentState":"common/application/sla/componentState", //	For internal use only.	
        "componentState_display":"common/application/sla/componentState_display", //		
        "overwriteTime":"common/application/sla/overwriteTime", //	For internal use only.	
        "isManaged":"common/application/sla/isManaged", //	For internal use only.	
        "SLAIdUnique":"common/application/sla/SLAIdUnique", //	For internal use only.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/sla/ownerIdType", //	The type of owner, either User or Team.	
        "applicableFromPickList":"common/application/sla/applicableFromPickList", //	Select the field that specifies the date and time from which the SLA items will be calculated. For example, if you select the Case Created On field, SLA calculation will begin from the time the case is created.	
        "applicableFromPickList_display":"common/application/sla/applicableFromPickList_display", //		
        "workflowId":"dataformat/guid/nullable/true", //	Workflow associated with the SLA.	
        "allowPauseResume":"common/application/sla/allowPauseResume", //	Select whether this SLA will allow pausing and resuming during the time calculation.	
        "SLAType":"common/application/sla/SLAType", //	Select the type of service level agreement (SLA).	
        "SLAType_display":"common/application/sla/SLAType_display", //		
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "primaryEntityOTC":"common/application/sla/primaryEntityOTC", //	Shows the primary entity that the SLA has been created for.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}