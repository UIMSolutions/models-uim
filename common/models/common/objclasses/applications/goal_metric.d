module models.common.objclasses.applications.goal_metric;

import models.common;

static this() {
  // Type of measurement for a goal, such as money amount or count.
  gsCommon.objclasses("common/application/goalMetric", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "title":"common/application/goalMetric/name", //	Name of the goal metric.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the record.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who modified the record.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization.	
        "stateCode":"common/application/goalMetric/stateCode", //	Status of the goal metric.	
        "stateCode_display":"common/application/goalMetric/stateCode_display", //		
        "statusCode":"common/application/goalMetric/statusCode", //	Reason for the status of the goal metric.	
        "statusCode_display":"common/application/goalMetric/statusCode_display", //		
        "importSequenceNumber":"common/application/goalMetric/importSequenceNumber", //	Sequence number of the import that created this record.	
        "overriddenCreatedOn":"common/application/goalMetric/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "timeZoneRuleVersionNumber":"common/application/goalMetric/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/goalMetric/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "amountDataType":"common/application/goalMetric/amountDataType", //	Data type of the amount.	
        "amountDataType_display":"common/application/goalMetric/amountDataType_display", //		
        "isAmount":"common/application/goalMetric/isAmount", //	Information that indicates whether the metric type is Count or Amount.	
        "isStretchTracked":"common/application/goalMetric/isStretchTracked", //	Indicates whether the goal metric tracks stretch targets.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}