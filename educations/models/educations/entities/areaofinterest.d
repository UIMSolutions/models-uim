module models.educations.entities.areaofinterest;

@safe:
import models.educations;

// The master list of all area of studies offered by an institution. Areas of studies are more specific program offerings, such as Master's of Public Administration - Emergency Management.
// name = Area of Interest instance name	
class DAreaOfInterestEntity : DEntity {
  mixin(EntityThis!("AreaOfInterestEntity"));
  
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
        "areaOfInterestId": UUIDAttribute, //	Unique identifier for entity instances	
        "code": StringAttribute, //	Abbreviated code for the area of interest.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
      ])
      .registerPath("education_areaofinterests");
  }
}
mixin(EntityCalls!("AreaOfInterestEntity"));

version(test_model_education) { unittest {
    assert(AreaOfInterestEntity);

    auto entity = AreaOfInterestEntity;
  }
}
