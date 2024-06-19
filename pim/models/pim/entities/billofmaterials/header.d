module models.pim.entities.billofmaterials.header;

@safe:
import models.pim;

class DBOMHeaderEntity : DEntity {
  mixin(EntityThis!("BOMHeaderEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "IsApproved": StringAttribute, 
        "ApproverId": UUIDAttribute, 
        "BOMId": UUIDAttribute, 
        "ProductGroupId": UUIDAttribute, 
        "BOMName": StringAttribute, 
        "ProductionSiteId": UUIDAttribute, 
        "ApproverPersonnelNumber": StringAttribute, 
        "EngChgProductItemRecId": UUIDAttribute, 
        "EngChgEngineeringBomReference": StringAttribute, 
        "Relationship_ApprovingWorkerRelationshipId": UUIDAttribute, 
        "Relationship_ProductionSiteRelationshipId": UUIDAttribute, 
        "BackingTable_BOMTableRelationshipId": UUIDAttribute, 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,         
      ])
      .registerPath("pim_billofmaterials.headers");
  }
}
mixin(EntityCalls!("BOMHeaderEntity"))
  
version(test_model_pim) {
  unittest {
    assert(BOMHeaderEntity);
    auto entity = BOMHeaderEntity;
  }
}
