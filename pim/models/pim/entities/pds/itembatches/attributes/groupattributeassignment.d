module models.pim.entities.pds.itembatches.attributes.groupattributeassignment;

@safe:
import models.pim;

class DPDSItembatchesAttributesGroupAttributeAssignmentEntity : DEntity {
  mixin(EntityThis!("PDSItembatchesAttributesGroupAttributeAssignmentEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
      ])
      .registerPath("pim_pds.itembatches.attributes.groupattribute.assignments");
  }
}
mixin(EntityCalls!("PDSItembatchesAttributesGroupAttributeAssignmentEntity"));

version(test_model_pim) { unittest {
  // Todo
}}
