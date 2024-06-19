module models.pim.entities.billofmaterials.versions.odata;

@safe:
import models.pim;

class DBOMVersionODataEntity : DEntity {
  mixin(EntityThis!("BOMVersionODataEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ApproverId": UUIDAttribute.  
        "ApproverPersonnelNumber": StringAttribute.  
        "BOMId": UUIDAttribute.  
        "CatchWeightSize": StringAttribute.  
        "FromCatchWeightQuantity": StringAttribute.  
        "FromQuantity": StringAttribute.  
        "IsApproved": StringAttribute.  
        "IsSelectedForDesigner": StringAttribute.  
        "ManufacturedItemNumber": StringAttribute.  
        "ProductColorId": UUIDAttribute.  
        "ProductConfigurationId": UUIDAttribute.  
        "ProductionSiteId": UUIDAttribute.  
        "ProductSizeId": UUIDAttribute.  
        "ProductStyleId": UUIDAttribute.  
        "ProductVersionId": UUIDAttribute.  
        "ValidFromDate": StringAttribute.  
        "ValidToDate": StringAttribute.  
        "VersionName": StringAttribute.  
        "IsActive": StringAttribute.  
        "Relationship_BOMHeaderRelationshipId": UUIDAttribute.  
        "Relationship_ApprovingWorkerRelationshipId": UUIDAttribute.  
        "BackingTable_BOMBillOfMaterialsVersionV3EntityRelationshipId": UUIDAttribute.  
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute. 
      ])
      .registerPath("pim_billofmaterials.versions.odata");
  }
}
mixin(EntityCalls!("BOMVersionODataEntity"))
  
version(test_model_pim) {
  unittest {
    assert(BOMVersionODataEntity);
    auto entity = BOMVersionODataEntity;
    // Todo
  }
}
