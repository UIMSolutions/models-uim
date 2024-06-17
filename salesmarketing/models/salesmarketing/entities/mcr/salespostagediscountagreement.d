
module models.salesmarketing.entities.mcr.salespostagediscountagreement;

import models.salesmarketing;

<<<<<<< HEAD
class DMCRSalesPostageDiscountAgreementEntity : DEntity {
=======
@safe:
class  DMCRSalesPostageDiscountAgreementEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  mixin(EntityThis!("MCRSalesPostageDiscountAgreementEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "accountCode": StringAttribute,
        "accountRelation": StringAttribute,
        "discountAmount": StringAttribute,
        "discountCurrencyCode": StringAttribute,
        "discountApplicableFromDate": StringAttribute,
        "inventDimId": UUIDAttribute,
        "itemCode": StringAttribute,
        "itemRelation": StringAttribute,
        "discountPercentage1": StringAttribute,
        "discountPercentage2": StringAttribute,
        "fromQuantity": StringAttribute,
        "toQuantity": StringAttribute,
        "willSearchContinue": StringAttribute,
        "discountApplicableToDate": StringAttribute,
        "quantityUnitSymbol": StringAttribute,
        "recordId": UUIDAttribute,
        "customerAccountNumber": StringAttribute,
        "postageDiscountCustomerGroupCode": StringAttribute,
        "itemNumber": StringAttribute,
        "productConfigurationId": UUIDAttribute,
        "productColorId": UUIDAttribute,
        "productSizeId": UUIDAttribute,
        "productStyleId": UUIDAttribute,
        "productVersionId": UUIDAttribute,
        "piscountSiteId": UUIDAttribute,
        "piscountWarehouseId": UUIDAttribute,
        "productNumber": StringAttribute,
        "backingTable_PriceDiscTableRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_mcr.salespostagediscountagreement");
  }
}
mixin(EntityCalls!("MCRSalesPostageDiscountAgreementEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(MCRSalesPostageDiscountAgreementEntity);
  
    auto entity = MCRSalesPostageDiscountAgreementEntity;
  }
}
