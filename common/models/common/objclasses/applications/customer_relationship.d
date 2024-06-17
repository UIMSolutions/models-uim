module models.common.objclasses.applications.customer_relationship;

import models.common;

static this() {
  gsCommon.objclasses("common/application/customerRelationship", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "customerRoleId":"common/application/customerRelationship/customerRoleId", //	Choose the primary party's role or nature of the relationship the customer has with the second party. The field is read-only until both parties have been selected. Administrators can configure role values under Business Management in the Settings area.	
        "customerRelationshipId":"common/application/customerRelationship/customerRelationshipId", //	Unique identifier of the customer relationship.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/customerRelationship/ownerIdType", //	The type of owner, either User or Team.	
        "partnerId":"common/application/customerRelationship/partnerId", //	Select the secondary account or contact involved in the customer relationship.	
        "partnerIdType":"common/application/customerRelationship/partnerIdType", //	The type of partner, either Account or Contact.	
        "owningBusinessUnit":"common/application/customerRelationship/owningBusinessUnit", //	Unique identifier of the business unit that owns the customer relationship.	
        "converseRelationshipId":"common/application/customerRelationship/converseRelationshipId", //	Unique identifier of the converse relationship of the customer relationship.	
        "partnerRoleId":"common/application/customerRelationship/partnerRoleId", //	Choose the secondary party's role or nature of the relationship the customer has with the primary party. The field is read-only until both parties have been selected. Administrators can configure role values under Business Management in the Settings area.	
        "customerRoleDescription":"common/application/customerRelationship/customerRoleDescription", //	Type additional information about the primary party's role in the customer relationship, such as the length or quality of the relationship.	
        "customerId":"common/application/customerRelationship/customerId", //	The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.	
        "customerIdType":"common/application/customerRelationship/customerIdType", //	The type of customer, either Account or Contact.	
        "partnerRoleDescription":"common/application/customerRelationship/partnerRoleDescription", //	Type additional information about the secondary party's role in the customer relationship, such as the length or quality of the relationship.	
        "owningUser":"common/application/customerRelationship/owningUser", //	Unique identifier of the user who owns the customer relationship.	
        "overriddenCreatedOn":"common/application/customerRelationship/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/customerRelationship/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "owningTeam":"common/application/customerRelationship/owningTeam", //	Unique identifier of the team who owns the customer relationship.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}