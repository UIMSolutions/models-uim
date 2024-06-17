module models.foundation.crm.projects.service_automation.transactions.connection;

@safe:
import models.foundation;

// TransactionConnection of a user in the hierarchy
class DTransactionConnectionEntity : DEntity {
  mixin(EntityThis!("TransactionConnectionEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"
        StateCodeAttribute, // Time zone code that was in use when the record was created.
        StatusCodeAttribute // Reason for the status of the Transaction Connection
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "transactionConnectionId": UUIDAttribute, // Unique identifier for entity instances"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "utcConversionTimeZoneCode": StringAttribute, // 
        "transaction1": StringAttribute, // 
        "transaction1Role": StringAttribute, // 
        "transaction1Type": StringAttribute, // 
        "transaction2": StringAttribute, // 
        "transaction2Role": StringAttribute, // 
        "transaction2Type": StringAttribute, // 
      ])
      .registerPath("foundation_transaction.connections");
  }
}
mixin(EntityCalls!("TransactionConnectionEntity"));

version(test_model_foundation) { unittest {
    
    assert(TransactionConnectionEntity);

  auto entity = TransactionConnectionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}