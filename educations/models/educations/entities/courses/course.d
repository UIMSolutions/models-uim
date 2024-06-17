module models.educations.entities.courses.course;

@safe:
import models.educations;

// The master list of all courses offered by an institution.
// name = name or title of the course.	
class DCourseEntity : DEntity {
  mixin(EntityThis!("CourseEntity"));
  
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
        "courseId": UUIDAttribute, //	Unique identifier for entity instances	
        "academicLevel": StringAttribute, //	Academic Level	
        "academicLevel_display": StringAttribute, //		
        "courseNumber": StringAttribute, //	The number of the course.	
        "endDate": StringAttribute, //	The end date of the course.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "prerequisites": StringAttribute, //		
        "section": StringAttribute, //	The specific section of the course.	
        "startDate": StringAttribute, //	The start date of the course.	
        "subject": StringAttribute, //	The subject the course is related to.	
      ])
      .registerPath("education_courses");
  }
}
mixin(EntityCalls!("CourseEntity"));


version(test_model_education) { unittest {
    assert(CourseEntity);

    auto entity = CourseEntity;
  }
}