module models.foundation.crm.projects.service_automation.estimates.line;

@safe:
import models.foundation;

// Estimates on a per day timescale.
class DEstimateLineEntity : DEntity {
  mixin(EntityThis!("EstimateLineEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "estimateLineId": UUIDAttribute, // Shows the entity instances.
        "stateCode": StateCodeAttribute, // Status of the Estimate Line
        "stateCode_display": StringAttribute, // 
        "statusCode": StatusCodeAttribute, //Reason for the status of the Estimate Line
        "statusCode_display": StringAttribute, // 
        "accountCustomer": StringAttribute, // Shows the customer for the estimate line.
        "accountingDate": DateAttribute, // 
        "accountVendor": StringAttribute, // 
        "amount": StringAttribute, // Shows the amount on the estimate line.
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency.
        "amountBase": StringAttribute, // Value of the Amount in base currency.
        "amountMethod": StringAttribute, // Shows the calculation method used to determine the amount on the estimate line.
        "amountMethod_display": StringAttribute, // 
        "basisAmount": StringAttribute, // 
        "basisAmountBase": StringAttribute, // Value of the Basis Amount in base currency.
        "basisPrice": StringAttribute, // 
        "basisPriceBase": StringAttribute, // Value of the Basis Price in base currency.
        "basisQuantity": StringAttribute, // 
        "billingType": StringAttribute, // Shows whether this estimate line is charged to the customer. 
        "billingType_display": StringAttribute, // 
        "bookableResource": StringAttribute, // Shows the bookable resource for which estimates are generated.
        "contactCustomer": StringAttribute, // Shows the name of the customer contact.
        "contactVendor": StringAttribute, // 
        "customerType": StringAttribute, // Select the type of customer.
        "customerType_display": StringAttribute, // 
        "documentDate": DateAttribute, // Shows the transaction date of the estimate line.
        "endDateTime": DatetimeAttribute, // Enter the end date and time.
        "estimate": StringAttribute, // Shows the name of the estimate line.
        "estimatePerDayLines": StringAttribute, // Stores the estimate per day detail lines.
        "exchangeRateDate": DateAttribute, // 
        "numberOfResources": StringAttribute, // Shows the estimate of the number of resources intended to be staffed for this task.
        "percent": StringAttribute, // Shows the percent for the estimate line.
        "price": StringAttribute, // Shows the price for this estimate line.
        "priceBase": StringAttribute, // Value of the Price in base currency.
        "priceList": StringAttribute, // Shows the price list used in this estimate line.
        "product": StringAttribute, // Select the product.
        "project": StringAttribute, // Shows the project for this estimate line.
        "quantity": StringAttribute, // Enter the estimated quantity of work, cost, and sales.
        "resourceCategory": StringAttribute, // Shows the role of this resource on the estimate line.
        "resourceOrganizationalUnitId": UUIDAttribute, // Select the organizational unit at the time the estimate line was registered of the resource who should perform the work.
        "startDateTime": DatetimeAttribute, // Shows the start date and time for the task for this estimate line.
        "task": StringAttribute, // Shows the task related to this estimate line.
        "transactionCategory": StringAttribute, // Select the type of transaction.
        "transactionClassification": StringAttribute, // Shows the transaction classification for this estimate line.
        "transactionClassification_display": StringAttribute, // 
        "transactionTypeCode": StringAttribute, // Shows the transaction type for this estimate line.
        "transactionTypeCode_display": StringAttribute, // 
        "unit": StringAttribute, // Shows the unit of measurement for this estimate line.
        "unitSchedule": StringAttribute, // Select the unit of measure for the estimate quantity.
        "vendorType": StringAttribute, // 
        "vendorType_display": StringAttribute, // 
      ])
      .registerPath("foundation_crm.projects.service_automation.estimates.line;");
  }

  override string entityClass() { return "EstimateLineEntity"; }
  override string entityClasses() { return "EstimateLineEntitys"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto EstimateLineEntity() { return new DEstimateLineEntity; } 
auto EstimateLineEntity(Json json) { return new DEstimateLineEntity(json); } 

version(test_model_foundation) { unittest {
    
    assert(EstimateLineEntity);

  auto entity = EstimateLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}