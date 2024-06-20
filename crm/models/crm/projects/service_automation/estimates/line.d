module models.crm.projects.service_automation.estimates.line;

@safe:
import uim.entities;

// Estimates on a per day timescale.
class DCRMEstimateLineEntity : DEntity {
  mixin(EntityThis!("CRMEstimateLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "estimateLineId": UUIDAttribute, // Shows the entity instances."]),
        "stateCode": StringAttribute, // Status of the Estimate Line"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Estimate Line"]),
        "statusCode_display": StringAttribute, //
        "accountCustomer": StringAttribute, // Shows the customer for the estimate line."]),
        "accountingDate": DateAttribute, // 
        "accountVendor": StringAttribute, //
        "amount": StringAttribute, // Shows the amount on the estimate line."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "amountBase": StringAttribute, // Value of the Amount in base currency."]),
        "amountMethod": StringAttribute, // Shows the calculation method used to determine the amount on the estimate line."]),
        "amountMethod_display": StringAttribute, //
        "basisAmount": StringAttribute, //
        "basisAmountBase": StringAttribute, // Value of the Basis Amount in base currency."]),
        "basisPrice": StringAttribute, //
        "basisPriceBase": StringAttribute, // Value of the Basis Price in base currency."]),
        "basisQuantity": StringAttribute, //
        "billingType": StringAttribute, // Shows whether this estimate line is charged to the customer. "]),
        "billingType_display": StringAttribute, //
        "bookableResource": StringAttribute, // Shows the bookable resource for which estimates are generated."]),
        "contactCustomer": StringAttribute, // Shows the name of the customer contact."]),
        "contactVendor": StringAttribute, //
        "customerType": StringAttribute, // Select the type of customer."]),
        "customerType_display": StringAttribute, //
        "documentDate": DateAttribute, // Shows the transaction date of the estimate line."]),
        "endDateTime": DatetimeAttribute, // Enter the end date and time."]),
        "estimate": StringAttribute, // Shows the name of the estimate line."]),
        "estimatePerDayLines": StringAttribute, // Stores the estimate per day detail lines."]),
        "exchangeRateDate": DateAttribute, // 
        "numberOfResources": StringAttribute, // Shows the estimate of the number of resources intended to be staffed for this task."]),
        "percent": StringAttribute, // Shows the percent for the estimate line."]),
        "price": StringAttribute, // Shows the price for this estimate line."]),
        "priceBase": StringAttribute, // Value of the Price in base currency."]),
        "priceList": StringAttribute, // Shows the price list used in this estimate line."]),
        "product": StringAttribute, // Select the product."]),
        "project": StringAttribute, // Shows the project for this estimate line."]),
        "quantity": StringAttribute, // Enter the estimated quantity of work, cost, and sales."]),
        "resourceCategory": StringAttribute, // Shows the role of this resource on the estimate line."]),
        "resourceOrganizationalUnitId": UUIDAttribute, // Select the organizational unit at the time the estimate line was registered of the resource who should perform the work."]),
        "startDateTime": DatetimeAttribute, // Shows the start date and time for the task for this estimate line."]),
        "task": StringAttribute, // Shows the task related to this estimate line."]),
        "transactionCategory": StringAttribute, // Select the type of transaction."]),
        "transactionClassification": StringAttribute, // Shows the transaction classification for this estimate line."]),
        "transactionClassification_display": StringAttribute, //
        "transactionTypeCode": StringAttribute, // Shows the transaction type for this estimate line."]),
        "transactionTypeCode_display": StringAttribute, //
        "unit": StringAttribute, // Shows the unit of measurement for this estimate line."]),
        "unitSchedule": StringAttribute, // Select the unit of measure for the estimate quantity."]),
        "vendorType": StringAttribute, //
        "vendorType_display": StringAttribute, //
      ])
      .registerPath("crm_estimatelines");
  }
}
mixin(EntityCalls!("CRMEstimateLineEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMEstimateLineEntity);

  auto entity = CRMEstimateLineEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}