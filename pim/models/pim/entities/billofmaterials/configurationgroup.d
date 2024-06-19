module models.pim.entities.billofmaterials.configurationgroup;

@safe:
import models.pim;

class DBOMConfigurationGroupEntity : DEntity {
  mixin(EntityThis!("BOMConfigurationGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "GroupId":	StringAttribute, 
        "GroupName":	StringAttribute, 
        "BackingTable_ConfigGroupRelationshipId":	StringAttribute, 
        "Relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, 
      ])
      .registerPath("pim_billofmaterials.configuration.groups");
  }
}
mixin(EntityCalls!("BOMConfigurationGroupEntity"))
  
version(test_model_pim) { unittest {
  // Todo
}}
