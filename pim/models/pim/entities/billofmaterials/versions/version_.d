module models.pim.entities.billofmaterials.versions.version_;

@safe:
import models.pim;

class DBOMVersionEntity : DEntity {
  mixin(EntityThis!("BOMVersionEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "IsActive":	StringAttribute,
        "IsApproved":	StringAttribute,
        "ApproverId":	StringAttribute,
        "BOMId":	StringAttribute,
        "IsSelectedForDesigner":	StringAttribute,
        "ValidFromDate":	StringAttribute,
        "FromQuantity":	StringAttribute,
        "ManufacturedItemNumber":	StringAttribute,
        "VersionName":	StringAttribute,
        "FromCatchWeightQuantity":	StringAttribute,
        "CatchWeightSize":	StringAttribute,
        "ValidToDate":	StringAttribute,
        "ApproverPersonnelNumber":	StringAttribute,
        "ProductColorId":	StringAttribute,
        "ProductConfigurationId":	StringAttribute,
        "ProductionSiteId":	StringAttribute,
        "ProductSizeId":	StringAttribute,
        "ProductStyleId":	StringAttribute,
        "ProductVersionId":	StringAttribute,
        "Relationship_BillOfMaterialsHeaderRelationshipId":	StringAttribute,
        "Relationship_ApprovingWorkerRelationshipId":	StringAttribute,
        "Relationship_ProductionSiteRelationshipId":	StringAttribute,
        "Relationship_ProductColorRelationshipId":	StringAttribute,
        "Relationship_ProductConfigurationRelationshipId":	StringAttribute,
        "Relationship_ProductSizeRelationshipId":	StringAttribute,
        "Relationship_ProductStyleRelationshipId":	StringAttribute,
        "Relationship_ProductVersionRelationshipId":	StringAttribute,
        "Relationship_ManufacturedReleasedProductRelationshipId":	StringAttribute,
        "BackingTable_BOMVersionRelationshipId":	StringAttribute,
        "Relationship_PrimaryCompanyContextRelationshipId":	StringAttribute
      ])
      .registerPath("pim_billofmaterials.versions");
  }
}
mixin(EntityCalls!("BOMVersionEntity"))
  
version(test_model_pim) { unittest {
  // Todo
}}
