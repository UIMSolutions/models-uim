module models.emails.entities.delivered;

@safe:
import models.emails;

class DEMLDelivered : DEntity {
  mixin(EntityThis!("EMLDelivered"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addData([
        "interactionId": UUIDAttribute, // Unique identifier of the interaction."]),
        "contactId": UUIDAttribute, // Contact ID"]),
        "accountId": UUIDAttribute, // Account ID"]),
        "messageId": UUIDAttribute, // Message ID"]),
        "customerJourneyId": UUIDAttribute, // Customer Journey ID"]),
        "organizationId": UUIDAttribute, // Organization ID"]),
        "sendingId": UUIDAttribute, // Sending ID"]),
        "customerJourneyIterationId": UUIDAttribute, // Customer journey iteration ID"]),
        "usageType": StringAttribute, // Usage type"]),
        "interactionType": StringAttribute, // Interaction type"]),
        "timestamp": StringAttribute, // Timestamp"]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_delivered");
  }
}
mixin(EntityCalls!("EMLDelivered"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLDelivered);
  
  auto entity = EMLDelivered;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}