module models.pim.entities.billofmaterials.parameter.d

@safe:
import models.pim;

class DBOMParameterEntity : DEntity {
  mixin(EntityThis!("BOMParameterEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "CircularityCheckLevel": StringAttribute,
        "MaximumBOMLevel": StringAttribute,
        "AreQuantitiesOnBOMLinesAndDatesOnBOMVersionMandatory": StringAttribute,
        "IsBOMAndVersionApprovalRemovalBlocked": StringAttribute,
        "IsBOMEditingBlocked": StringAttribute,
        "CircularityCheckStrategy": StringAttribute,
        "FallbackCostCalculationGroupId": UUIDAttribute,
        "BackingTable_BOMParametersRelationshipId": UUIDAttribute,
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("pim_billofmaterials.parameters");
  }
}
mixin(EntityCalls!("BOMParameterEntity"))
  
version(test_model_pim) { unittest {
  // Todo
}}
