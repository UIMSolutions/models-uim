module models.common.objclasses.applications.address;

import models.common;

static this() {
  // Address and shipping information. Used to store additional addresses for an account or contact.
  gsCommon.objclasses("common/application/address", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "parentId":"common/application/address/parentId", // Choose the customer's address.	
        "parentIdTypeCode":"common/application/address/parentIdTypeCode", // The name of the entity linked by parentId	
        "addressNumber":"common/application/address/addressNumber", // 	Shows the number of the address, to indicate whether the address is the primary, secondary, or other address for the customer.	
        "objectTypeCode":"common/application/address/objectTypeCode", // 	Shows the type code of the customer record to indicate whether the address belongs to a customer account or contact.	
        "objectTypeCode_display":"common/application/address/objectTypeCode_display", // 		
        "addressTypeCode":"common/application/address/addressTypeCode", // 	Select the address type, such as primary or billing.	
        "addressTypeCode_display":"common/application/address/addressTypeCode_display", // 		
        "title":"common/application/address/name", // 	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "primaryContactName":"common/application/address/primaryContactName", // 	Type the name of the primary contact person for the customer's address.	
        "line1":"common/application/address/line1", // 	Type the first line of the customer's address to help identify the location.	
        "line2":"common/application/address/line2", // 	Type the second line of the customer's address.	
        "line3":"common/application/address/line3", // 	Type the third line of the customer's address.	
        "city":"common/application/address/city", // 	Type the city for the customer's address to help identify the location.	
        "stateOrProvince":"common/application/address/stateOrProvince", // 	Type the state or province of the customer's address.	
        "county":"common/application/address/county", // 	Type the county for the customer's address.	
        "country":"common/application/address/country", // 	Type the country or region for the customer's address.	
        "postOfficeBox":"common/application/address/postOfficeBox", // 	Type the post office box number of the customer's address.	
        "postalCode":"common/application/address/postalCode", // 	Type the ZIP Code or postal code for the address.	
        "UTCOffset":"common/application/address/UTCOffset", // 	Select the time zone for the address.	
        "freightTermsCode":"common/application/address/freightTermsCode", // 	Select the freight terms to make sure shipping charges are processed correctly.	
        "freightTermsCode_display":"common/application/address/freightTermsCode_display", // 		
        "UPSZone":"common/application/address/UPSZone", // 	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "latitude":"common/application/address/latitude", // 	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "telephone1":"common/application/address/telephone1", // 	Type the primary phone number for the customer's address.	
        "longitude":"common/application/address/longitude", // 	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "longitude":"common/application/address/longitude", // 	Select a shipping method for deliveries sent to this address.	
        "shippingMethodCode_display":"common/application/address/shippingMethodCode_display", // 		
        "telephone2":"common/application/address/telephone2", // 	Type a second phone number for the customer's address.	
        "telephone3":"common/application/address/telephone3", // 	Type a third phone number for the customer's address.	
        "fax":"common/application/address/fax", // 	Type the fax number associated with the customer's address.	
        "owningBusinessUnit":"common/application/address/owningBusinessUnit", // 	Shows the business unit that the record owner belongs to.	
        "owningUser":"common/application/address/owningUser", // 	Unique identifier of the user who owns the customer address.	
        "timeZoneRuleVersionNumber":"common/application/address/timeZoneRuleVersionNumber", // 	For internal use only.	
        "overriddenCreatedOn":"common/application/address/overriddenCreatedOn", // 	Date and time that the record was migrated.	
        "UTCConversionTimeZoneCode":"common/application/address/UTCConversionTimeZoneCode", // 	Time zone code that was in use when the record was created.	
        "importSequenceNumber":"common/application/address/importSequenceNumber", // 	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", // 	Owner Id	
        "ownerIdType":"common/application/address/ownerIdType", // 	The type of owner, either User or Team.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", // 	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", // 	Shows who last updated the record on behalf of another user.	
        "transactionCurrencyId":"common/application/address/transactionCurrencyId", // 	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/address/exchangeRate", // 	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "composite":"common/application/address/composite", // 	Shows the complete address.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}