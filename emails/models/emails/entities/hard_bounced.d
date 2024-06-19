module models.emails.entities.hard_bounced;

@safe:
import models.emails;

class DEMLHardBounced : DEntity {
  mixin(EntityThis!("EMLHardBounced"));
  
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
        "bounceCategory": StringAttribute, // Bounce category"]),
        "remoteBounce": StringAttribute, // Remote bounce"]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_hardbounced");
  }
}
mixin(EntityCalls!("EMLHardBounced"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLHardBounced);
  
  auto entity = EMLHardBounced;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}