module models.educations.entities.courses.history;

@safe:
import models.educations;

// The course history for a student.
// name = Course History Entity	
class DCourseHistoryEntity : DEntity {
  mixin(EntityThis!("CourseHistoryEntity"));
  
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
        "courseHistoryId": UUIDAttribute, //	Unique identifier for entity instances	
        "academicPeriodDetailsId": UUIDAttribute, //	The academic period details record for the student	
        "continuingEducation": StringAttribute, //	Continuing Education	
        "continuingEducation_display": StringAttribute, //		
        "courseId": UUIDAttribute, //	The course record for the student.	
        "courseSectionId": UUIDAttribute, //	Unique identifier for Course Section associated with Course History.	
        "creditsAttempted": StringAttribute, //	The credits attempted received.	
        "creditsEarrned": StringAttribute, //	The credits earned received.	
        "gradePoints": StringAttribute, //	The grade points received.	
        "lastDateofAttendance": StringAttribute, //	The last date of attendance received.	
        "letterGrade": StringAttribute, //	The letter grade received for the course.	
        "midTermLetterGrade": StringAttribute, //	The mid term letter grade received.	
        "midTermNumericGrade": StringAttribute, //	The mid term numeric grade received.	
        "registrationStatusId": UUIDAttribute, //	The registration status received.	
        "studentId": UUIDAttribute, //	Lookup to student (Contact)	
      ])
      .registerPath("education_courses.histories");
  }
}
mixin(EntityCalls!("CourseHistoryEntity"));


version(test_model_education) { unittest {
    assert(CourseHistoryEntity);

    auto entity = CourseHistoryEntity;
  }
}