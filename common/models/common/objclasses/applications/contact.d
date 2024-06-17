module models.common.objclasses.applications.contact;

import models.common;

static this() {
  // Person with whom a business unit has a relationship, such as customer, supplier, and colleague.
  gsCommon.objclasses("common/application/contact", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity")
      .attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/contact/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/contact/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/contact/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/contact/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/contact/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/contact/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/contact/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/contact/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "customerSizeCode":"common/application/contact/customerSizeCode", //	Select the size of the contact's company for segmentation and reporting purposes.	
        "customerSizeCode_display":"common/application/contact/customerSizeCode_display", //		
        "customerTypeCode":"common/application/contact/customerTypeCode", //	Select the category that best describes the relationship between the contact and your organization.	
        "customerTypeCode_display":"common/application/contact/customerTypeCode_display", //		
        "preferredContactMethodCode":"common/application/contact/preferredContactMethodCode", //	Select the preferred method of contact.	
        "preferredContactMethodCode_display":"common/application/contact/preferredContactMethodCode_display", //		
        "leadSourceCode":"common/application/contact/leadSourceCode", //	Select the primary marketing source that directed the contact to your organization.	
        "leadSourceCode_display":"common/application/contact/leadSourceCode_display", //		
        "paymentTermsCode":"common/application/contact/paymentTermsCode", //	Select the payment terms to indicate when the customer needs to pay the total amount.	
        "paymentTermsCode_display":"common/application/contact/paymentTermsCode_display", //		
        "shippingMethodCode":"common/application/contact/shippingMethodCode", //	Select a shipping method for deliveries sent to this address.	
        "shippingMethodCode_display":"common/application/contact/shippingMethodCode_display", //		
        "accountId":"common/application/contact/accountId", //	Unique identifier of the account with which the contact is associated.	
        "participatesInWorkflow":"common/application/contact/participatesInWorkflow", //	Shows whether the contact participates in workflow rules.	
        "isBackofficeCustomer":"common/application/contact/isBackofficeCustomer", //	Select whether the contact exists in a separate accounting or other system, such as Microsoft Dynamics GP or another ERP database, for use in integration processes.	
        "salutation":"common/application/contact/salutation", //	Type the salutation of the contact to make sure the contact is addressed correctly in sales calls, email messages, and marketing campaigns.	
        "jobTitle":"common/application/contact/jobTitle", //	Type the job title of the contact to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "firstName":"common/application/contact/firstName", //	Type the contact's first name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "department":"common/application/contact/department", //	Type the department or business unit where the contact works in the parent company or business.	
        "nickName":"common/application/contact/nickName", //	Type the contact's nickname.	
        "middleName":"common/application/contact/middleName", //	Type the contact's middle name or initial to make sure the contact is addressed correctly.	
        "lastName":"common/application/contact/lastName", //	Type the contact's last name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "suffix":"common/application/contact/suffix", //	Type the suffix used in the contact's name, such as Jr. or Sr. to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "yomiFirstName":"common/application/contact/yomiFirstName", //	Type the phonetic spelling of the contact's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	
        "fullName":"common/application/contact/fullName", //	Combines and shows the contact's first and last names so that the full name can be displayed in views and reports.	
        "yomiMiddleName":"common/application/contact/yomiMiddleName", //	Type the phonetic spelling of the contact's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	
        "yomiLastName":"common/application/contact/yomiLastName", //	Type the phonetic spelling of the contact's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	
        "anniversary":"common/application/contact/anniversary", //	Enter the date of the contact's wedding or service anniversary for use in customer gift programs or other communications.	
        "birthDate":"common/application/contact/birthDate", //	Enter the contact's birthday for use in customer gift programs or other communications.	
        "governmentId":"common/application/contact/governmentId", //	Type the passport number or other government ID for the contact for use in documents or reports.	
        "yomiFullName":"common/application/contact/yomiFullName", //	Shows the combined Yomi first and last names of the contact so that the full phonetic name can be displayed in views and reports.	
        "employeeId":"common/application/contact/employeeId", //	Type the employee ID or number for the contact for reference in orders, service cases, or other communications with the contact's organization.	
        "genderCode":"common/application/contact/genderCode", //	Select the contact's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "genderCode_display":"common/application/contact/genderCode_display", //		
        "annualIncome":"common/application/contact/annualIncome", //	Type the contact's annual income for use in profiling and financial analysis.	
        "hasChildrenCode":"common/application/contact/hasChildrenCode", //	Select whether the contact has any children for reference in follow-up phone calls and other communications.	
        "hasChildrenCode_display":"common/application/contact/hasChildrenCode_display", //		
        "educationCode":"common/application/contact/educationCode", //	Select the contact's highest level of education for use in segmentation and analysis.	
        "educationCode_display":"common/application/contact/educationCode_display", //		
        "webSiteUrl":"common/application/contact/webSiteUrl", //	Type the contact's professional or personal website or blog URL.	
        "familyStatusCode":"common/application/contact/familyStatusCode", //	Select the marital status of the contact for reference in follow-up phone calls and other communications.	
        "familyStatusCode_display":"common/application/contact/familyStatusCode_display", //		
        "ftpSiteUrl":"common/application/contact/ftpSiteUrl", //	Type the URL for the contact's FTP site to enable users to access data and share documents.	
        "EMailAddress1":"common/application/contact/EMailAddress1", //	Type the primary email address for the contact.	
        "spousesName":"common/application/contact/spousesName", //	Type the name of the contact's spouse or partner for reference during calls, events, or other communications with the contact.	
        "assistantName":"common/application/contact/assistantName", //	Type the name of the contact's assistant.	
        "EMailAddress2":"common/application/contact/EMailAddress2", //	Type the secondary email address for the contact.	
        "assistantPhone":"common/application/contact/assistantPhone", //	Type the phone number for the contact's assistant.	
        "EMailAddress3":"common/application/contact/EMailAddress3", //	Type an alternate email address for the contact.	
        "doNotPhone":"common/application/contact/doNotPhone", //	Select whether the contact accepts phone calls. If Do Not Allow is selected, the contact will be excluded from any phone call activities distributed in marketing campaigns.	
        "managerName":"common/application/contact/managerName", //	Type the name of the contact's manager for use in escalating issues or other follow-up communications with the contact.	
        "managerPhone":"common/application/contact/managerPhone", //	Type the phone number for the contact's manager.	
        "doNotFax":"common/application/contact/doNotFax", //	Select whether the contact allows faxes. If Do Not Allow is selected, the contact will be excluded from any fax activities distributed in marketing campaigns.	
        "doNotEMail":"common/application/contact/doNotEMail", //	Select whether the contact allows direct email sent from Microsoft Dynamics 365. If Do Not Allow is selected, Microsoft Dynamics 365 will not send the email.	
        "doNotPostalMail":"common/application/contact/doNotPostalMail", //	Select whether the contact allows direct mail. If Do Not Allow is selected, the contact will be excluded from letter activities distributed in marketing campaigns.	
        "doNotBulkEMail":"common/application/contact/doNotBulkEMail", //	Select whether the contact accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the email.	
        "doNotBulkPostalMail":"common/application/contact/doNotBulkPostalMail", //	Select whether the contact accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the letters.	
        "accountRoleCode":"common/application/contact/accountRoleCode", //	Select the contact's role within the company or sales process, such as decision maker, employee, or influencer.	
        "accountRoleCode_display":"common/application/contact/accountRoleCode_display", //		
        "territoryCode":"common/application/contact/territoryCode", //	Select a region or territory for the contact for use in segmentation and analysis.	
        "territoryCode_display":"common/application/contact/territoryCode_display", //		
        "creditLimit":"common/application/contact/creditLimit", //	Type the credit limit of the contact for reference when you address invoice and accounting issues with the customer.	
        "creditOnHold":"common/application/contact/creditOnHold", //	Select whether the contact is on a credit hold, for reference when addressing invoice and accounting issues.	
        "numberOfChildren":"common/application/contact/numberOfChildren", //	Type the number of children the contact has for reference in follow-up phone calls and other communications.	
        "childrensNames":"common/application/contact/childrensNames", //	Type the names of the contact's children for reference in communications and client programs.	
        "mobilePhone":"common/application/contact/mobilePhone", //	Type the mobile phone number for the contact.	
        "pager":"common/application/contact/pager", //	Type the pager number for the contact.	
        "telephone1":"common/application/contact/telephone1", //	Type the main phone number for this contact.	
        "telephone2":"common/application/contact/telephone2", //	Type a second phone number for this contact.	
        "telephone3":"common/application/contact/telephone3", //	Type a third phone number for this contact.	
        "fax":"common/application/contact/fax", //	Type the fax number for the contact.	
        "aging30":"common/application/contact/aging30", //	For system use only.	
        "stateCode":"common/application/contact/stateCode", //	Shows whether the contact is active or inactive. Inactive contacts are read-only and can't be edited unless they are reactivated.	
        "stateCode_display":"common/application/contact/stateCode_display", //		
        "aging60":"common/application/contact/aging60", //	For system use only.	
        "statusCode":"common/application/contact/statusCode", //	Select the contact's status.	
        "statusCode_display":"common/application/contact/statusCode_display", //		
        "aging90":"common/application/contact/aging90", //	For system use only.	
        "parentContactId":"common/application/contact/parentContactId", //	Unique identifier of the parent contact.	
        "address1AddressId":"common/application/contact/address1AddressId", //	Unique identifier for address n.	
        "address1AddressTypeCode":"common/application/contact/address1AddressTypeCode", //	Select the address type, such as primary or billing.	
        "address1AddressTypeCode_display":"common/application/contact/address1AddressTypeCode_display", //		
        "address1Name":"common/application/contact/address1Name", //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "address1PrimaryContactName":"common/application/contact/address1PrimaryContactName", //	Type the name of the primary contact person for the customer's address.	
        "address1Line1":"common/application/contact/address1Line1", //	Type the first line of the customer's address to help identify the location.	
        "address1Line2":"common/application/contact/address1Line2", //	Type the second line of the customer's address.	
        "address1Line3":"common/application/contact/address1Line3", //	Type the third line of the customer's address.	
        "address1City":"common/application/contact/address1City", //	Type the city for the customer's address to help identify the location.	
        "address1StateOrProvince":"common/application/contact/address1StateOrProvince", //	Type the state or province of the customer's address.	
        "address1County":"common/application/contact/address1County", //	Type the county for the customer's address.	
        "address1Country":"common/application/contact/address1Country", //	Type the country or region for the customer's address.	
        "address1PostOfficeBox":"common/application/contact/address1PostOfficeBox", //	Type the post office box number of the customer's address.	
        "address1PostalCode":"common/application/contact/address1PostalCode", //	Type the ZIP Code or postal code for the address.	
        "address1UTCOffset":"common/application/contact/address1UTCOffset", //	Select the time zone for the address.	
        "address1FreightTermsCode":"common/application/contact/address1FreightTermsCode", //	Select the freight terms to make sure shipping charges are processed correctly.	
        "address1FreightTermsCode_display":"common/application/contact/address1FreightTermsCode_display", //		
        "address1UPSZone":"common/application/contact/address1UPSZone", //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "address1Latitude":"common/application/contact/address1Latitude", //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "address1Telephone1":"common/application/contact/address1Telephone1", //	Type the primary phone number for the customer's address.	
        "address1Longitude":"common/application/contact/address1Longitude", //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "address1ShippingMethodCode":"common/application/contact/address1ShippingMethodCode", //	Select a shipping method for deliveries sent to this address.	
        "address1ShippingMethodCode_display":"common/application/contact/address1ShippingMethodCode_display", //		
        "address1Telephone2":"common/application/contact/address1Telephone2", //	Type a second phone number for the customer's address.	
        "address1Telephone3":"common/application/contact/address1Telephone3", //	Type a third phone number for the customer's address.	
        "address1Fax":"common/application/contact/address1Fax", //	Type the fax number associated with the customer's address.	
        "address1Composite":"common/application/contact/address1Composite", //	Shows the complete address.	
        "address2AddressId":"common/application/contact/address2AddressId", //	Unique identifier for address n.	
        "address2AddressTypeCode":"common/application/contact/address2AddressTypeCode", //	Select the address type, such as primary or billing.	
        "address2AddressTypeCode_display":"common/application/contact/address2AddressTypeCode_display", //		
        "address2Name":"common/application/contact/address2Name", //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "address2PrimaryContactName":"common/application/contact/address2PrimaryContactName", //	Type the name of the primary contact person for the customer's address.	
        "address2Line1":"common/application/contact/address2Line1", //	Type the first line of the customer's address to help identify the location.	
        "address2Line2":"common/application/contact/address2Line2", //	Type the second line of the customer's address.	
        "address2Line3":"common/application/contact/address2Line3", //	Type the third line of the customer's address.	
        "address2City":"common/application/contact/address2City", //	Type the city for the customer's address to help identify the location.	
        "address2StateOrProvince":"common/application/contact/address2StateOrProvince", //	Type the state or province of the customer's address.	
        "address2County":"common/application/contact/address2County", //	Type the county for the customer's address.	
        "address2Country":"common/application/contact/address2Country", //	Type the country or region for the customer's address.	
        "address2PostOfficeBox":"common/application/contact/address2PostOfficeBox", //	Type the post office box number of the customer's address.	
        "address2PostalCode":"common/application/contact/address2PostalCode", //	Type the ZIP Code or postal code for the address.	
        "address2UTCOffset":"common/application/contact/address2UTCOffset", //	Select the time zone for the address.	
        "address2FreightTermsCode":"common/application/contact/address2FreightTermsCode", //	Select the freight terms to make sure shipping charges are processed correctly.	
        "address2FreightTermsCode_display":"common/application/contact/address2FreightTermsCode_display", //		
        "address2UPSZone":"common/application/contact/address2UPSZone", //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "address2Latitude":"common/application/contact/address2Latitude", //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "address2Telephone1":"common/application/contact/address2Telephone1", //	Type the primary phone number for the customer's address.	
        "address2Longitude":"common/application/contact/address2Longitude", //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "address2ShippingMethodCode":"common/application/contact/address2ShippingMethodCode", //	Select a shipping method for deliveries sent to this address.	
        "address2ShippingMethodCode_display":"common/application/contact/address2ShippingMethodCode_display", //		
        "address2Telephone2":"common/application/contact/address2Telephone2", //	Type a second phone number for the customer's address.	
        "address2Telephone3":"common/application/contact/address2Telephone3", //	Type a third phone number for the customer's address.	
        "address2Fax":"common/application/contact/address2Fax", //	Type the fax number associated with the customer's address.	
        "address2Composite":"common/application/contact/address2Composite", //	Shows the complete address.	
        "address3AddressId":"common/application/contact/address3AddressId", //	Unique identifier for address n.	
        "address3AddressTypeCode":"common/application/contact/address3AddressTypeCode", //	Select the address type, such as primary or billing.	
        "address3AddressTypeCode_display":"common/application/contact/address3AddressTypeCode_display", //		
        "address3Name":"common/application/contact/address3Name", //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "address3PrimaryContactName":"common/application/contact/address3PrimaryContactName", //	Type the name of the primary contact person for the customer's address.	
        "address3Line1":"common/application/contact/address3Line1", //	Type the first line of the customer's address to help identify the location.	
        "address3Line2":"common/application/contact/address3Line2", //	Type the second line of the customer's address.	
        "address3Line3":"common/application/contact/address3Line3", //	Type the third line of the customer's address.	
        "address3City":"common/application/contact/address3City", //	Type the city for the customer's address to help identify the location.	
        "address3StateOrProvince":"common/application/contact/address3StateOrProvince", //	Type the state or province of the customer's address.	
        "address3County":"common/application/contact/address3County", //	Type the county for the customer's address.	
        "address3Country":"common/application/contact/address3Country", //	Type the country or region for the customer's address.	
        "address3PostOfficeBox":"common/application/contact/address3PostOfficeBox", //	Type the post office box number of the customer's address.	
        "address3PostalCode":"common/application/contact/address3PostalCode", //	Type the ZIP Code or postal code for the address.	
        "address3UTCOffset":"common/application/contact/address3UTCOffset", //	Select the time zone for the address.	
        "address3FreightTermsCode":"common/application/contact/address3FreightTermsCode", //	Select the freight terms to make sure shipping charges are processed correctly.	
        "address3FreightTermsCode_display":"common/application/contact/address3FreightTermsCode_display", //		
        "address3UPSZone":"common/application/contact/address3UPSZone", //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "address3Latitude":"common/application/contact/address3Latitude", //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "address3Telephone1":"common/application/contact/address3Telephone1", //	Type the primary phone number for the customer's address.	
        "address3Longitude":"common/application/contact/address3Longitude", //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "address3ShippingMethodCode":"common/application/contact/address3ShippingMethodCode", //	Select a shipping method for deliveries sent to this address.	
        "address3ShippingMethodCode_display":"common/application/contact/address3ShippingMethodCode_display", //		
        "address3Telephone2":"common/application/contact/address3Telephone2", //	Type a second phone number for the customer's address.	
        "address3Telephone3":"common/application/contact/address3Telephone3", //	Type a third phone number for the customer's address.	
        "address3Fax":"common/application/contact/address3Fax", //	Type the fax number associated with the customer's address.	
        "address3Composite":"common/application/contact/address3Composite", //	Shows the complete address.	
        "preferredSystemUserId":"common/application/contact/preferredSystemUserId", //	Choose the regular or preferred customer service representative for reference when scheduling service activities for the contact.	
        "masterId":"common/application/contact/masterId", //	Unique identifier of the master contact for merge.	
        "preferredAppointmentDayCode":"common/application/contact/preferredAppointmentDayCode", //	Select the preferred day of the week for service appointments.	
        "preferredAppointmentDayCode_display":"common/application/contact/preferredAppointmentDayCode_display", //		
        "preferredAppointmentTimeCode":"common/application/contact/preferredAppointmentTimeCode", //	Select the preferred time of day for service appointments.	
        "preferredAppointmentTimeCode_display":"common/application/contact/preferredAppointmentTimeCode_display", //		
        "doNotSendMM":"common/application/contact/doNotSendMM", //	Select whether the contact accepts marketing materials, such as brochures or catalogs. Contacts that opt out can be excluded from marketing initiatives.	
        "parentCustomerId":"common/application/contact/parentCustomerId", //	Select the parent account or parent contact for the contact to provide a quick link to additional details, such as financial information, activities, and opportunities.	
        "parentCustomerIdType":"common/application/contact/parentCustomerIdType", //	The type of parent customer, either Account or Contact.	
        "merged":"common/application/contact/merged", //	Shows whether the account has been merged with a master contact.	
        "externalUserIdentifier":"common/application/contact/externalUserIdentifier", //	Identifier for an external user.	
        "lastUsedInCampaign":"common/application/contact/lastUsedInCampaign", //	Shows the date when the contact was last included in a marketing campaign or quick campaign.	
        "transactionCurrencyId":"common/application/contact/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/contact/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "annualIncomeBase":"common/application/contact/annualIncomeBase", //	Shows the Annual Income field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "creditLimitBase":"common/application/contact/creditLimitBase", //	Shows the Credit Limit field converted to the system's default base currency for reporting purposes. The calculations use the exchange rate specified in the Currencies area.	
        "aging60Base":"common/application/contact/aging60Base", //	Shows the Aging 60 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "aging90Base":"common/application/contact/aging90Base", //	Shows the Aging 90 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "aging30Base":"common/application/contact/aging30Base", //	Shows the Aging 30 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "stageId":"common/application/contact/stageId", //	Shows the ID of the stage.	
        "processId":"common/application/contact/processId", //	Shows the ID of the process.	
        "entityImageId":"common/application/contact/entityImageId", //	For internal use only.	
        "traversedPath":"common/application/contact/traversedPath", //	For internal use only.	
        "SLAId":"common/application/contact/SLAId", //	Choose the service level agreement (SLA) that you want to apply to the Contact record.	
        "SLAInvokedId":"common/application/contact/SLAInvokedId", //	Last SLA that was applied to this case. This field is for internal use only.	
        "onHoldTime":"common/application/contact/onHoldTime", //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime":"common/application/contact/lastOnHoldTime", //	Contains the date and time stamp of the last on hold time.	
        "followEmail":"common/application/contact/followEmail", //	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the contact.	
        "timeSpentByMeOnEmailAndMeetings":"common/application/contact/timeSpentByMeOnEmailAndMeetings", //	Total time spent for emails (read and write) and meetings by me in relation to the contact record.	
        "business2":"common/application/contact/business2", //	Type a second business phone number for this contact.	
        "callback":"common/application/contact/callback", //	Type a callback phone number for this contact.	
        "company":"common/application/contact/company", //	Type the company phone of the contact.	
        "home2":"common/application/contact/home2", //	Type a second home phone number for this contact.	
        "createdByExternalParty":"common/application/contact/createdByExternalParty", //	Shows the external party who created the record.	
        "modifiedByExternalParty":"common/application/contact/modifiedByExternalParty", //	Shows the external party who modified the record.	
        "marketingOnly":"common/application/contact/marketingOnly", //	Whether is only for marketing	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}