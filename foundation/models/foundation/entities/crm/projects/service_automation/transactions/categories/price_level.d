module models.foundation.crm.projects.service_automation.transactions.categories.price_level;

@safe:
import models.foundation;

// List of prices by category on a price list.
class DTransactionCategoryPriceLevelEntity : DEntity {
  mixin(EntityThis!("TransactionCategoryPriceLevelEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        StateCodeAttribute, // Status of the Transaction Category Price"
        StatusCodeAttribute // Reason for the status of the Transaction Category Price
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record.
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record.
        "organizationId": UUIDAttribute, // Unique identifier for the organization
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "percent": StringAttribute, // Enter the mark up on cost when creating billable transactions from cost transactions. This field is relevant only when the price calculation is 'Markup over cost.'
        "price": StringAttribute, // Enter the price of the transaction category.
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity.
        "exchangeRate": StringAttribute, //Exchange rate for the currency associated with the entity with respect to the base currency.
        "priceBase": StringAttribute, //Value of the Price in base currency.
        "priceCalculation": StringAttribute, //Select the method used to determine the sales or bill rate of expenses in this category. Valid values are Price per unit, At cost or Markup over cost.
        "priceCalculation_display": StringAttribute, //
        "priceList": StringAttribute, //Select the price list that this price list line belongs to.
        "transactionCategory": StringAttribute, //Select the transaction category whose price is being setup
        "unit": StringAttribute, //Select the units that transactions of this category can be expressed in.
        "unitSchedule": StringAttribute, //Select the unit schedule that determines in which units the category can be priced.
      ])
      .registerPath("foundation_transaction.category.pricelevels");
  }
}
mixin(EntityCalls!("TransactionCategoryPriceLevelEntity"));

version(test_model_foundation) { unittest {
    
    assert(TransactionCategoryPriceLevelEntity);

  auto entity = TransactionCategoryPriceLevelEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}