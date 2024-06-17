module models.educations.entities.programs.versiondetail;

@safe:
import models.educations;

// The master list of program versions start dates defined by the institution.
class DProgramVersionDetailEntity : DEntity {
  mixin(EntityThis!("ProgramVersionDetailEntity"));
  
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
        "programVersionDetailId": UUIDAttribute, //	Unique identifier for entity instances
        "code": StringAttribute, //	Registration code.
        "expectedGraduationDate": StringAttribute, //	The expected graduation date for the program version start date instance.
        "externalIdentifier": StringAttribute, //	External Identifier
        "externalSourceSystem": StringAttribute, //	External Source System
        "externalSourceSystem_display": StringAttribute, //	
        "midpointDate": StringAttribute, //	Midpoint Date
        "mustGraduateBefore": StringAttribute, //	Must Graduate Before
        "programVersionId": UUIDAttribute, //	Lookup to the program version.
        "startDate": StringAttribute, //	Start Date
      ])
      .registerPath("education_program.version.details");
  }
}
mixin(EntityCalls!("ProgramVersionDetailEntity"));


version(test_model_education) { unittest {
    assert(ProgramVersionDetailEntity);

    auto entity = ProgramVersionDetailEntity;
  }
}