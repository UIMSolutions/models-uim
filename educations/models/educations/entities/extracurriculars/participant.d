module models.educations.entities.extracurriculars.participant;

@safe:
import models.educations;

// The relationship between a Contact and a specific Extra Curricular Activity.
// name = name of the custom entity.	
class DExtraCurricularParticipantEntity : DEntity {
  mixin(EntityThis!("ExtraCurricularParticipantEntity"));
  
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
        "extracurricularParticipantId": UUIDAttribute, //	Unique identifier for entity instances	
        "awardsReceived": StringAttribute, //	Awards received at the Extra Curricular Activity or Club.	
        "contactId": UUIDAttribute, //	Lookup to Student (Contact).	
        "endDate": StringAttribute, //	End Date	
        "extraCurricularActivityId": UUIDAttribute, //	Lookup to Extra Curricular	
        "positionsHeld": StringAttribute, //	Positions held at the Extra Curricular Activity or Club	
        "source": StringAttribute, //	Source of the student's extra curricular activity record.	
        "source_display": StringAttribute, //		
        "startDate": StringAttribute, //	Start Date	
        "state": StringAttribute, //		
        "state_display": StringAttribute, //		
      ])
      .registerPath("education_extracurriculars.participants");
  }
}
mixin(EntityCalls!("ExtraCurricularParticipantEntity"));


version(test_model_education) { unittest {
    assert(ExtraCurricularParticipantEntity);

    auto entity = ExtraCurricularParticipantEntity;
  }
}