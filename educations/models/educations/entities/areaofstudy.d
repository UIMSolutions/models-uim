module models.educations.entities.areaofstudy;

@safe:
import models.educations;

// The master list of all area of studies offered by an institution. Areas of studies are more specific program offerings, such as Master's of Public Administration - Emergency Management.
// name = name of the custom entity.	
class DAreaOfStudyEntity : DEntity {
  mixin(EntityThis!("AreaOfStudyEntity"));
  
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
        "areaOfStudyId": UUIDAttribute, //	Unique identifier for entity instances	
        "code": StringAttribute, //	Abbreviated code for the area of study.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "minimumRequiredGPA": StringAttribute, //	Minimum Required GPA	
        "programTypeId": UUIDAttribute, //	The program type for the area of study, such as major or concentration.	
        "requiredCredits": StringAttribute, //	The number of credits required to be completed by a student pursuing the area of study.	
      ])
      .registerPath("education_areaofstudies");
  }
}
mixin(EntityCalls!("AreaOfStudyEntity"));


version(test_model_education) { unittest {
    assert(AreaOfStudyEntity);

    auto entity = AreaOfStudyEntity;
  }
}