module models.educations.entities.courses.section;

@safe:
import models.educations;

// The relationship between an instructor and a specific course.
// name = name of the custom entity.	
class DCourseSectionEntity : DEntity {
  mixin(EntityThis!("CourseSectionEntity"));
  
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
        "courseSectionId": UUIDAttribute, //	Unique identifier for entity instances	
        "academicPeriodId": UUIDAttribute, //	Lookup to Academic Period.	
        "campusId": UUIDAttribute, //	Campus Location of the course.	
        "courseDayTime": StringAttribute, //	Text field to store the date and time of the course.	
        "courseId": UUIDAttribute, //	Lookup to Course	
        "instructorId": UUIDAttribute, //	Instructor	
        "location": StringAttribute, //	Specific Meeting Location	
        "prerequisites": StringAttribute, //	Prerequisites	
      ])
      .registerPath("education_courses.sections");
  }
}
mixin(EntityCalls!("CourseSectionEntity"));


version(test_model_education) { unittest {
    assert(CourseSectionEntity);

    auto entity = CourseSectionEntity;
  }
}