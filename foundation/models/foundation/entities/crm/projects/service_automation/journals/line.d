module models.foundation.crm.projects.service_automation.journals.line;

@safe:
import models.foundation;

// nposted business transaction line details.
class DAPLJournalLine : DEntity {
  mixin(EntityThis!("JournalLineEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        StateCodeAttribute, // Status of the Journal Line
        StatusCodeAttribute // Reason for the status of the Journal Line
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "ownerId": UUIDAttribute, // Owner Id
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "journalLineId": UUIDAttribute, // Unique identifier for entity instances
        "accountCustomer": StringAttribute, // Shows the customer for the journal line.
        "accountingDate": DateAttribute, // 
        "accountVendor": StringAttribute, // 
        "amount": StringAttribute, // Shows the amount of the journal line.
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity.
        "documentDate": DateAttribute, // Enter the transaction date of the journal line.
        "endDateTime": DatetimeAttribute, // Enter the end date and time.
        "exchangeRateDate": DateAttribute, // 
        "externalDescription": StringAttribute, // The external description of the journal line.
        "isPosted": BooleanAttribute, // Shows whether the journal has been submitted.
        "resourceCategory": StringAttribute, // Select the resource role.
        "resourceOrganizationalUnitId": UUIDAttribute, // Organizational unit at the time the entry was registered of the resource who performed the work.
        "salesContract": StringAttribute, // Shows the project contract.
        "salesContractLine": StringAttribute, // Deprecated) Shows the project contract line.
        "salesContractLineId": UUIDAttribute, // Unique identifier for Project Contract Line associated with Journal Line.
        "startDateTime": DatetimeAttribute, // Enter the start date and time.
        "task": StringAttribute, // Select the project task.
        "transactionCategory": StringAttribute, // Select the transaction category.
        "transactionClassification": StringAttribute, // Select the transaction class.
        "transactionClassification_display": StringAttribute, // 
        "transactionTypeCode": StringAttribute, // 
        "transactionTypeCode_display": StringAttribute, // 
        "unit": StringAttribute, // Shows the unit of measurement.
        "unitSchedule": StringAttribute, // Shows the unit schedule.
        "vendorType": StringAttribute, // 
        "vendorType_display": StringAttribute, // 
        "exchangeRate": StringAttribute, //Exchange rate for the currency associated with the entity with respect to the base currency.
        "amountBase": StringAttribute, //Value of the Amount in base currency.
        "amountMethod": StringAttribute, //Select the calculation method for the amount.
        "amountMethod_display": StringAttribute, //
        "basisAmount": StringAttribute, //Enter the basis amount of the journal line.
        "basisAmountBase": StringAttribute, //Value of the Basis Amount in base currency.
        "basisPrice": StringAttribute, //Enter the basis price of the journal line.
        "basisPriceBase": StringAttribute, //Value of the Basis Price in base currency.
        "basisQuantity": StringAttribute, //Enter the basis quantity of the journal line.
        "billingStatus": StringAttribute, //
        "billingStatus_display": StringAttribute, //
        "billingType": StringAttribute, //Select the billing type for the journal line.
        "billingType_display": StringAttribute, //
        "bookableResource": StringAttribute, //Shows the resource.
        "contactCustomer": StringAttribute, //
        "contactVendor": StringAttribute, //
        "contractingUnit": StringAttribute, //Unique identifier for Organizational Unit associated with Journal Line.
        "customerType": StringAttribute, //Shows the type of customer.
        "customerType_display": StringAttribute, //
        "journal": StringAttribute, //Shows the name of the journal.
        "percent": StringAttribute, //Enter the percent.
        "price": StringAttribute, //Enter the price.
        "priceBase": StringAttribute, //Value of the Price in base currency.
        "priceList": StringAttribute, //Shows the price list used for the journal line.
        "product": StringAttribute, //Select the product.
        "project": StringAttribute, //Select the project.
        "quantity": StringAttribute, //Enter the quantity.
      ])
      .registerPath("foundation_journal.lines");
  }
}
mixin(EntityCalls!("JournalLineEntity"));

version(test_model_foundation) { unittest {
    
    assert(APLJournalLine);

  auto entity = APLJournalLine;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}