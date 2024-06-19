module models.addressbooks.entities.legals.representativecontact;

import models.addressbooks;

@safe:
class DLegalRepresentativeContactEntity : DEntity {
  mixin(EntityThis!("LegalRepresentativeContactEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "fiscalOrganizationRootFiscalEstablishmentDataArea": StringAttribute, 
        "fiscalOrganizationRootFiscalEstablishment": StringAttribute, 
        "legalRepresentativeCPF": StringAttribute, 
        "legalRepresentativeRole": StringAttribute, 
        "type": StringAttribute, 
        "contactNumberOrAddress": StringAttribute, 
        "extension": StringAttribute, 
        "internationalCallingCode": StringAttribute, 
        "isPrimary": BooleanAttribute, 
        "isMobilePhone": BooleanAttribute, 
        "isInstantMessage": BooleanAttribute, 
        "isPrivate": BooleanAttribute, 
        "backingTable_LegalRepresentativeEntityRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_legals.representativecontacts");
  }
}
mixin(EntityCalls!("LegalRepresentativeContactEntity"));

version(test_library) { unittest {
    assert(LegalRepresentativeContactEntity);
  
    auto entity = LegalRepresentativeContactEntity;
  }
}
