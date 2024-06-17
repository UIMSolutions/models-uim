module models.common.objclasses.applications.position;

import models.common;

static this() {
  // Position of a user in the hierarchy
  gsCommon.objclasses("common/application/position", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"common/application/position/createdOnBehalfBy", //	Unique identifier of the delegate user who created the record.	
        "modifiedOnBehalfBy":"common/application/position/modifiedOnBehalfBy", //	Unique identifier of the delegate user who modified the record.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier for the organization	
        "stateCode":"common/application/position/stateCode", //	Status of the Position	
        "stateCode_display":"common/application/position/stateCode_display", //		
        "statusCode":"common/application/position/statusCode", //	Reason for the status of the Position	
        "statusCode_display":"common/application/position/statusCode_display", //		
        "importSequenceNumber":"common/application/position/importSequenceNumber", //	Sequence number of the import that created this record.	
        "overriddenCreatedOn":"common/application/position/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "timeZoneRuleVersionNumber":"common/application/position/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/position/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "title":"common/application/position/name", //	The name of the position.	
        "parentPositionId":"common/application/position/parentPositionId", //	Parent position.	
        "exchangeRate":"common/application/position/exchangeRate", //	Exchange rate for the currency associated with the position with respect to the base currency.	
        "transactionCurrencyId":"common/application/position/transactionCurrencyId", //	Unique identifier of the currency associated with the position.	
      ]); 
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}