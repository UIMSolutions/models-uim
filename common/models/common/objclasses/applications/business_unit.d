module models.common.objclasses.applications.business_unit;

import models.common;

static this() {
  // Business, division, or department in the Microsoft Dynamics 365 database.
  gsCommon.objclasses("common/application/businessUnit", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization associated with the business unit.	
        "title":"common/application/businessUnit/name", //	Name of the business unit.	
        "divisionName":"common/application/businessUnit/divisionName", //	Name of the division to which the business unit belongs.	
        "fileAsName":"common/application/businessUnit/fileAsName", //	Alternative name under which the business unit can be filed.	
        "tickerSymbol":"common/application/businessUnit/tickerSymbol", //	Stock exchange ticker symbol for the business unit.	
        "stockExchange":"common/application/businessUnit/stockExchange", //	Stock exchange on which the business is listed.	
        "UTCOffset":"common/application/businessUnit/UTCOffset", //	UTC offset for the business unit. This is the difference between local time and standard Coordinated Universal Time.	
        "creditLimit":"common/application/businessUnit/creditLimit", //	Credit limit for the business unit.	
        "costCenter":"common/application/businessUnit/costCenter", //	Name of the business unit cost center.	
        "webSiteUrl":"common/application/businessUnit/webSiteUrl", //	Website URL for the business unit.	
        "ftpSiteUrl":"common/application/businessUnit/ftpSiteUrl", //	FTP site URL for the business unit.	
        "emailAddress":"common/application/businessUnit/emailAddress", //	Email address for the business unit.	
        "inheritanceMask":"common/application/businessUnit/inheritanceMask", //	Inheritance mask for the business unit.	
        "workflowSuspended":"common/application/businessUnit/workflowSuspended", //	Information about whether workflow or sales process rules have been suspended.	
        "parentBusinessUnitId":"dataformat/guid/nullable/false", //	Unique identifier for the parent business unit.	
        "isDisabled":"dataformat/boolean/nullable/true", //	Information about whether the business unit is enabled or disabled.	
        "disabledReason":"common/application/businessUnit/disabledReason", //	Reason for disabling the business unit.	
        "address1AddressId":"common/application/businessUnit/address1AddressId", //	Unique identifier for address 1.	
        "address1AddressTypeCode":"common/application/businessUnit/address1AddressTypeCode", //	Type of address for address 1, such as billing, shipping, or primary address.	
        "address1AddressTypeCode_display":"common/application/businessUnit/address1AddressTypeCode_display", //		
        "address1Name":"common/application/businessUnit/address1Name", //	Name to enter for address 1.	
        "address1Line1":"common/application/businessUnit/address1Line1", //	First line for entering address 1 information.	
        "address1Line2":"common/application/businessUnit/address1Line2", //	Second line for entering address 1 information.	
        "address1Line3":"common/application/businessUnit/address1Line3", //	Third line for entering address 1 information.	
        "address1City":"common/application/businessUnit/address1City", //	City name for address 1.	
        "address1StateOrProvince":"common/application/businessUnit/address1StateOrProvince", //	State or province for address 1.	
        "address1County":"common/application/businessUnit/address1County", //	County name for address 1.	
        "address1Country":"common/application/businessUnit/address1Country", //	Country/region name for address 1.	
        "address1PostOfficeBox":"common/application/businessUnit/address1PostOfficeBox", //	Post office box number for address 1.	
        "address1PostalCode":"common/application/businessUnit/address1PostalCode", //	ZIP Code or postal code for address 1.	
        "address1UTCOffset":"common/application/businessUnit/address1UTCOffset", //	UTC offset for address 1. This is the difference between local time and standard Coordinated Universal Time.	
        "address1UPSZone":"common/application/businessUnit/address1UPSZone", //	United Parcel Service (UPS) zone for address 1.	
        "address1Latitude":"common/application/businessUnit/address1Latitude", //	Latitude for address 1.	
        "address1Telephone1":"common/application/businessUnit/address1Telephone1", //	First telephone number associated with address 1.	
        "address1Longitude":"common/application/businessUnit/address1Longitude", //	Longitude for address 1.	
        "address1ShippingMethodCode":"common/application/businessUnit/address1ShippingMethodCode", //	Method of shipment for address 1.	
        "address1ShippingMethodCode_display":"common/application/businessUnit/address1ShippingMethodCode_display", //		
        "address1Telephone2":"common/application/businessUnit/address1Telephone2", //	Second telephone number associated with address 1.	
        "address1Telephone3":"common/application/businessUnit/address1Telephone3", //	Third telephone number associated with address 1.	
        "address1Fax":"common/application/businessUnit/address1Fax", //	Fax number for address 1.	
        "address2AddressId":"common/application/businessUnit/address2AddressId", //	Unique identifier for address 2.	
        "address2AddressTypeCode":"common/application/businessUnit/address2AddressTypeCode", //	Type of address for address 2, such as billing, shipping, or primary address.	
        "address2AddressTypeCode_display":"common/application/businessUnit/address2AddressTypeCode_display", //		
        "address2Name":"common/application/businessUnit/address2Name", //	Name to enter for address 2.	
        "address2Line1":"common/application/businessUnit/address2Line1", //	First line for entering address 2 information.	
        "address2Line2":"common/application/businessUnit/address2Line2", //	Second line for entering address 2 information.	
        "address2Line3":"common/application/businessUnit/address2Line3", //	Third line for entering address 2 information.	
        "address2City":"common/application/businessUnit/address2City", //	City name for address 2.	
        "address2StateOrProvince":"common/application/businessUnit/address2StateOrProvince", //	State or province for address 2.	
        "address2County":"common/application/businessUnit/address2County", //	County name for address 2.	
        "address2Country":"common/application/businessUnit/address2Country", //	Country/region name for address 2.	
        "address2PostOfficeBox":"common/application/businessUnit/address2PostOfficeBox", //	Post office box number for address 2.	
        "address2PostalCode":"common/application/businessUnit/address2PostalCode", //	ZIP Code or postal code for address 2.	
        "address2UTCOffset":"common/application/businessUnit/address2UTCOffset", //	UTC offset for address 2. This is the difference between local time and standard Coordinated Universal Time.	
        "address2UPSZone":"common/application/businessUnit/address2UPSZone", //	United Parcel Service (UPS) zone for address 2.	
        "address2Latitude":"common/application/businessUnit/address2Latitude", //	Latitude for address 2.	
        "address2Telephone1":"common/application/businessUnit/address2Telephone1", //	First telephone number associated with address 2.	
        "address2Longitude":"common/application/businessUnit/address2Longitude", //	Longitude for address 2.	
        "address2ShippingMethodCode":"common/application/businessUnit/address2ShippingMethodCode", //	Method of shipment for address 2.	
        "address2ShippingMethodCode_display":"common/application/businessUnit/address2ShippingMethodCode_display", //		
        "address2Telephone2":"common/application/businessUnit/address2Telephone2", //	Second telephone number associated with address 2.	
        "address2Telephone3":"common/application/businessUnit/address2Telephone3", //	Third telephone number associated with address 2.	
        "address2Fax":"common/application/businessUnit/address2Fax", //	Fax number for address 2.	
        "picture":"common/application/businessUnit/picture", //	Picture or diagram of the business unit.	
        "calendarId":"common/application/businessUnit/calendarId", //	Fiscal calendar associated with the business unit.	
        "overriddenCreatedOn":"common/application/businessUnit/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/businessUnit/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the businessunit.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the businessunit.	
        "transactionCurrencyId":"common/application/businessUnit/transactionCurrencyId", //	Unique identifier of the currency associated with the businessunit.	
        "exchangeRate":"common/application/businessUnit/exchangeRate", // Exchange rate for the currency associated with the businessunit with respect to the base currency.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}