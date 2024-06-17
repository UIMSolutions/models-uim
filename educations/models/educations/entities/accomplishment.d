module models.educations.entities.accomplishment;

@safe:
import models.educations;

// 	This entity is used to store the accomplishments of a particular student
class DAccomplishmentEntity : DEntity {
  mixin(EntityThis!("AccomplishmentEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
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
        "accomplishmentsId": UUIDAttribute, //	Unique identifier for entity instances	
        "accomplishmentType": StringAttribute, //		
        "accomplishmentType_display": StringAttribute, //		
        "description": StringAttribute, //	Description of the Accomplishment	
        "studentId": UUIDAttribute, //	Field which identifies the student who completed the project	
      ])
      .registerPath("education_accomplishments");
  }
}
mixin(EntityCalls!("AccomplishmentEntity"));

version(test_model_education) { unittest {
    assert(AccomplishmentEntity);

    auto entity = AccomplishmentEntity;
  }
}