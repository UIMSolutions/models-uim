module models.educations.entities.scholarships.applicationbusinessprocessflow;

@safe:
import models.educations;

// Base entity for process Scholarship Application Business Process Flow
class DScholarshipApplicationBusinessProcessFlowEntity : DEntity {
  mixin(EntityThis!("ScholarshipApplicationBusinessProcessFlowEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([ // individual values  
        "businessProcessFlowInstanceId": UUIDAttribute, //	Unique identifier for entity instances
        "activeStageStartedOn": StringAttribute, //	Date and time when current active stage is started
        "bpf_Duration": StringAttribute, //	Duration of Business Process Flow
        "mshied_ScholarshipapplicantId": UUIDAttribute, //	
        "completedOn": StringAttribute, //	Date and time when Business Process Flow instance is completed.
        "importSequenceNumber": StringAttribute, //	Sequence number of the import that created this record.
        "organizationId": UUIDAttribute, //	Unique identifier for the organization
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.
        "traversedPath": StringAttribute, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.    
      ])
      .registerPath("education_scholarships.applicationbusinessprocessflows");
  }
}
mixin(EntityCalls!("ScholarshipApplicationBusinessProcessFlowEntity"));


version(test_model_education) { unittest {
    assert(ScholarshipApplicationBusinessProcessFlowEntity);

    auto entity = ScholarshipApplicationBusinessProcessFlowEntity;
  }
}