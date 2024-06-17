module models.educations.entities.students.programtype;

@safe:
import models.educations;

// The master list of program types defined by the institution, such as major, minor, or concentration.
// name = name of the program type.	      
class DStudentProgramTypeEntity : DEntity {
  mixin(EntityThis!("StudentProgramTypeEntity"));
  
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
        "studentProgramTypeId": UUIDAttribute, //	Unique identifier for entity instances	
      ])
      .registerPath("education_students.statuses");
  }
}
mixin(EntityCalls!("StudentProgramTypeEntity"));


version(test_model_education) { unittest {
    assert(StudentProgramTypeEntity);

    auto entity = StudentProgramTypeEntity;
  }
}
