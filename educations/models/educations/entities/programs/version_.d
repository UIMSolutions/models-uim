module models.educations.entities.programs.version_;

@safe:
import models.educations;

// The master list of all program versions defined by the institution.
class DProgramVersionEntity : DEntity {
  mixin(EntityThis!("ProgramVersionEntity"));
  
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
        "programVersionId": UUIDAttribute, //	Unique identifier for entity instances	
        "name": StringAttribute, //	Program Version Name	
        "code": StringAttribute, //	Abbreviated code for the program version.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "programId": UUIDAttribute, //	Lookup to the program.	
        "programLevelId": UUIDAttribute, //	Link to Program Level entity	

      ])
      .registerPath("education_program.versions");
  }
}
mixin(EntityCalls!("ProgramVersionEntity"));


version(test_model_education) { unittest {
    assert(ProgramVersionEntity);

    auto entity = ProgramVersionEntity;
  }
}