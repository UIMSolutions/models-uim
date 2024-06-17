module models.projects.entities.price_list;

import models.projects;

@safe:
class DPRJPriceList : DEntity {
  mixin(EntityThis!("PRJPriceList"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "projectPriceListId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": IntegerAttribute, // Status of the Project Price List"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Price List"]),
        "statusCode_display": StringAttribute, //
        "priceList": StringAttribute, // Shows the name of the project price list."]),
        "project": StringAttribute, // Shows the project for the project price list."]),
      ])
      .registerPath("project_pricelists");
  }
}
mixin(EntityCalls!("PRJPriceList"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJPriceList);

  auto entity = PRJPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}