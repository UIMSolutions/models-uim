module models.common.objclasses.applications.email_signature;

import models.common;

static this() {
  // Signature for email message
  gsCommon.objclasses("common/application/emailSignature", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "emailSignatureId":"common/application/emailSignature/emailSignatureId", //	Unique identifier of the email signature.	
        "owningBusinessUnit":"common/application/emailSignature/owningBusinessUnit", //	Unique identifier of the business unit that owns the email signature.	
        "isPersonal":"common/application/emailSignature/isPersonal", //	Information about whether the email signature is personal or is available to all users.	
        "mimeType":"common/application/emailSignature/mimeType", //	MIME type of the email signature.	
        "body":"common/application/emailSignature/body", //	Body text of the email signature.	
        "title":"common/application/emailSignature/title", //	Title of the email signature.	
        "owningUser":"common/application/emailSignature/owningUser", //	Unique identifier of the user who owns the email signature.	
        "presentationXml":"common/application/emailSignature/presentationXml", //	XML data for the body of the email signature.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/emailSignature/ownerIdType", //	The type of owner, either User or Team.	
        "generationTypeCode":"common/application/emailSignature/generationTypeCode", //	For internal use only.	
        "languageCode":"common/application/emailSignature/languageCode", //	Language of the email signature.	
        "importSequenceNumber":"common/application/emailSignature/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "overwriteTime":"common/application/emailSignature/overwriteTime", //	For internal use only.	
        "componentState":"common/application/emailSignature/componentState", //	For internal use only.	
        "componentState_display":"common/application/emailSignature/componentState_display", //		
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the email signature.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the email signature.	
        "owningTeam":"common/application/emailSignature/owningTeam", //	Unique identifier of the team who owns the email signature.	
        "isCustomizable":"common/application/emailSignature/isCustomizable", //	Information that specifies whether this component can be customized.	
        "overriddenCreatedOn":"common/application/emailSignature/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "isDefault":"common/application/emailSignature/isDefault", //	Information that specifies whether the email signature is default to the user.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}