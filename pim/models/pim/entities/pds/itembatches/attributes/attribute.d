module models.pim.entities.pds.itembatches.attributes.attribute;

@safe:
import models.pim;

class DPDSItembatchesAttributeEntity : DEntity {
  mixin(EntityThis!("BOMPDSItembatchesAttributeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
      ])
      .registerPath("pim_pds.itembatches.attributes");
  }
}
mixin(EntityCalls!("PDSItembatchesAttributeEntity"))
  
version(test_model_pim) {
  unittest {
    assert(PDSItembatchesAttributeEntity);
    
    auto entity = PDSItembatchesAttributeEntity;
  }
}
