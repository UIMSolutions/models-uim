module models.educations.entities.contact;

@safe:
import models.educations;

// Person with whom a business unit has a relationship, such as customer, supplier, and colleague.
class DContactEntity : DEntity {
  mixin(EntityThis!("ContactEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addData([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute,
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addData([ // individual values
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "contactId": UUIDAttribute, //	Unique identifier of the contact.	
        "customerSizeCode": StringAttribute, //	Select the size of the contact's company for segmentation and reporting purposes.	
        "customerSizeCode_display": StringAttribute, //		
        "customerTypeCode": StringAttribute, //	Select the category that best describes the relationship between the contact and your organization.	
        "customerTypeCode_display": StringAttribute, //		
        "preferredContactMethodCode": StringAttribute, //	Select the preferred method of contact.	
        "preferredContactMethodCode_display": StringAttribute, //		
        "leadSourceCode": StringAttribute, //	Select the primary marketing source that directed the contact to your organization.	
        "leadSourceCode_display": StringAttribute, //		
        "paymentTermsCode": StringAttribute, //	Select the payment terms to indicate when the customer needs to pay the total amount.	
        "paymentTermsCode_display": StringAttribute, //		
        "shippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	
        "shippingMethodCode_display": StringAttribute, //		
        "accountId": UUIDAttribute, //	Unique identifier of the account with which the contact is associated.	
        "participatesInWorkflow": StringAttribute, //	Shows whether the contact participates in workflow rules.	
        "isBackofficeCustomer": StringAttribute, //	Select whether the contact exists in a separate accounting or other system, such as Microsoft Dynamics GP or another ERP database, for use in integration processes.	
        "salutation": StringAttribute, //	Type the salutation of the contact to make sure the contact is addressed correctly in sales calls, email messages, and marketing campaigns.	
        "jobTitle": StringAttribute, //	Type the job title of the contact to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "firstName": StringAttribute, //	Type the contact's first name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "department": StringAttribute, //	Type the department or business unit where the contact works in the parent company or business.	
        "nickName": StringAttribute, //	Type the contact's nickname.	
        "middleName": StringAttribute, //	Type the contact's middle name or initial to make sure the contact is addressed correctly.	
        "lastName": StringAttribute, //	Type the contact's last name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "suffix": StringAttribute, //	Type the suffix used in the contact's name, such as Jr. or Sr. to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "yomiFirstName": StringAttribute, //	Type the phonetic spelling of the contact's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	
        "fullName": StringAttribute, //	Combines and shows the contact's first and last names so that the full name can be displayed in views and reports.	
        "yomiMiddleName": StringAttribute, //	Type the phonetic spelling of the contact's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	
        "yomiLastName": StringAttribute, //	Type the phonetic spelling of the contact's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	
        "anniversary": StringAttribute, //	Enter the date of the contact's wedding or service anniversary for use in customer gift programs or other communications.	
        "birthDate": StringAttribute, //	Enter the contact's birthday for use in customer gift programs or other communications.	
        "governmentId": UUIDAttribute, //	Type the passport number or other government ID for the contact for use in documents or reports.	
        "yomiFullName": StringAttribute, //	Shows the combined Yomi first and last names of the contact so that the full phonetic name can be displayed in views and reports.	
        "description": StringAttribute, //	Type additional information to describe the contact, such as an excerpt from the company's website.	
        "employeeId": UUIDAttribute, //	Type the employee ID or number for the contact for reference in orders, service cases, or other communications with the contact's organization.	
        "genderCode": StringAttribute, //	Select the contact's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	
        "genderCode_display": StringAttribute, //		
        "annualIncome": StringAttribute, //	Type the contact's annual income for use in profiling and financial analysis.	
        "hasChildrenCode": StringAttribute, //	Select whether the contact has any children for reference in follow-up phone calls and other communications.	
        "hasChildrenCode_display": StringAttribute, //		
        "educationCode": StringAttribute, //	Select the contact's highest level of education for use in segmentation and analysis.	
        "educationCode_display": StringAttribute, //		
        "webSiteUrl": StringAttribute, //	Type the contact's professional or personal website or blog URL.	
        "familyStatusCode": StringAttribute, //	Select the marital status of the contact for reference in follow-up phone calls and other communications.	
        "familyStatusCode_display": StringAttribute, //		
        "ftpSiteUrl": StringAttribute, //	Type the URL for the contact's FTP site to enable users to access data and share documents.	
        "EMailAddress1": StringAttribute, //	Type the primary email address for the contact.	
        "spousesName": StringAttribute, //	Type the name of the contact's spouse or partner for reference during calls, events, or other communications with the contact.	
        "assistantName": StringAttribute, //	Type the name of the contact's assistant.	
        "EMailAddress2": StringAttribute, //	Type the secondary email address for the contact.	
        "assistantPhone": StringAttribute, //	Type the phone number for the contact's assistant.	
        "EMailAddress3": StringAttribute, //	Type an alternate email address for the contact.	
        "doNotPhone": StringAttribute, //	Select whether the contact accepts phone calls. If Do Not Allow is selected, the contact will be excluded from any phone call activities distributed in marketing campaigns.	
        "managerName": StringAttribute, //	Type the name of the contact's manager for use in escalating issues or other follow-up communications with the contact.	
        "managerPhone": StringAttribute, //	Type the phone number for the contact's manager.	
        "doNotFax": StringAttribute, //	Select whether the contact allows faxes. If Do Not Allow is selected, the contact will be excluded from any fax activities distributed in marketing campaigns.	
        "doNotEMail": StringAttribute, //	Select whether the contact allows direct email sent from Microsoft Dynamics 365. If Do Not Allow is selected, Microsoft Dynamics 365 will not send the email.	
        "doNotPostalMail": StringAttribute, //	Select whether the contact allows direct mail. If Do Not Allow is selected, the contact will be excluded from letter activities distributed in marketing campaigns.	
        "doNotBulkEMail": StringAttribute, //	Select whether the contact accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the email.	
        "doNotBulkPostalMail": StringAttribute, //	Select whether the contact accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the letters.	
        "accountRoleCode": StringAttribute, //	Select the contact's role within the company or sales process, such as decision maker, employee, or influencer.	
        "accountRoleCode_display": StringAttribute, //		
        "territoryCode": StringAttribute, //	Select a region or territory for the contact for use in segmentation and analysis.	
        "territoryCode_display": StringAttribute, //		
        "creditLimit": StringAttribute, //	Type the credit limit of the contact for reference when you address invoice and accounting issues with the customer.	
        "creditOnHold": StringAttribute, //	Select whether the contact is on a credit hold, for reference when addressing invoice and accounting issues.	
        "numberOfChildren": StringAttribute, //	Type the number of children the contact has for reference in follow-up phone calls and other communications.	
        "childrensNames": StringAttribute, //	Type the names of the contact's children for reference in communications and client programs.	
        "mobilePhone": StringAttribute, //	Type the mobile phone number for the contact.	
        "pager": StringAttribute, //	Type the pager number for the contact.	
        "telephone1": StringAttribute, //	Type the main phone number for this contact.	
        "telephone2": StringAttribute, //	Type a second phone number for this contact.	
        "telephone3": StringAttribute, //	Type a third phone number for this contact.	
        "fax": StringAttribute, //	Type the fax number for the contact.	
        "aging30": StringAttribute, //	For system use only.	
        "aging60": StringAttribute, //	For system use only.	
        "aging90": StringAttribute, //	For system use only.	
        "parentContactId": UUIDAttribute, //	Unique identifier of the parent contact.	
        "address1AddressId": UUIDAttribute, //	Unique identifier for address n.	
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
        "address2AddressId": UUIDAttribute, //	Unique identifier for address n.	
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
        "address3AddressId": UUIDAttribute, //	Unique identifier for address n.	
        "address3AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	
        "address3AddressTypeCode_display": StringAttribute, //		
        "address3Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
        "address3PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	
        "address3Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	
        "address3Line2": StringAttribute, //	Type the second line of the customer's address.	
        "address3Line3": StringAttribute, //	Type the third line of the customer's address.	
        "address3City": StringAttribute, //	Type the city for the customer's address to help identify the location.	
        "address3StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	
        "address3County": StringAttribute, //	Type the county for the customer's address.	
        "address3Country": StringAttribute, //	Type the country or region for the customer's address.	
        "address3PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	
        "address3PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	
        "address3UTCOffset": StringAttribute, //	Select the time zone for the address.	
        "address3FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	
        "address3FreightTermsCode_display": StringAttribute, //		
        "address3UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
        "address3Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	
        "address3Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	
        "address3Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	
        "address3ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	
        "address3ShippingMethodCode_display": StringAttribute, //		
        "address3Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	
        "address3Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	
        "address3Fax": StringAttribute, //	Type the fax number associated with the customer's address.	
        "address3Composite": StringAttribute, //	Shows the complete address.	
        "preferredSystemUserId": UUIDAttribute, //	Choose the regular or preferred customer service representative for reference when scheduling service activities for the contact.	
        "masterId": UUIDAttribute, //	Unique identifier of the master contact for merge.	
        "preferredAppointmentDayCode": StringAttribute, //	Select the preferred day of the week for service appointments.	
        "preferredAppointmentDayCode_display": StringAttribute, //		
        "preferredAppointmentTimeCode": StringAttribute, //	Select the preferred time of day for service appointments.	
        "preferredAppointmentTimeCode_display": StringAttribute, //		
        "doNotSendMM": StringAttribute, //	Select whether the contact accepts marketing materials, such as brochures or catalogs. Contacts that opt out can be excluded from marketing initiatives.	
        "parentCustomerId": UUIDAttribute, //	Select the parent account or parent contact for the contact to provide a quick link to additional details, such as financial information, activities, and opportunities.	
        "parentCustomerIdType": StringAttribute, //	The type of parent customer, either Account or Contact.	
        "merged": StringAttribute, //	Shows whether the account has been merged with a master contact.	
        "externalUserIdentifier": StringAttribute, //	Identifier for an external user.	
        "lastUsedInCampaign": StringAttribute, //	Shows the date when the contact was last included in a marketing campaign or quick campaign.	
        "transactionCurrencyId": UUIDAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "annualIncomeBase": StringAttribute, //	Shows the Annual Income field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "creditLimitBase": StringAttribute, //	Shows the Credit Limit field converted to the system's default base currency for reporting purposes. The calculations use the exchange rate specified in the Currencies area.	
        "aging60Base": StringAttribute, //	Shows the Aging 60 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "aging90Base": StringAttribute, //	Shows the Aging 90 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "aging30Base": StringAttribute, //	Shows the Aging 30 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
        "stageId": UUIDAttribute, //	Shows the ID of the stage.	
        "processId": UUIDAttribute, //	Shows the ID of the process.	
        "entityImageId": UUIDAttribute, //	For internal use only.	
        "traversedPath": StringAttribute, //	For internal use only.	
        "SLAId": UUIDAttribute, //	Choose the service level agreement (SLA) that you want to apply to the Contact record.	
        "SLAInvokedId": UUIDAttribute, //	Last SLA that was applied to this case. This field is for internal use only.	
        "onHoldTime": StringAttribute, //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime": StringAttribute, //	Contains the date and time stamp of the last on hold time.	
        "followEmail": StringAttribute, //	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the contact.	
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, //	Total time spent for emails (read and write) and meetings by me in relation to the contact record.	
        "business2": StringAttribute, //	Type a second business phone number for this contact.	
        "callback": StringAttribute, //	Type a callback phone number for this contact.	
        "company": StringAttribute, //	Type the company phone of the contact.	
        "home2": StringAttribute, //	Type a second home phone number for this contact.	
        "createdByExternalParty": StringAttribute, //	Shows the external party who created the record.	
        "modifiedByExternalParty": StringAttribute, //	Shows the external party who modified the record.	
        "marketingOnly": StringAttribute, //	Whether is only for marketing	
        "contactType": StringAttribute, //	Type of contact	
        "contactType_display": StringAttribute, //		
        "countryofBirth": StringAttribute, //	Country of birth for the contact.	
        "countryofBirth_display": StringAttribute, //		
        "currentAcademicPeriodId": UUIDAttribute, //	Current academic period enrolled, if any, for the contact.	
        "currentProgramId": UUIDAttribute, //	Current program for the contact.	
        "currentProgramLevelId": UUIDAttribute, //	Current program level associated to the program for the contact.	
        "ethnicGroup": StringAttribute, //	Ethnic group for the contact.	
        "ethnicGroup_display": StringAttribute, //		
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "FERPAPrivacy": StringAttribute, //	Indicates if the Contact has elected to withhold directory information pursuant to FERPA (USA Federal Education Rights and Privacy Act).	
        "firstGeneration": StringAttribute, //	Indicates if contact is a first generation student.	
        "HIPAAIndicator": StringAttribute, //	Indicates if the Contact record includes information such as disability services requests that are protected by HIPAA (USA Health Insurance Portability and Accountability Act standards).	
        "isDeceased": StringAttribute, //	If updated to YES, will deactivate Contact as deceased and change all marketing preferences to "Do Not Allow"	
        "lastPermanentResidenceCountry": StringAttribute, //	Last country of permanent residence for the contact.	
        "lastPermanentResidenceCountry_display": StringAttribute, //		
        "legacy": StringAttribute, //	Identifies a Contact that is part of a legacy of contacts	
        "maidenName": StringAttribute, //	Maiden Name	
        "manualRiskScore": StringAttribute, //	Manual Risk Score	
        "miltaryStatus": StringAttribute, //	Indicates the military service record for the contact.	
        "miltaryStatus_display": StringAttribute, //		
        "nationalIdentifier": StringAttribute, //	Unique Identifier or Student SSN	
        "nationality": StringAttribute, //	Country of nationality for the contact.	
        "nationality_display": StringAttribute, //		
        "race": StringAttribute, //	Race of the contact	
        "race_display": StringAttribute, //		
        "studentStatusId": UUIDAttribute, //		
      ])
      .registerPath("education_contacts");
  }
}
mixin(EntityCalls!("ContactEntity"));


version(test_model_education) { unittest {
    assert(ContactEntity);

    auto entity = ContactEntity;
  }
}