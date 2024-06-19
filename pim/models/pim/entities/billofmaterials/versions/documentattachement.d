module models.pim.entities.billofmaterials.versions.documentattachement;

@safe:
import models.pim;

class DBOMVersionDocumentAttachementEntity : DEntity {
  mixin(EntityThis!("BOMVersionDocumentAttachementEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "DocumentId":	StringAttribute, 
        "DocumentAttachmentTypeCode":	StringAttribute, 
        "AttachmentDescription":	StringAttribute, 
        "Notes":	StringAttribute, 
        "AccessRestriction":	StringAttribute, 
        "Attachment":	StringAttribute, 
        "FileName":	StringAttribute, 
        "FileType":	StringAttribute, 
        "ActualCompanyId":	StringAttribute, 
        "IsDefaultAttachment":	StringAttribute, 
        "BOMVersionManufacturedItemNumber":	StringAttribute, 
        "BOMId":	StringAttribute, 
        "BOMVersionProductionSiteId":	StringAttribute, 
        "BOMVersionProductConfigurationId":	StringAttribute, 
        "BOMVersionProductColorId":	StringAttribute, 
        "BOMVersionProductSizeId":	StringAttribute, 
        "BOMVersionProductStyleId":	StringAttribute, 
        "BOMVersionProductVersionId":	StringAttribute, 
        "IsBOMVersionActive":	StringAttribute, 
        "BOMVersionValidFromDate":	StringAttribute, 
        "BOMVersionFromQuantity":	StringAttribute, 
        "BackingTable_DocuRefEntityRelationshipId":	StringAttribute, 
        "Relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, 
      ])
      .registerPath("pim_billofmaterials.versions.documentattachements");
  }
}
mixin(EntityCalls!("BOMVersionDocumentAttachementEntity"))
  
version(test_model_pim) {
  unittest {
    assert(BOMVersionDocumentAttachementEntity);

    auto entity = BOMVersionDocumentAttachementEntity;
    // Todo
  }
}
