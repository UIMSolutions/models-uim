module models.foundation.crm.sales.discounts.discount;

@safe:
import models.foundation;

// Price reduction made from the list price of a product or service based on the quantity purchased.
class DDiscountEntity : DEntity {
  mixin(EntityThis!("DiscountEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        StatusCodeAttribute // Select the discount's status.
      ])       
      .addValues([
        "discountId": UUIDAttribute, // nique identifier of the discount."]),
        "createdOnBehalfBy": StringAttribute, // nique identifier of the delegate user who created the discount."]),
        "modifiedOnBehalfBy": StringAttribute, // nique identifier of the delegate user who last modified the discount."]),
        "importSequenceNumber": NumberAttribute, // equence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // ate and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // or internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // ime zone code that was in use when the record was created."]),
        "amount": StringAttribute, // mount of the discount, specified either as a percentage or as a monetary amount."]),
        "transactionCurrencyId": UUIDAttribute, // hoose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // hows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "amountBase": StringAttribute, // alue of the Amount in base currency."]),
        "discountTypeId": UUIDAttribute, // nique identifier of the discount list associated with the discount."]),
        "highQuantity": StringAttribute, // pper boundary for the quantity range to which a particular discount can be applied."]),
        "isAmountType": BooleanAttribute, // pecifies whether the discount is specified as a monetary amount or a percentage."]),
        "lowQuantity": StringAttribute, // ower boundary for the quantity range to which a particular discount is applied."]),
        "organizationId": UUIDAttribute, // nique identifier of the organization associated with the discount."]),
        "percentage": PercentageAttribute, // ercentage discount value."]),
      ])
      .registerPath("foundation_discounts");
  }
}
mixin(EntityCalls!("DiscountEntity"));

version(test_model_foundation) { unittest {
    
    assert(DiscountEntity);
  
  auto entity = DiscountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}