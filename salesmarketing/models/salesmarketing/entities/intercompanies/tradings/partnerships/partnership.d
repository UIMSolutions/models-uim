module models.salesmarketing.entities.intercompanies.tradings.partnerships.partnership;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DIntercompanyTradingPartnershipEntity : DEntity {
  mixin(EntityThis!("IntercompanyTradingPartnershipEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "CustomerLegalEntityId": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "CustomerAccountNumber": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "VendorLegalEntityId": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "VendorAccountNumber": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "IsTradingPartnershipActive": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "CustomerTradingPartner_CustomerDataAreaId": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "CustomerTradingPartner_TradingPartnerType": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "VendorTradingPartner_VendorDataAreaId": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "VendorTradingPartner_TradingPartnerType": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
        "BackingTable_InterCompanyTradingPartnerRelationshipId": StringAttribute, //		SalesAndMarketing/IntercompanyTradingPartnershipEntity
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("IntercompanyTradingPartnershipEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(IntercompanyTradingPartnershipEntity);
  
    auto entity = IntercompanyTradingPartnershipEntity;
  }
}
