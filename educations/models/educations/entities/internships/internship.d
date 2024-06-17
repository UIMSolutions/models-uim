module models.educations.entities.internships.internship;

@safe:
import models.educations;

// 	This entity stores the list of internships offered to a school by all business partners.
class DInternshipEntity : DEntity {
  mixin(EntityThis!("InternshipEntity"));
  
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
        "versionNumber": StringAttribute, //	Version Number	
        "internshipId": UUIDAttribute, //	Unique identifier for entity instances	
        "applicationDeadlineDate": StringAttribute, //	Last date to apply for internship	
        "businessPartnerId": UUIDAttribute, //	Business Partner	
        "businessPartnerContactId": UUIDAttribute, //	Internship point of contact	
        "description": StringAttribute, //	Description about the internship	
        "isPaid": StringAttribute, //	Is the internship paid/unpaid	
        "locationDescription": StringAttribute, //	Location where work is performed	
        "postedDate": StringAttribute, //	Date the internship was posted	
        "qualifications": StringAttribute, //	Qualifications required to be eligible for Internship	
        "title": StringAttribute, //	Required name field	
        "validFrom": StringAttribute, //	Start date of the internship	
        "validTo": StringAttribute, //	End date of the internship	
        "websiteURL": StringAttribute, //	Internship URL	
      ])
      .registerPath("education_internships");
  }
}
mixin(EntityCalls!("InternshipEntity"));


version(test_model_education) { unittest {
    assert(InternshipEntity);

    auto entity = InternshipEntity;
  }
}
