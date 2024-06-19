module models.pim.entities.billofmaterials.itemspecificheader;

@safe:
import models.pim;

class DBOMItemSpecificHeaderEntity : DEntity {
  mixin(EntityThis!("BOMItemSpecificHeaderEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "IsApproved":	StringAttribute,
        "IsActive":	StringAttribute,
        "ApproverId":	StringAttribute,
        "ApproverPersonnelNumber":	StringAttribute,
        "BOMId":	StringAttribute,
        "BOMName":	StringAttribute,
        "ProductionSiteId":	StringAttribute,
        "ManufacturedItemNumber":	StringAttribute,
        "ProductColorId":	StringAttribute,
        "ProductConfigurationId":	StringAttribute,
        "ProductSizeId":	StringAttribute,
        "ProductStyleId":	StringAttribute,
        "ProductVersionId":	StringAttribute,
        "VersionBOMId":	StringAttribute,
        "VersionName":	StringAttribute,
        "VersionSiteId":	StringAttribute,
        "VersionIsApproved":	StringAttribute,
        "VersionApproverId":	StringAttribute,
        "Relationship_ApprovingWorkerRelationshipId":	StringAttribute,
        "Relationship_ProductionSiteRelationshipId":	StringAttribute,
        "BackingTable_BOMTableRelationshipId":	StringAttribute,
        "Relationship_PrimaryCompanyContextRelationshipId":	StringAttribute,        
      ])
      .registerPath("pim_billofmaterials.item.specific.headers");
  }
}
mixin(EntityCalls!("BOMItemSpecificHeaderEntity"))
  
version(test_model_pim) { unittest {
  // Todo
}}
