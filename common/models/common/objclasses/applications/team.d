module models.common.objclasses.applications.team;

import models.common;

static this() {
  // Collection of system users that routinely collaborate. Teams can be used to simplify record sharing and provide team members with common access to organization data when team members belong to different Business Units.
  gsCommon.objclasses("common/application/team", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "title":"common/application/team/name", // Name of the team.	
        "organizationId":"dataformat/guid/nullable/false", // Unique identifier of the organization associated with the team.	
        "businessUnitId":"dataformat/guid/nullable/false", // Unique identifier of the business unit with which the team is associated.	
        "emailAddress":"common/application/team/emailAddress", // Email address for the team.	
        "importSequenceNumber":"common/application/team/importSequenceNumber", // Unique identifier of the data import or data migration that created this record.	
        "overriddenCreatedOn":"common/application/team/overriddenCreatedOn", // Date and time that the record was migrated.	
        "administratorId":"common/application/team/administratorId", // Unique identifier of the user primary responsible for the team.	
        "isDefault":"common/application/team/isDefault", // Information about whether the team is a default business unit team.	
        "yomiName":"common/application/team/yomiName", // Pronunciation of the full name of the team, written in phonetic hiragana or katakana characters.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", // Unique identifier of the delegate user who created the team.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", // Unique identifier of the delegate user who last modified the team.	
        "traversedPath":"common/application/team/traversedPath", // For internal use only.	
        "queueId":"common/application/team/queueId", // Unique identifier of the default queue for the team.	
        "transactionCurrencyId":"common/application/team/transactionCurrencyId", // Unique identifier of the currency associated with the team.	
        "exchangeRate":"common/application/team/exchangeRate", // Exchange rate for the currency associated with the team with respect to the base currency.	
        "teamType":"common/application/team/teamType", // Select the team type.	
        "teamType_display":"common/application/team/teamType_display", // 	
        "teamTemplateId":"common/application/team/teamTemplateId", // Shows the team template that is associated with the team.	
        "regardingObjectId":"common/application/team/regardingObjectId", // Choose the record that the team relates to.	
        "systemManaged":"common/application/team/systemManaged", // Select whether the team will be managed by the system.	
        "stageId":"common/application/team/stageId", // Shows the ID of the stage.	
        "processId":"common/application/team/processId", // Shows the ID of the process.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}