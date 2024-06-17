module models.common.objclasses.applications.sla_kpi_instance;

import models.common;

static this() {
  // Contains information about the tracked service-level KPIs for cases that belong to different customers.
  gsCommon.objclasses("common/application/slaKpiInstance", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "SLAKPIInstanceId":"common/application/slaKpiInstance/SLAKPIInstanceId", //	Unique identifier of the SLA KPI Instance.	
        "title":"common/application/slaKpiInstance/name", //	Type a descriptive name for the service level agreement (SLA) key performance indicator (KPI) instance.	
        "computedFailureTime":"common/application/slaKpiInstance/computedFailureTime", //	Computed Failure Date and time	
        "computedWarningTime":"common/application/slaKpiInstance/computedWarningTime", //	Computed Warning Date and time	
        "failureTime":"common/application/slaKpiInstance/failureTime", //	Enter the date and time when the service level agreement (SLA) key performance indicator (KPI) will expire.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/slaKpiInstance/ownerIdType", //	The type of owner, either User or Team.	
        "owningUser":"common/application/slaKpiInstance/owningUser", //	Owning User.	
        "owningTeam":"common/application/slaKpiInstance/owningTeam", //	OwningTeam.	
        "owningBusinessUnit":"common/application/slaKpiInstance/owningBusinessUnit", //	Owning Business Unit.	
        "regarding":"common/application/slaKpiInstance/regarding", //	Unique identifier of the record that this service level agreement (SLA) key performance indicator (KPI) instance is associated with.	
        "status":"common/application/slaKpiInstance/status", //	Reason for the status of the service level agreement (SLA) key performance indicator (KPI) instance. For example, the SLA KPI could be Noncompliant or Succeeded.	
        "status_display":"common/application/slaKpiInstance/status_display", //		
        "succeededOn":"common/application/slaKpiInstance/succeededOn", //	Shows the date and time when the service level agreement (SLA) key performance indicator (KPI) success criteria was met.	
        "warningTime":"common/application/slaKpiInstance/warningTime", //	Enter the date and time when the service level agreement (SLA) key performance indicator (KPI)will go to a warning state.	
        "transactionCurrencyId":"common/application/slaKpiInstance/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/slaKpiInstance/exchangeRate", //	For internal use only.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	For internal use only.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	For internal use only.	
        "warningTimeReached":"common/application/slaKpiInstance/warningTimeReached", //	Shows information about whether the case has reached its warning time.	
        "warningTimeReached_display":"common/application/slaKpiInstance/warningTimeReached_display", //		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}