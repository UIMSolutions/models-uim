module models.educations.entities.registrationstatus;

@safe:
import models.educations;

// The master list of registration statuses tracked by the institution. The registration status is associated to the student course history.
// name = name of the custom entity.
class DRegistrationStatusEntity : DEntity {
  mixin(EntityThis!("RegistrationStatusEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute,
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "registrationStatusId": UUIDAttribute, //	Unique identifier for entity instances	
        "code": StringAttribute, //		
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
      ])
      .registerPath("education_registrations.statuses");
  }
}
mixin(EntityCalls!("RegistrationStatusEntity"));

version(test_model_education) { unittest {
    assert(RegistrationStatusEntity);

    auto entity = RegistrationStatusEntity;
  }
}