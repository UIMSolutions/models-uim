module models.educations.entities.grants.grant;

@safe:
import models.educations;

// This entity stores the list of grants offered to a school by all business partners.
// name = Required name field	
class DGrantEntity : DEntity {
  mixin(EntityThis!("GrantEntity"));
  
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
        "grantId": UUIDAttribute, //	Unique identifier for entity instances	
        "exchangeRate": StringAttribute, //	Exchange rate for the currency associated with the entity with respect to the base currency.	
        "amount": StringAttribute, //	Amount offered to perform required research	
        "amount_Base": StringAttribute, //	Value of the Amount in base currency.	
        "applicationDeadlineDate": StringAttribute, //	Last date to apply	
        "areaOfStudyId": UUIDAttribute, //	Field in which grant of offered	
        "businessPartnerId": UUIDAttribute, //	Business Partner unique identification number	
        "businessPartnerContactId": UUIDAttribute, //	Grant point of contact	
        "description": StringAttribute, //	Description about the Grant	
        "qualifications": StringAttribute, //	Qualifications required to be eligible for Grant	
        "responsibleFacultyContactId": UUIDAttribute, //	Name of the professor guiding research	
        "validFrom": StringAttribute, //	Start Date of Grant	
        "validTo": StringAttribute, //	End Date of Grant	
        "websiteURL": StringAttribute, //	Grant URL	
        "workDescription": StringAttribute, //	Description of work to be performed	
        "transactionCurrencyId": UUIDAttribute, //	Unique identifier of the currency associated with the entity.	
      ])
      .registerPath("education_areaofstudies");
  }
}
mixin(EntityCalls!("GrantEntity"));


version(test_model_education) { unittest {
    assert(GrantEntity);

    auto entity = GrantEntity;
  }
}