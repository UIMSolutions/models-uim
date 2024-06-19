module models.addressbooks.entities.fias.estatestatus;

import models.addressbooks;

@safe:
class DFiasEstateStatusEntity : DEntity {
  mixin(EntityThis!("FiasEstateStatusEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "estStatId": UUIDAttribute,
        "backingTable_FiasEstateStatusRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_fias.estatestatuses");
  }
}
mixin(EntityCalls!("FiasEstateStatusEntity"));

version(test_library) { unittest {
    assert(FiasEstateStatusEntity);
  
    auto entity = FiasEstateStatusEntity;
  }
}
