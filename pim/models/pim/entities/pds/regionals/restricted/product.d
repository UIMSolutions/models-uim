module models.pim.entities.pds.regionals.restricted.product;

@safe:
import models.pim;

class DPDSRegionalsRestrictedProductEntity : DEntity {
  mixin(EntityThis!("PDSRegionalsRestrictedProductEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
      ])
      .registerPath("pim_pds.regionals.restricted.products");
  }
}
mixin(EntityCalls!("PDSRegionalsRestrictedProductEntity"));

version(test_model_pim) { unittest {
  // Todo
}}
