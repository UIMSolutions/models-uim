module models.common.objclasses.applications.connection_role;

import models.common;

static this() {
  // Role describing a relationship between a two records.
  gsCommon.objclasses("common/application/connectionRole", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity")
      .attclasses([
        "importSequenceNumber":"common/application/connectionRole/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "stateCode":"common/application/connectionRole/stateCode", //	Status of the connection role.	
        "stateCode_display":"common/application/connectionRole/stateCode_display", //		
        "statusCode":"common/application/connectionRole/statusCode", //	Reason for the status of the connection role.	
        "statusCode_display":"common/application/connectionRole/statusCode_display", //		
        "category":"common/application/connectionRole/category", //	Categories for connection roles.	
        "category_display":"common/application/connectionRole/category_display", //		
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization that this connection role belongs to.	
        "solutionId":"common/application/connectionRole/solutionId", //	Unique identifier of the associated solution.	
        "componentState":"common/application/connectionRole/componentState", //	State of the component.	
        "componentState_display":"common/application/connectionRole/componentState_display", //		
        "overwriteTime":"common/application/connectionRole/overwriteTime", //	Date and time when the record was last overwritten.	
        "connectionRoleIdUnique":"common/application/connectionRole/connectionRoleIdUnique", //	Unique identifier of the published or unpublished connection role record.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who modified the relationship role.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the relationship role.	
        "isManaged":"common/application/connectionRole/isManaged", //	Indicates whether the solution component is part of a managed solution.	
        "isCustomizable":"common/application/connectionRole/isCustomizable", //	Information that specifies whether this component can be customized.	
        "introducedVersion":"common/application/connectionRole/introducedVersion", //	Version in which the form is introduced.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}