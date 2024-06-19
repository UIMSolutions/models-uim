module models.pim.entities.pds.regionals.regulated.product;

@safe:
import models.pim;

class DPDSRegionalsRegulatedProductEntity : DEntity {
  mixin(EntityThis!("PDSRegionalsRegulatedProductEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
      ])
      .registerPath("pim_pds.regionals.regulated.products");
  }
}
mixin(EntityCalls!("PDSRegionalsRegulatedProductEntity"));

version(test_model_pim) { unittest {
  // Todo
}}
