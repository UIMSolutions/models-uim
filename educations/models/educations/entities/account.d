module models.educations.entities.account;

@safe:
import models.educations;

// Business that represents a customer or potential customer. The company that is billed in business transactions.
// nam = company or business name.	
class DAccountEntity : DEntity {
  mixin(EntityThis!("AccountEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute,
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([ // individual values  
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "accountId": UUIDAttribute, //	Unique identifier of the account.	
        "accountCategoryCode": StringAttribute, //	Select a category to indicate whether the customer account is standard or preferred.	
        "accountCategoryCode_display": StringAttribute, //		
        "customerSizeCode": StringAttribute, //	Select the size category or range of the account for segmentation and reporting purposes.	
        "customerSizeCode_display": StringAttribute, //		
        "preferredContactMethodCode": StringAttribute, //	Select the preferred method of contact.	
        "preferredContactMethodCode_display": StringAttribute, //		
        "customerTypeCode": StringAttribute, //	Select the category that best describes the relationship between the account and your organization.	
        "customerTypeCode_display": StringAttribute, //		
        "accountRatingCode": StringAttribute, //	Select a rating to indicate the value of the customer account.	
        "accountRatingCode_display": StringAttribute, //		
        "industryCode": StringAttribute, //	Select the account's primary industry for use in marketing segmentation and demographic analysis.	
        "industryCode_display": StringAttribute, //		
        "territoryCode": StringAttribute, //	Select a region or territory for the account for use in segmentation and analysis.	
        "territoryCode_display": StringAttribute, //		
        "accountClassificationCode": StringAttribute, //	Select a classification code to indicate the potential value of the customer account based on the projected return on investment, cooperation level, sales cycle length or other criteria.	
        "accountClassificationCode_display": StringAttribute, //		
        "businessTypeCode": StringAttribute, //	Select the legal designation or other business type of the account for contracts or reporting purposes.	
        "businessTypeCode_display": StringAttribute, //		
        "traversedPath": StringAttribute, //	For internal use only.	
        "paymentTermsCode": StringAttribute, //	Select the payment terms to indicate when the customer needs to pay the total amount.	
        "paymentTermsCode_display": StringAttribute, //		
        "shippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to the account's address to designate the preferred carrier or other delivery option.	
        "shippingMethodCode_display": StringAttribute, //		
        "primaryContactId": UUIDAttribute, //	Choose the primary contact for the account to provide quick access to contact details.	
        "participatesInWorkflow": StringAttribute, //	For system use only. Legacy Microsoft Dynamics CRM 3.0 workflow data.	
        "accountNumber": StringAttribute, //	Type an ID number or code for the account to quickly search and identify the account in system views.	
        "revenue": StringAttribute, //	Type the annual revenue for the account, used as an indicator in financial performance analysis.	
        "numberOfEmployees": StringAttribute, //	Type the number of employees that work at the account for use in marketing segmentation and demographic analysis.	
        "description": StringAttribute, //	Type additional information to describe the account, such as an excerpt from the company's website.	
        "SIC": StringAttribute, //	Type the Standard Industrial Classification (SIC) code that indicates the account's primary industry of business, for use in marketing segmentation and demographic analysis.	
        "ownershipCode": StringAttribute, //	Select the account's ownership structure, such as public or private.	
        "ownershipCode_display": StringAttribute, //		
        "marketCap": StringAttribute, //	Type the market capitalization of the account to identify the company's equity, used as an indicator in financial performance analysis.	
        "sharesOutstanding": StringAttribute, //	Type the number of shares available to the public for the account. This number is used as an indicator in financial performance analysis.	
        "tickerSymbol": StringAttribute, //	Type the stock exchange symbol for the account to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money.	
        "stockExchange": StringAttribute, //	Type the stock exchange at which the account is listed to track their stock and financial performance of the company.	
        "webSiteUrl": StringAttribute, //	Type the account's website URL to get quick details about the company profile.	
        "ftpSiteUrl": StringAttribute, //	Type the URL for the account's FTP site to enable users to access data and share documents.	
        "EMailAddress1": StringAttribute, //	Type the primary email address for the account.	
        "EMailAddress2": StringAttribute, //	Type the secondary email address for the account.	
        "EMailAddress3": StringAttribute, //	Type an alternate email address for the account.	
        "doNotPhone": StringAttribute, //	Select whether the account allows phone calls. If Do Not Allow is selected, the account will be excluded from phone call activities distributed in marketing campaigns.	
        "doNotFax": StringAttribute, //	Select whether the account allows faxes. If Do Not Allow is selected, the account will be excluded from fax activities distributed in marketing campaigns.	
        "telephone1": StringAttribute, //	Type the main phone number for this account.	
        "doNotEMail": StringAttribute, //	Select whether the account allows direct email sent from Microsoft Dynamics 365.	
        "telephone2": StringAttribute, //	Type a second phone number for this account.	
        "fax": StringAttribute, //	Type the fax number for the account.	
        "telephone3": StringAttribute, //	Type a third phone number for this account.	
        "doNotPostalMail": StringAttribute, //	Select whether the account allows direct mail. If Do Not Allow is selected, the account will be excluded from letter activities distributed in marketing campaigns.	
        "doNotBulkEMail": StringAttribute, //	Select whether the account allows bulk email sent through campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but is excluded from email.	
        "doNotBulkPostalMail": StringAttribute, //	Select whether the account allows bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but will be excluded from the postal mail.	
        "creditLimit": StringAttribute, //	Type the credit limit of the account. This is a useful reference when you address invoice and accounting issues with the customer.	
        "creditOnHold": StringAttribute, //	Select whether the credit for the account is on hold. This is a useful reference while addressing the invoice and accounting issues with the customer.	
        "parentAccountId": UUIDAttribute, //	Choose the parent account associated with this account to show parent and child businesses in reporting and analytics.	
        "aging30": StringAttribute, //	For system use only.	
        "aging60": StringAttribute, //	For system use only.	
        "aging90": StringAttribute, //	For system use only.	
        "address1AddressId": UUIDAttribute, //	Unique identifier for address 1.	
        "address1AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	
        "address1AddressTypeCode_display": StringAttribute, //		
        "address1Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "address1PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	
        "address1Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	
        "address1Line2": StringAttribute, //	Type the second line of the customer's address.	
        "address1Line3": StringAttribute, //	Type the third line of the customer's address.	
        "address1City": StringAttribute, //	Type the city for the customer's address to help identify the location.	
        "address1StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	
        "address1County": StringAttribute, //	Type the county for the customer's address.	
        "address1Country": StringAttribute, //	Type the country or region for the customer's address.	
        "address1PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	
        "address1PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	
        "address1UTCOffset": StringAttribute, //	Select the time zone for the address.	
        "address1FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	
        "address1FreightTermsCode_display": StringAttribute, //		
        "address1UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "address1Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "address1Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	
        "address1Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "address1ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	
        "address1ShippingMethodCode_display": StringAttribute, //		
        "address1Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	
        "address1Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	
        "address1Fax": StringAttribute, //	Type the fax number associated with the customer's address.	
        "address1Composite": StringAttribute, //	Shows the complete address.	
        "address1EndDate": StringAttribute, //	End Date	
        "address1ExternalIdentifier": StringAttribute, //	External Identifier	
        "address1ExternalSourceSystem": StringAttribute, //	External Source System	
        "address1ExternalSourceSystem_display": StringAttribute, //		
        "address1MailType": StringAttribute, //	Indicate address as Primary or Seasonal	
        "address1MailType_display": StringAttribute, //		
        "address1StartDate": StringAttribute, //	Start Date	
        "address2AddressId": UUIDAttribute, //	Unique identifier for address 1.	
        "address2AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	
        "address2AddressTypeCode_display": StringAttribute, //		
        "address2Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "address2PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	
        "address2Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	
        "address2Line2": StringAttribute, //	Type the second line of the customer's address.	
        "address2Line3": StringAttribute, //	Type the third line of the customer's address.	
        "address2City": StringAttribute, //	Type the city for the customer's address to help identify the location.	
        "address2StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	
        "address2County": StringAttribute, //	Type the county for the customer's address.	
        "address2Country": StringAttribute, //	Type the country or region for the customer's address.	
        "address2PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	
        "address2PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	
        "address2UTCOffset": StringAttribute, //	Select the time zone for the address.	
        "address2FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	
        "address2FreightTermsCode_display": StringAttribute, //		
        "address2UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "address2Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "address2Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	
        "address2Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "address2ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	
        "address2ShippingMethodCode_display": StringAttribute, //		
        "address2Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	
        "address2Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	
        "address2Fax": StringAttribute, //	Type the fax number associated with the customer's address.	
        "address2Composite": StringAttribute, //	Shows the complete address.	
        "address2EndDate": StringAttribute, //	End Date	
        "address2ExternalIdentifier": StringAttribute, //	External Identifier	
        "address2ExternalSourceSystem": StringAttribute, //	External Source System	
        "address2ExternalSourceSystem_display": StringAttribute, //		
        "address2MailType": StringAttribute, //	Indicate address as Primary or Seasonal	
        "address2MailType_display": StringAttribute, //		
        "address2StartDate": StringAttribute, //	Start Date	
        "preferredAppointmentDayCode": StringAttribute, //	Select the preferred day of the week for service appointments.	
        "preferredAppointmentDayCode_display": StringAttribute, //		
        "preferredSystemUserId": UUIDAttribute, //	Choose the preferred service representative for reference when you schedule service activities for the account.	
        "preferredAppointmentTimeCode": StringAttribute, //	Select the preferred time of day for service appointments.	
        "preferredAppointmentTimeCode_display": StringAttribute, //		
        "merged": StringAttribute, //	Shows whether the account has been merged with another account.	
        "doNotSendMM": StringAttribute, //	Select whether the account accepts marketing materials, such as brochures or catalogs.	
        "masterId": UUIDAttribute, //	Shows the master account that the account was merged with.	
        "lastUsedInCampaign": StringAttribute, //	Shows the date when the account was last included in a marketing campaign or quick campaign.	
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "transactionCurrencyId": UUIDAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "creditLimitBase": StringAttribute, //	Shows the credit limit converted to the system's default base currency for reporting purposes.	
        "aging30Base": StringAttribute, //	The base currency equivalent of the aging 30 field.	
        "revenueBase": StringAttribute, //	Shows the annual revenue converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "aging90Base": StringAttribute, //	The base currency equivalent of the aging 90 field.	
        "marketCapBase": StringAttribute, //	Shows the market capitalization converted to the system's default base currency.	
        "aging60Base": StringAttribute, //	The base currency equivalent of the aging 60 field.	
        "yomiName": StringAttribute, //	Type the phonetic spelling of the company name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications.	
        "stageId": UUIDAttribute, //	Shows the ID of the stage.	
        "processId": UUIDAttribute, //	Shows the ID of the process.	
        "entityImageId": UUIDAttribute, //	For internal use only.	
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, //	Total time spent for emails (read and write) and meetings by me in relation to account record.	
        "createdByExternalParty": StringAttribute, //	Shows the external party who created the record.	
        "modifiedByExternalParty": StringAttribute, //	Shows the external party who modified the record.	
        "primarySatoriId": UUIDAttribute, //	Primary Satori ID for Account	
        "primaryTwitterId": UUIDAttribute, //	Primary Twitter ID for Account	
        "SLAId": UUIDAttribute, //	Choose the service level agreement (SLA) that you want to apply to the Account record.	
        "SLAInvokedId": UUIDAttribute, //	Last SLA that was applied to this case. This field is for internal use only.	
        "onHoldTime": StringAttribute, //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime": StringAttribute, //	Contains the date and time stamp of the last on hold time.	
        "followEmail": StringAttribute, //	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the account.	
        "marketingOnly": StringAttribute, //	Whether is only for marketing	
        "accountType": StringAttribute, //	Type of Account	
        "accountType_display": StringAttribute, //		
        "externalIdentifier": StringAttribute, //		
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "numberofContacts": StringAttribute, //	Rollup count of number of associated Contacts where this is their Associated Campus.	

      ])
      .registerPath("education_accounts");
  }
}
mixin(EntityCalls!("AccountEntity"));


version(test_model_education) { unittest {
    assert(AccountEntity);

    auto entity = AccountEntity;
  }
}