module models.pim.entities.pds.regionals.restricted.productlist;

@safe:
import models.pim;

class DPDSRegionalsRestrictedProductListEntity : DEntity {
  mixin(EntityThis!("PDSRegionalsRestrictedProductListEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
      ])
      .registerPath("pim_pds.regionals.restricted.productlists");
  }
}
mixin(EntityCalls!("PDSRegionalsRestrictedProductListEntity"));

version(test_model_pim) { unittest {
  // Todo
}}
