module models.foundation.crm.projects.relationship_insights_unified_config;

@safe:
import models.foundation;

// 
class DRelationshipInsightsUnifiedConfigEntity : DEntity {
  mixin(EntityThis!("RelationshipInsightsUnifiedConfigEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the msdyn_relationshipinsightsunifiedconfig
        StatusCodeAttribute // Reason for the status of the msdyn_relationshipinsightsunifiedconfig
      ])   
      .addValues([ // individual values
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "relationshipInsightsUnifiedConfigId": UUIDAttribute, // Unique identifier for entity instances"]),
        "newName": StringAttribute, // The name of the custom entity."]),
        "useNewConfigExperience": StringAttribute, // 
      ])
      .registerPath("foundation_relationship.insights.unified.configs");
  }
}
mixin(EntityCalls!("RelationshipInsightsUnifiedConfigEntity"));

version(test_model_foundation) { unittest {
    assert(RelationshipInsightsUnifiedConfigEntity);
  
  auto entity = RelationshipInsightsUnifiedConfigEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}