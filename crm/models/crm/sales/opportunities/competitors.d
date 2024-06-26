module models.crm.sales.opportunities.competitor;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMOpportunityCompetitors : DEntity {
  mixin(EntityThis!("CRMOpportunityCompetitor"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addData([
        "opportunityCompetitorId": UUIDAttribute, // Unique identifier of the opportunity competitor."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttribute, //
        "opportunityId": UUIDAttribute, //
      ])
      .registerPath("crm_opportunitycompetitors");
  }
}
mixin(EntityCalls!("CRMOpportunityCompetitor")); 

unittest {
  version(test_model_crm) {
    assert(CRMOpportunityCompetitors);

  auto entity = CRMOpportunityCompetitors;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");
  
  repository.cleanupConnections; */
  }
}