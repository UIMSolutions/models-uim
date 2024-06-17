module models.foundation.crm.services.resources.resource;

@safe:
import models.foundation;

class DResourceEntity : DEntity {
  mixin(EntityThis!("ResourceEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "resourceId": UserIdAttribute, // Unique identifier of the resource."]),
        "businessUnitId": UserIdAttribute, // Business Unit Id"]),
        "importSequenceNumber": UserIdAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": UserIdAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": UserIdAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": UserIdAttribute, // Time zone code that was in use when the record was created."]),
        "calendarId": UUIDAttribute, // Unique identifier of the calendar for the resource."]),
        "displayInServiceViews": UserIdAttribute, // For internal use only."]),
        "isDisabled": BooleanAttribute, // Information about whether the resource is enabled."]),
        "objectTypeCode": UserIdAttribute, // Type of entity with which the resource is associated."]),
        "organizationId": UserIdAttribute, // Unique identifier of the organization with which the resource is associated."]),
        "siteId": UserIdAttribute, // Unique identifier of the site at which the resource is located."]),
        "entityImageId": UserIdAttribute, // 
      ])
      .registerPath("foundation_crm.services.resources");
  }
}
mixin(EntityCalls!("ResourceEntity"));

version(test_model_foundation) { unittest {
    assert(ResourceEntity);
  
    auto entity = ResourceEntity;
    // auto repository = OOPFileRepository("./tests");
  /* repository.create("entities", entity.entityClasses, entity.toJson);

    auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
    assert(json != Json(null), entity.id.toString~" not found");

    repository.cleanupConnections; */ 
  }
}