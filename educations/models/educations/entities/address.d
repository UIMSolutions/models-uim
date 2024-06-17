module models.educations.entities.address;

@safe:
import models.educations;

// Address and shipping information. Used to store additional addresses for an account or contact.
// name = Descriptive name for the customer's address, such as Corporate Headquarters.
class DAddressEntity : DEntity {
  mixin(EntityThis!("AddressEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "parentId": UUIDAttribute, //	Choose the customer's address.	
        "parentIdTypeCode": StringAttribute, //	The name of the entity linked by parentId	
        "customerAddressId": UUIDAttribute, //	Unique identifier of the customer address.	
        "addressNumber": StringAttribute, //	Shows the number of the address, to indicate whether the address is the primary, secondary, or other address for the customer.	
        "objectTypeCode": StringAttribute, //	Shows the type code of the customer record to indicate whether the address belongs to a customer account or contact.	
        "objectTypeCode_display": StringAttribute, //		
        "addressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	
        "addressTypeCode_display": StringAttribute, //		
        "primaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	
        "line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	
        "line2": StringAttribute, //	Type the second line of the customer's address.	
        "line3": StringAttribute, //	Type the third line of the customer's address.	
        "city": StringAttribute, //	Type the city for the customer's address to help identify the location.	
        "stateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	
        "county": StringAttribute, //	Type the county for the customer's address.	
        "country": StringAttribute, //	Type the country or region for the customer's address.	
        "postOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	
        "postalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	
        "UTCOffset": StringAttribute, //	Select the time zone for the address.	
        "freightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	
        "freightTermsCode_display": StringAttribute, //		
        "UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	
        "longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "shippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	
        "shippingMethodCode_display": StringAttribute, //		
        "telephone2": StringAttribute, //	Type a second phone number for the customer's address.	
        "telephone3": StringAttribute, //	Type a third phone number for the customer's address.	
        "fax": StringAttribute, //	Type the fax number associated with the customer's address.	
        "versionNumber": StringAttribute, //	Version number of the customer address.	
        "owningBusinessUnit": StringAttribute, //	Shows the business unit that the record owner belongs to.	
        "owningUser": StringAttribute, //	Unique identifier of the user who owns the customer address.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "transactionCurrencyId": UUIDAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "composite": StringAttribute, //	Shows the complete address.	
        "endDate": StringAttribute, //	End Date	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "mailType": StringAttribute, //	Indicate address as Primary or Seasonal	
        "mailType_display": StringAttribute, //		
        "startDate": StringAttribute, //	Start Date	

      ])
      .registerPath("education_addresses");
  }
}
mixin(EntityCalls!("AddressEntity"));


version(test_model_education) { unittest {
    assert(AddressEntity);

    auto entity = AddressEntity;
  }
}