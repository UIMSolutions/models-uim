module models.common.objclasses.applications.user;

import models.common;

static this() {
  // Territory represents sales regions.
  gsCommon.objclasses("common/application/user", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "systemUserId":"common/application/user/systemUserId", //Unique identifier for the user.
        "organizationId":"dataformat/guid/nullable/false", //Unique identifier of the organization associated with the user.
        "businessUnitId":"dataformat/guid/nullable/false", //Unique identifier of the business unit with which the user is associated.
        "parentSystemUserId":"common/application/user/parentSystemUserId", //Unique identifier of the manager of the user.
        "firstName":"common/application/user/firstName", //First name of the user.
        "salutation":"common/application/user/salutation", //Salutation for correspondence with the user.
        "middleName":"common/application/user/middleName", //Middle name of the user.
        "lastName":"common/application/user/lastName", //Last name of the user.
        "personalEMailAddress":"common/application/user/personalEMailAddress", //Personal email address of the user.
        "fullName":"common/application/user/fullName", //Full name of the user.
        "nickName":"common/application/user/nickName", //Nickname of the user.
        "title":"common/application/user/title", //Title of the user.
        "internalEMailAddress":"common/application/user/internalEMailAddress", //Internal email address for the user.
        "jobTitle":"common/application/user/jobTitle", //Job title of the user.
        "mobileAlertEMail":"common/application/user/mobileAlertEMail", //Mobile alert email address for the user.
        "preferredEmailCode":"common/application/user/preferredEmailCode", //Preferred email address for the user.
        "preferredEmailCode_display":"common/application/user/preferredEmailCode_display", //
        "homePhone":"common/application/user/homePhone", //Home phone number for the user.
        "mobilePhone":"common/application/user/mobilePhone", //Mobile phone number for the user.
        "preferredPhoneCode":"common/application/user/preferredPhoneCode", //Preferred phone number for the user.
        "preferredPhoneCode_display":"common/application/user/preferredPhoneCode_display", //
        "preferredAddressCode":"common/application/user/preferredAddressCode", //Preferred address for the user.
        "preferredAddressCode_display":"common/application/user/preferredAddressCode_display", //
        "photoUrl":"common/application/user/photoUrl", //URL for the Website on which a photo of the user is located.
        "domainName":"common/application/user/domainName", //Active Directory domain of which the user is a member.
        "passportLo":"common/application/user/passportLo", //For internal use only.
        "passportHi":"common/application/user/passportHi", //For internal use only.
        "disabledReason":"common/application/user/disabledReason", //Reason for disabling the user.
        "employeeId":"common/application/user/employeeId", //Employee identifier for the user.
        "isDisabled":"common/application/user/isDisabled", //Information about whether the user is enabled.
        "governmentId":"common/application/user/governmentId", //Government identifier for the user.
        "address1AddressId":"common/application/user/address1AddressId", //Unique identifier for address 1.
        "address1AddressTypeCode":"common/application/user/address1AddressTypeCode", //Type of address for address 1, such as billing, shipping, or primary address.
        "address1AddressTypeCode_display":"common/application/user/address1AddressTypeCode_display", //
        "address1Name":"common/application/user/address1Name", //Name to enter for address 1.
        "address1Line1":"common/application/user/address1Line1", //First line for entering address 1 information.
        "address1Line2":"common/application/user/address1Line2", //Second line for entering address 1 information.
        "address1Line3":"common/application/user/address1Line3", //Third line for entering address 1 information.
        "address1City":"common/application/user/address1City", //City name for address 1.
        "address1StateOrProvince":"common/application/user/address1StateOrProvince", //State or province for address 1.
        "address1County":"common/application/user/address1County", //County name for address 1.
        "address1Country":"common/application/user/address1Country", //Country/region name in address 1.
        "address1PostOfficeBox":"common/application/user/address1PostOfficeBox", //Post office box number for address 1.
        "address1PostalCode":"common/application/user/address1PostalCode", //ZIP Code or postal code for address 1.
        "address1UTCOffset":"common/application/user/address1UTCOffset", //UTC offset for address 1. This is the difference between local time and standard Coordinated Universal Time.
        "address1UPSZone":"common/application/user/address1UPSZone", //United Parcel Service (UPS) zone for address 1.
        "address1Latitude":"common/application/user/address1Latitude", //Latitude for address 1.
        "address1Telephone1":"common/application/user/address1Telephone1", //First telephone number associated with address 1.
        "address1Longitude":"common/application/user/address1Longitude", //Longitude for address 1.
        "address1ShippingMethodCode":"common/application/user/address1ShippingMethodCode", //Method of shipment for address 1.
        "address1ShippingMethodCode_display":"common/application/user/address1ShippingMethodCode_display", //
        "address1Telephone2":"common/application/user/address1Telephone2", //Second telephone number associated with address 1.
        "address1Telephone3":"common/application/user/address1Telephone3", //Third telephone number associated with address 1.
        "address1Fax":"common/application/user/address1Fax", //Fax number for address 1.
        "address2AddressId":"common/application/user/address2AddressId", //Unique identifier for address 2.
        "address2AddressTypeCode":"common/application/user/address2AddressTypeCode", //Type of address for address 2, such as billing, shipping, or primary address.
        "address2AddressTypeCode_display":"common/application/user/address2AddressTypeCode_display", //
        "address2Name":"common/application/user/address2Name", //Name to enter for address 2.
        "address2Line1":"common/application/user/address2Line1", //First line for entering address 2 information.
        "address2Line2":"common/application/user/address2Line2", //Second line for entering address 2 information.
        "address2Line3":"common/application/user/address2Line3", //Third line for entering address 2 information.
        "address2City":"common/application/user/address2City", //City name for address 2.
        "address2StateOrProvince":"common/application/user/address2StateOrProvince", //State or province for address 2.
        "address2County":"common/application/user/address2County", //County name for address 2.
        "address2Country":"common/application/user/address2Country", //Country/region name in address 2.
        "address2PostOfficeBox":"common/application/user/address2PostOfficeBox", //Post office box number for address 2.
        "address2PostalCode":"common/application/user/address2PostalCode", //ZIP Code or postal code for address 2.
        "address2UTCOffset":"common/application/user/address2UTCOffset", //UTC offset for address 2. This is the difference between local time and standard Coordinated Universal Time.
        "address2UPSZone":"common/application/user/address2UPSZone", //United Parcel Service (UPS) zone for address 2.
        "address2Latitude":"common/application/user/address2Latitude", //Latitude for address 2.
        "address2Telephone1":"common/application/user/address2Telephone1", //First telephone number associated with address 2.
        "address2Longitude":"common/application/user/address2Longitude", //Longitude for address 2.
        "address2ShippingMethodCode":"common/application/user/address2ShippingMethodCode", //Method of shipment for address 2.
        "address2ShippingMethodCode_display":"common/application/user/address2ShippingMethodCode_display", //
        "address2Telephone2":"common/application/user/address2Telephone2", //Second telephone number associated with address 2.
        "address2Telephone3":"common/application/user/address2Telephone3", //Third telephone number associated with address 2.
        "address2Fax":"common/application/user/address2Fax", //Fax number for address 2.
        "skills":"common/application/user/skills", //Skill set of the user.
        "displayInServiceViews":"common/application/user/displayInServiceViews", //Whether to display the user in service views.
        "calendarId":"common/application/user/calendarId", //Fiscal calendar associated with the user.
        "setupUser":"common/application/user/setupUser", //Check if user is a setup user.
        "windowsLiveID":"common/application/user/windowsLiveID", //Windows Live ID
        "incomingEmailDeliveryMethod":"common/application/user/incomingEmailDeliveryMethod", //Incoming email delivery method for the user.
        "incomingEmailDeliveryMethod_display":"common/application/user/incomingEmailDeliveryMethod_display", //
        "outgoingEmailDeliveryMethod":"common/application/user/outgoingEmailDeliveryMethod", //Outgoing email delivery method for the user.
        "outgoingEmailDeliveryMethod_display":"common/application/user/outgoingEmailDeliveryMethod_display", //
        "importSequenceNumber":"common/application/user/importSequenceNumber", //Unique identifier of the data import or data migration that created this record.
        "accessMode":"common/application/user/accessMode", //Type of user.
        "accessMode_display":"common/application/user/accessMode_display", //
        "inviteStatusCode":"common/application/user/inviteStatusCode", //User invitation status.
        "inviteStatusCode_display":"common/application/user/inviteStatusCode_display", //
        "overriddenCreatedOn":"common/application/user/overriddenCreatedOn", //Date and time that the record was migrated.
        "UTCConversionTimeZoneCode":"common/application/user/UTCConversionTimeZoneCode", //Time zone code that was in use when the record was created.
        "timeZoneRuleVersionNumber":"common/application/user/timeZoneRuleVersionNumber", //For internal use only.
        "yomiFullName":"common/application/user/yomiFullName", //Pronunciation of the full name of the user, written in phonetic hiragana or katakana characters.
        "yomiLastName":"common/application/user/yomiLastName", //Pronunciation of the last name of the user, written in phonetic hiragana or katakana characters.
        "yomiMiddleName":"common/application/user/yomiMiddleName", //Pronunciation of the middle name of the user, written in phonetic hiragana or katakana characters.
        "yomiFirstName":"common/application/user/yomiFirstName", //Pronunciation of the first name of the user, written in phonetic hiragana or katakana characters.
        "isIntegrationUser":"common/application/user/isIntegrationUser", //Check if user is an integration user.
        "defaultFiltersPopulated":"common/application/user/defaultFiltersPopulated", //Indicates if default outlook filters have been populated.
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //Unique identifier of the delegate user who created the systemuser.
        "queueId":"common/application/user/queueId", //Unique identifier of the default queue for the user.
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //Unique identifier of the delegate user who last modified the systemuser.
        "emailRouterAccessApproval":"common/application/user/emailRouterAccessApproval", //Shows the status of the primary email address.
        "emailRouterAccessApproval_display":"common/application/user/emailRouterAccessApproval_display", //
        "transactionCurrencyId":"common/application/user/transactionCurrencyId", //Unique identifier of the currency associated with the systemuser.
        "exchangeRate":"common/application/user/exchangeRate", //Exchange rate for the currency associated with the systemuser with respect to the base currency.
        "CALType":"common/application/user/CALType", //License type of user.
        "CALType_display":"common/application/user/CALType_display", //
        "isLicensed":"common/application/user/isLicensed", //Information about whether the user is licensed.
        "isSyncWithDirectory":"common/application/user/isSyncWithDirectory", //Information about whether the user is synced with the directory.
        "yammerEmailAddress":"common/application/user/yammerEmailAddress", //User's Yammer login email address
        "yammerUserId":"common/application/user/yammerUserId", //User's Yammer ID
        "defaultMailbox":"common/application/user/defaultMailbox", //Select the mailbox associated with this user.
        "userLicenseType":"common/application/user/userLicenseType", //Shows the type of user license.
        "entityImageId":"common/application/user/entityImageId", //For internal use only.
        "address2Composite":"common/application/user/address2Composite", //Shows the complete secondary address.
        "address1Composite":"common/application/user/address1Composite", //Shows the complete primary address.
        "processId":"common/application/user/processId", //Shows the ID of the process.
        "stageId":"common/application/user/stageId", //Shows the ID of the stage.
        "isEmailAddressApprovedByO365Admin":"common/application/user/isEmailAddressApprovedByO365Admin", //Shows the status of approval of the email address by O365 Admin.
        "positionId":"common/application/user/positionId", //User's position in hierarchical security model.
        "traversedPath":"common/application/user/traversedPath", //For internal use only.
        "sharePointEmailAddress":"common/application/user/sharePointEmailAddress", //SharePoint Work Email Address
        "mobileOfflineProfileId":"common/application/user/mobileOfflineProfileId", //Items contained with a particular SystemUser.
        "defaultOdbFolderName":"common/application/user/defaultOdbFolderName", //Type a default folder name for the user's OneDrive For Business location.
        "applicationId":"common/application/user/applicationId", //The identifier for the application. This is used to access data in another application.
        "applicationIdUri":"common/application/user/applicationIdUri", //The URI used as a unique logical identifier for the external app. This can be used to validate the application.
        "azureActiveDirectoryObjectId":"common/application/user/azureActiveDirectoryObjectId", //This is the application directory object Id.
        "identityId":"common/application/user/identityId", //For internal use only.
        "territoryId":"common/application/user/territoryId", //Unique identifier of the territory to which the user is assigned.
      ]); 
    }
  });
}

unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}