module models.common.objclasses.applications.organization;

import models.common;

static this() {
  // Top level of the Microsoft Dynamics 365 business hierarchy. The organization can be a specific business, holding company, or corporation.
  gsCommon.objclasses("common/application/organization", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "fiscalYearFormat":"common/application/organization/fiscalYearFormat", //	Information that specifies how the name of the fiscal year is displayed throughout Microsoft CRM.	
        "title":"common/application/organization/name", //	Name of the organization. The name is set when Microsoft CRM is installed and should not be changed.	
        "userGroupId":"common/application/organization/userGroupId", //	Unique identifier of the default group of users in the organization.	
        "privilegeUserGroupId":"common/application/organization/privilegeUserGroupId", //	Unique identifier of the default privilege for users in the organization.	
        "recurrenceExpansionJobBatchSize":"common/application/organization/recurrenceExpansionJobBatchSize", //	Specifies the value for number of instances created in on demand job in one shot.	
        "recurrenceExpansionJobBatchInterval":"common/application/organization/recurrenceExpansionJobBatchInterval", //	Specifies the interval (in seconds) for pausing expansion job.	
        "fiscalPeriodType":"common/application/organization/fiscalPeriodType", //	Type of fiscal period used throughout Microsoft CRM.	
        "fiscalCalendarStart":"common/application/organization/fiscalCalendarStart", //	Start date for the fiscal period that is to be used throughout Microsoft CRM.	
        "dateFormatCode":"common/application/organization/dateFormatCode", //	Information about how the date is displayed throughout Microsoft CRM.	
        "dateFormatCode_display":"common/application/organization/dateFormatCode_display", //		
        "timeFormatCode":"common/application/organization/timeFormatCode", //	Information that specifies how the time is displayed throughout Microsoft CRM.	
        "timeFormatCode_display":"common/application/organization/timeFormatCode_display", //		
        "currencySymbol":"common/application/organization/currencySymbol", //	Symbol used for currency throughout Microsoft Dynamics 365.	
        "weekStartDayCode":"common/application/organization/weekStartDayCode", //	Designated first day of the week throughout Microsoft Dynamics 365.	
        "weekStartDayCode_display":"common/application/organization/weekStartDayCode_display", //		
        "dateSeparator":"common/application/organization/dateSeparator", //	Character used to separate the month, the day, and the year in dates throughout Microsoft Dynamics 365.	
        "fullNameConventionCode":"common/application/organization/fullNameConventionCode", //	Order in which names are to be displayed throughout Microsoft CRM.	
        "fullNameConventionCode_display":"common/application/organization/fullNameConventionCode_display", //		
        "negativeFormatCode":"common/application/organization/negativeFormatCode", //	Information that specifies how negative numbers are displayed throughout Microsoft CRM.	
        "negativeFormatCode_display":"common/application/organization/negativeFormatCode_display", //		
        "numberFormat":"common/application/organization/numberFormat", //	Specification of how numbers are displayed throughout Microsoft CRM.	
        "isDisabled":"common/application/organization/isDisabled", //	Information that specifies whether the organization is disabled.	
        "disabledReason":"common/application/organization/disabledReason", //	Reason for disabling the organization.	
        "kbPrefix":"common/application/organization/kbPrefix", //	Prefix to use for all articles in Microsoft Dynamics 365.	
        "currentKbNumber":"common/application/organization/currentKbNumber", //	First article number to use. Deprecated. Use SetAutoNumberSeed message.	
        "casePrefix":"common/application/organization/casePrefix", //	Prefix to use for all cases throughout Microsoft Dynamics 365.	
        "currentCaseNumber":"common/application/organization/currentCaseNumber", // 	First case number to use. Deprecated. Use SetAutoNumberSeed message.	
        "contractPrefix":"common/application/organization/contractPrefix", //	Prefix to use for all contracts throughout Microsoft Dynamics 365.	
        "currentContractNumber":"common/application/organization/currentContractNumber", //	First contract number to use. Deprecated. Use SetAutoNumberSeed message.	
        "quotePrefix":"common/application/organization/quotePrefix", //	Prefix to use for all quotes throughout Microsoft Dynamics 365.	
        "currentQuoteNumber":"common/application/organization/currentQuoteNumber", //	First quote number to use. Deprecated. Use SetAutoNumberSeed message.	
        "orderPrefix":"common/application/organization/orderPrefix", //	Prefix to use for all orders throughout Microsoft Dynamics 365.	
        "currentOrderNumber":"common/application/organization/currentOrderNumber", //	First order number to use. Deprecated. Use SetAutoNumberSeed message.	
        "invoicePrefix":"common/application/organization/invoicePrefix", //	Prefix to use for all invoice numbers throughout Microsoft Dynamics 365.	
        "currentInvoiceNumber":"common/application/organization/currentInvoiceNumber", //	First invoice number to use. Deprecated. Use SetAutoNumberSeed message.	
        "uniqueSpecifierLength":"common/application/organization/uniqueSpecifierLength", //	Number of characters appended to invoice, quote, and order numbers.	
        "fiscalPeriodFormat":"common/application/organization/fiscalPeriodFormat", //	Information that specifies how the name of the fiscal period is displayed throughout Microsoft CRM.	
        "fiscalYearPeriodConnect":"common/application/organization/fiscalYearPeriodConnect", //	Information that specifies how the names of the fiscal year and the fiscal period should be connected when displayed together.	
        "languageCode":"common/application/organization/languageCode", //	Preferred language for the organization.	
        "sortId":"common/application/organization/sortId", //	For internal use only.	
        "dateFormatString":"common/application/organization/dateFormatString", //	String showing how the date is displayed throughout Microsoft CRM.	
        "timeFormatString":"common/application/organization/timeFormatString", //	Text for how time is displayed in Microsoft Dynamics 365.	
        "pricingDecimalPrecision":"common/application/organization/pricingDecimalPrecision", //	Number of decimal places that can be used for prices.	
        "showWeekNumber":"common/application/organization/showWeekNumber", //	Information that specifies whether to display the week number in calendar displays throughout Microsoft CRM.	
        "nextTrackingNumber":"common/application/organization/nextTrackingNumber", //	Next token to be placed on the subject line of an email message.	
        "tagMaxAggressiveCycles":"common/application/organization/tagMaxAggressiveCycles", //	Maximum number of aggressive polling cycles executed for email auto-tagging when a new email is received.	
        "systemUserId":"common/application/organization/systemUserId", //	Unique identifier of the system user for the organization.	
        "grantAccessToNetworkService":"common/application/organization/grantAccessToNetworkService", //	For internal use only.	
        "allowOutlookScheduledSyncs":"common/application/organization/allowOutlookScheduledSyncs", //	Indicates whether scheduled synchronizations to Outlook are allowed.	
        "allowMarketingEmailExecution":"common/application/organization/allowMarketingEmailExecution", //	Indicates whether marketing emails execution is allowed.	
        "sqlAccessGroupId":"common/application/organization/sqlAccessGroupId", //	For internal use only.	
        "currencyFormatCode":"common/application/organization/currencyFormatCode", //	Information about how currency symbols are placed throughout Microsoft Dynamics CRM.	
        "currencyFormatCode_display":"common/application/organization/currencyFormatCode_display", //		
        "fiscalSettingsUpdated":"common/application/organization/fiscalSettingsUpdated", //	Information that specifies whether the fiscal settings have been updated.	
        "reportingGroupId":"common/application/organization/reportingGroupId", //	For internal use only.	
        "tokenExpiry":"common/application/organization/tokenExpiry", //	Duration used for token expiration.	
        "shareToPreviousOwnerOnAssign":"common/application/organization/shareToPreviousOwnerOnAssign", //	Information that specifies whether to share to previous owner on assign.	
        "acknowledgementTemplateId":"common/application/organization/acknowledgementTemplateId", //	Unique identifier of the template to be used for acknowledgement when a user unsubscribes.	
        "integrationUserId":"common/application/organization/integrationUserId", //	Unique identifier of the integration user for the organization.	
        "trackingTokenIdBase":"common/application/organization/trackingTokenIdBase", //	Base number used to provide separate tracking token identifiers to users belonging to different deployments.	
        "businessClosureCalendarId":"common/application/organization/businessClosureCalendarId", //	Unique identifier of the business closure calendar of organization.	
        "allowAutoUnsubscribeAcknowledgement":"common/application/organization/allowAutoUnsubscribeAcknowledgement", //	Indicates whether automatic unsubscribe acknowledgement email is allowed to send.	
        "allowAutoUnsubscribe":"common/application/organization/allowAutoUnsubscribe", //	Indicates whether automatic unsubscribe is allowed.	
        "picture":"common/application/organization/picture", //	For internal use only.	
        "trackingPrefix":"common/application/organization/trackingPrefix", //	History list of tracking token prefixes.	
        "minOutlookSyncInterval":"common/application/organization/minOutlookSyncInterval", //	Minimum allowed time between scheduled Outlook synchronizations.	
        "bulkOperationPrefix":"common/application/organization/bulkOperationPrefix", //	Prefix used for bulk operation numbering.	
        "allowAutoResponseCreation":"common/application/organization/allowAutoResponseCreation", //	Indicates whether automatic response creation is allowed.	
        "maximumTrackingNumber":"common/application/organization/maximumTrackingNumber", //	Maximum tracking number before recycling takes place.	
        "campaignPrefix":"common/application/organization/campaignPrefix", //	Prefix used for campaign numbering.	
        "sqlAccessGroupName":"common/application/organization/sqlAccessGroupName", //	For internal use only.	
        "currentCampaignNumber":"common/application/organization/currentCampaignNumber", //	Current campaign number. Deprecated. Use SetAutoNumberSeed message.	
        "fiscalYearDisplayCode":"common/application/organization/fiscalYearDisplayCode", //	Information that specifies whether the fiscal year should be displayed based on the start date or the end date of the fiscal year.	
        "siteMapXml":"common/application/organization/siteMapXml", //	XML string that defines the navigation structure for the application.	
        "isRegistered":"common/application/organization/isRegistered", //	For internal use only.	
        "reportingGroupName":"common/application/organization/reportingGroupName", //	For internal use only.	
        "currentBulkOperationNumber":"common/application/organization/currentBulkOperationNumber", //	Current bulk operation number. Deprecated. Use SetAutoNumberSeed message.	
        "schemaNamePrefix":"common/application/organization/schemaNamePrefix", //	Prefix used for custom entities and attributes.	
        "ignoreInternalEmail":"common/application/organization/ignoreInternalEmail", //	Indicates whether incoming email sent by internal Microsoft Dynamics 365 users or queues should be tracked.	
        "tagPollingPeriod":"common/application/organization/tagPollingPeriod", //	Normal polling frequency used for email receive auto-tagging in outlook.	
        "trackingTokenIdDigits":"common/application/organization/trackingTokenIdDigits", //	Number of digits used to represent a tracking token identifier.	
        "numberGroupFormat":"common/application/organization/numberGroupFormat", //	Specifies how numbers are grouped in Microsoft Dynamics 365.	
        "longDateFormatCode":"common/application/organization/longDateFormatCode", //	Information that specifies how the Long Date format is displayed in Microsoft Dynamics 365.	
        "UTCConversionTimeZoneCode":"common/application/organization/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "timeZoneRuleVersionNumber":"common/application/organization/timeZoneRuleVersionNumber", //	For internal use only.	
        "currentImportSequenceNumber":"common/application/organization/currentImportSequenceNumber", //	Import sequence to use.	
        "parsedTablePrefix":"common/application/organization/parsedTablePrefix", //	Prefix used for parsed tables.	
        "v3CalloutConfigHash":"common/application/organization/v3CalloutConfigHash", //	Hash of the V3 callout configuration file.	
        "isFiscalPeriodMonthBased":"common/application/organization/isFiscalPeriodMonthBased", //	Indicates whether the fiscal period is displayed as the month number.	
        "localeId":"common/application/organization/localeId", //	Unique identifier of the locale of the organization.	
        "parsedTableColumnPrefix":"common/application/organization/parsedTableColumnPrefix", //	Prefix used for parsed table columns.	
        "supportUserId":"common/application/organization/supportUserId", //	Unique identifier of the support user for the organization.	
        "AMDesignator":"common/application/organization/AMDesignator", //	AM designator to use throughout Microsoft Dynamics CRM.	
        "currencyDisplayOption":"common/application/organization/currencyDisplayOption", //	Indicates whether to display money fields with currency code or currency symbol.	
        "currencyDisplayOption_display":"common/application/organization/currencyDisplayOption_display", //		
        "minAddressBookSyncInterval":"common/application/organization/minAddressBookSyncInterval", //	Normal polling frequency used for address book synchronization in Microsoft Office Outlook.	
        "isDuplicateDetectionEnabledForOnlineCreateUpdate":"common/application/organization/isDuplicateDetectionEnabledForOnlineCreateUpdate", //	Indicates whether duplicate detection during online create or update is enabled.	
        "featureSet":"common/application/organization/featureSet", //	Features to be enabled as an XML BLOB.	
        "blockedAttachments":"common/application/organization/blockedAttachments", //	Prevent upload or download of certain attachment types that are considered dangerous.	
        "isDuplicateDetectionEnabledForOfflineSync":"common/application/organization/isDuplicateDetectionEnabledForOfflineSync", //	Indicates whether duplicate detection of records during offline synchronization is enabled.	
        "allowOfflineScheduledSyncs":"common/application/organization/allowOfflineScheduledSyncs", //	Indicates whether background offline synchronization in Microsoft Office Outlook is allowed.	
        "allowUnresolvedPartiesOnEmailSend":"common/application/organization/allowUnresolvedPartiesOnEmailSend", //	Indicates whether users are allowed to send email to unresolved parties (parties must still have an email address).	
        "timeSeparator":"common/application/organization/timeSeparator", //	Text for how the time separator is displayed throughout Microsoft Dynamics 365.	
        "currentParsedTableNumber":"common/application/organization/currentParsedTableNumber", //	First parsed table number to use.	
        "minOfflineSyncInterval":"common/application/organization/minOfflineSyncInterval", //	Normal polling frequency used for background offline synchronization in Microsoft Office Outlook.	
        "allowWebExcelExport":"common/application/organization/allowWebExcelExport", //	Indicates whether Web-based export of grids to Microsoft Office Excel is allowed.	
        "referenceSiteMapXml":"common/application/organization/referenceSiteMapXml", //	XML string that defines the navigation structure for the application. This is the site map from the previously upgraded build and is used in a 3-way merge during upgrade.	
        "isDuplicateDetectionEnabledForImport":"common/application/organization/isDuplicateDetectionEnabledForImport", //	Indicates whether duplicate detection of records during import is enabled.	
        "calendarType":"common/application/organization/calendarType", //	Calendar type for the system. Set to Gregorian US by default.	
        "SQMEnabled":"common/application/organization/SQMEnabled", //	Setting for SQM data collection, 0 no, 1 yes enabled	
        "negativeCurrencyFormatCode":"common/application/organization/negativeCurrencyFormatCode", //	Information that specifies how negative currency numbers are displayed throughout Microsoft Dynamics 365.	
        "allowAddressBookSyncs":"common/application/organization/allowAddressBookSyncs", //	Indicates whether background address book synchronization in Microsoft Office Outlook is allowed.	
        "ISVIntegrationCode":"common/application/organization/ISVIntegrationCode", //	Indicates whether loading of Microsoft Dynamics 365 in a browser window that does not have address, tool, and menu bars is enabled.	
        "ISVIntegrationCode_display":"common/application/organization/ISVIntegrationCode_display", //		
        "decimalSymbol":"common/application/organization/decimalSymbol", //	Symbol used for decimal in Microsoft Dynamics 365.	
        "maxUploadFileSize":"common/application/organization/maxUploadFileSize", //	Maximum allowed size of an attachment.	
        "isAppMode":"dataformat/boolean/nullable/false", //	Indicates whether loading of Microsoft Dynamics 365 in a browser window that does not have address, tool, and menu bars is enabled.	
        "enablePricingOnCreate":"common/application/organization/enablePricingOnCreate", //	Enable pricing calculations on a Create call.	
        "isSOPIntegrationEnabled":"common/application/organization/isSOPIntegrationEnabled", //	Enable sales order processing integration.	
        "PMDesignator":"common/application/organization/PMDesignator", //	PM designator to use throughout Microsoft Dynamics 365.	
        "currencyDecimalPrecision":"common/application/organization/currencyDecimalPrecision", //	Number of decimal places that can be used for currency.	
        "maxAppointmentDurationDays":"common/application/organization/maxAppointmentDurationDays", //	Maximum number of days an appointment can last.	
        "emailSendPollingPeriod":"common/application/organization/emailSendPollingPeriod", //	Normal polling frequency used for sending email in Microsoft Office Outlook.	
        "renderSecureIFrameForEmail":"common/application/organization/renderSecureIFrameForEmail", //	Flag to render the body of email in the Web form in an IFRAME with the security='restricted' attribute set. This is additional security but can cause a credentials prompt.	
        "numberSeparator":"common/application/organization/numberSeparator", //	Symbol used for number separation in Microsoft Dynamics 365.	
        "privReportingGroupId":"common/application/organization/privReportingGroupId", //	For internal use only.	
        "baseCurrencyId":"common/application/organization/baseCurrencyId", //	Unique identifier of the base currency of the organization.	
        "maxRecordsForExportToExcel":"common/application/organization/maxRecordsForExportToExcel", //	Maximum number of records that will be exported to a static Microsoft Office Excel worksheet when exporting from the grid.	
        "privReportingGroupName":"common/application/organization/privReportingGroupName", //	For internal use only.	
        "yearStartWeekCode":"common/application/organization/yearStartWeekCode", //	Information that specifies how the first week of the year is specified in Microsoft Dynamics 365.	
        "isPresenceEnabled":"common/application/organization/isPresenceEnabled", //	Information on whether IM presence is enabled.	
        "isDuplicateDetectionEnabled":"common/application/organization/isDuplicateDetectionEnabled", //	Indicates whether duplicate detection of records is enabled.	
        "expireSubscriptionsInDays":"common/application/organization/expireSubscriptionsInDays", //	Maximum number of days before deleting inactive subscriptions.	
        "isAuditEnabled":"common/application/organization/isAuditEnabled", //	Enable or disable auditing of changes.	
        "baseCurrencyPrecision":"common/application/organization/baseCurrencyPrecision", //	Number of decimal places that can be used for the base currency.	
        "baseCurrencySymbol":"common/application/organization/baseCurrencySymbol", //	Symbol used for the base currency.	
        "maxRecordsForLookupFilters":"common/application/organization/maxRecordsForLookupFilters", //	Maximum number of lookup and picklist records that can be selected by user for filtering.	
        "allowEntityOnlyAudit":"common/application/organization/allowEntityOnlyAudit", //	Indicates whether auditing of changes to entity is allowed when no attributes have changed.	
        "defaultRecurrenceEndRangeType":"common/application/organization/defaultRecurrenceEndRangeType", //	Type of default recurrence end range date.	
        "defaultRecurrenceEndRangeType_display":"common/application/organization/defaultRecurrenceEndRangeType_display", //		
        "futureExpansionWindow":"common/application/organization/futureExpansionWindow", //	Specifies the maximum number of months in future for which the recurring activities can be created.	
        "pastExpansionWindow":"common/application/organization/pastExpansionWindow", //	Specifies the maximum number of months in past for which the recurring activities can be created.	
        "recurrenceExpansionSynchCreateMax":"common/application/organization/recurrenceExpansionSynchCreateMax", //	Specifies the maximum number of instances to be created synchronously after creating a recurring appointment.	
        "recurrenceDefaultNumberOfOccurrences":"common/application/organization/recurrenceDefaultNumberOfOccurrences", //	Specifies the default value for number of occurrences field in the recurrence dialog.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the organization.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the organization.	
        "getStartedPaneContentEnabled":"common/application/organization/getStartedPaneContentEnabled", //	Indicates whether Get Started content is enabled for this organization.	
        "useReadForm":"common/application/organization/useReadForm", //	Indicates whether the read-optimized form should be enabled for this organization.	
        "initialVersion":"common/application/organization/initialVersion", //	Initial version of the organization.	
        "sampleDataImportId":"common/application/organization/sampleDataImportId", //	Unique identifier of the sample data import job.	
        "reportScriptErrors":"common/application/organization/reportScriptErrors", //	Picklist for selecting the organization preference for reporting scripting errors.	
        "reportScriptErrors_display":"common/application/organization/reportScriptErrors_display", //		
        "requireApprovalForUserEmail":"common/application/organization/requireApprovalForUserEmail", //	Indicates whether Send As Other User privilege is enabled.	
        "requireApprovalForQueueEmail":"common/application/organization/requireApprovalForQueueEmail", //	Indicates whether Send As Other User privilege is enabled.	
        "goalRollupExpiryTime":"common/application/organization/goalRollupExpiryTime", //	Number of days after the goal's end date after which the rollup of the goal stops automatically.	
        "goalRollupFrequency":"common/application/organization/goalRollupFrequency", //	Number of hours between automatic rollup jobs .	
        "autoApplyDefaultonCaseCreate":"common/application/organization/autoApplyDefaultonCaseCreate", //	Select whether to auto apply the default customer entitlement on case creation.	
        "autoApplyDefaultonCaseUpdate":"common/application/organization/autoApplyDefaultonCaseUpdate", //	Select whether to auto apply the default customer entitlement on case update.	
        "fiscalYearFormatPrefix":"common/application/organization/fiscalYearFormatPrefix", //	Prefix for the display of the fiscal year.	
        "fiscalYearFormatPrefix_display":"common/application/organization/fiscalYearFormatPrefix_display", //		
        "fiscalYearFormatSuffix":"common/application/organization/fiscalYearFormatSuffix", //	Suffix for the display of the fiscal year.	
        "fiscalYearFormatSuffix_display":"common/application/organization/fiscalYearFormatSuffix_display", //		
        "fiscalYearFormatYear":"common/application/organization/fiscalYearFormatYear", //	Format for the year.	
        "fiscalYearFormatYear_display":"common/application/organization/fiscalYearFormatYear_display", //		
        "discountCalculationMethod":"common/application/organization/discountCalculationMethod", //	Discount calculation method for the QOOI product.	
        "discountCalculationMethod_display":"common/application/organization/discountCalculationMethod_display", //		
        "fiscalPeriodFormatPeriod":"common/application/organization/fiscalPeriodFormatPeriod", //	Format in which the fiscal period will be displayed.	
        "fiscalPeriodFormatPeriod_display":"common/application/organization/fiscalPeriodFormatPeriod_display", //		
        "allowClientMessageBarAd":"common/application/organization/allowClientMessageBarAd", //	Indicates whether Outlook Client message bar advertisement is allowed.	
        "allowUserFormModePreference":"common/application/organization/allowUserFormModePreference", //	Indicates whether individuals can select their form mode preference in their personal options.	
        "hashFilterKeywords":"common/application/organization/hashFilterKeywords", //	Filter Subject Keywords	
        "hashMaxCount":"common/application/organization/hashMaxCount", //	Maximum number of subject keywords or recipients used for correlation	
        "hashDeltaSubjectCount":"common/application/organization/hashDeltaSubjectCount", //	Maximum difference allowed between subject keywords count of the email messaged to be correlated	
        "hashMinAddressCount":"common/application/organization/hashMinAddressCount", //	Minimum number of recipients required to match for email messaged to be correlated	
        "enableSmartMatching":"common/application/organization/enableSmartMatching", //	Use Smart Matching.	
        "pinpointLanguageCode":"common/application/organization/pinpointLanguageCode", //		
        "orgDbOrgSettings":"common/application/organization/orgDbOrgSettings", //	Organization settings stored in Organization Database.	
        "isUserAccessAuditEnabled":"common/application/organization/isUserAccessAuditEnabled", //	Enable or disable auditing of user access.	
        "userAccessAuditingInterval":"common/application/organization/userAccessAuditingInterval", //	The interval at which user access is checked for auditing.	
        "quickFindRecordLimitEnabled":"common/application/organization/quickFindRecordLimitEnabled", //	Indicates whether a quick find record limit should be enabled for this organization (allows for faster Quick Find queries but prevents overly broad searches).	
        "enableBingMapsIntegration":"common/application/organization/enableBingMapsIntegration", //	Enable Integration with Bing Maps	
        "isDefaultCountryCodeCheckEnabled":"common/application/organization/isDefaultCountryCodeCheckEnabled", //	Enable or disable country code selection.	
        "defaultCountryCode":"common/application/organization/defaultCountryCode", //	Text area to enter default country code.	
        "useSkypeProtocol":"common/application/organization/useSkypeProtocol", //	Indicates default protocol selected for organization.	
        "incomingEmailExchangeEmailRetrievalBatchSize":"common/application/organization/incomingEmailExchangeEmailRetrievalBatchSize", //	Setting for the Async Service Mailbox Queue. Defines the retrieval batch size of exchange server.	
        "emailCorrelationEnabled":"common/application/organization/emailCorrelationEnabled", //	Flag to turn email correlation on or off.	
        "yammerOAuthAccessTokenExpired":"common/application/organization/yammerOAuthAccessTokenExpired", //	Denotes whether the OAuth access token for Yammer network has expired	
        "defaultEmailSettings":"common/application/organization/defaultEmailSettings", //	XML string containing the default email settings that are applied when a user or queue is created.	
        "yammerGroupId":"common/application/organization/yammerGroupId", //	Denotes the Yammer group ID	
        "yammerNetworkPermalink":"common/application/organization/yammerNetworkPermalink", //	Denotes the Yammer network permalink	
        "yammerPostMethod":"common/application/organization/yammerPostMethod", //	Internal Use Only	
        "yammerPostMethod_display":"common/application/organization/yammerPostMethod_display", //		
        "emailConnectionChannel":"common/application/organization/emailConnectionChannel", //	Select if you want to use the Email Router or server-side synchronization for email processing.	
        "emailConnectionChannel_display":"common/application/organization/emailConnectionChannel_display", //		
        "defaultEmailServerProfileId":"common/application/organization/defaultEmailServerProfileId", //	Unique identifier of the default email server profile.	
        "isAutoSaveEnabled":"dataformat/boolean/nullable/false", //	Information on whether auto save is enabled.	
        "bingMapsApiKey":"common/application/organization/bingMapsApiKey", //	Api Key to be used in requests to Bing Maps services.	
        "generateAlertsForErrors":"common/application/organization/generateAlertsForErrors", //	Indicates whether alerts will be generated for errors.	
        "generateAlertsForInformation":"common/application/organization/generateAlertsForInformation", //	Indicates whether alerts will be generated for information.	
        "generateAlertsForWarnings":"common/application/organization/generateAlertsForWarnings", //	Indicates whether alerts will be generated for warnings.	
        "notifyMailboxOwnerOfEmailServerLevelAlerts":"common/application/organization/notifyMailboxOwnerOfEmailServerLevelAlerts", //	Indicates whether mailbox owners will be notified of email server profile level alerts.	
        "maximumActiveBusinessProcessFlowsAllowedPerEntity":"common/application/organization/maximumActiveBusinessProcessFlowsAllowedPerEntity", //	Maximum number of active business process flows allowed per entity	
        "entityImageId":"common/application/organization/entityImageId", //	For internal use only.	
        "allowUsersSeeAppdownloadMessage":"common/application/organization/allowUsersSeeAppdownloadMessage", //	Indicates whether the showing tablet application notification bars in a browser is allowed.	
        "signupOutlookDownloadFWLink":"common/application/organization/signupOutlookDownloadFWLink", //	CRM for Outlook Download URL	
        "cascadeStatusUpdate":"common/application/organization/cascadeStatusUpdate", //	Flag to cascade Update on incident.	
        "restrictStatusUpdate":"common/application/organization/restrictStatusUpdate", //	Flag to restrict Update on incident.	
        "suppressSLA":"common/application/organization/suppressSLA", //	Indicates whether SLA is suppressed.	
        "socialInsightsTermsAccepted":"common/application/organization/socialInsightsTermsAccepted", //	Flag for whether the organization has accepted the Social Insights terms of use.	
        "socialInsightsInstance":"common/application/organization/socialInsightsInstance", //	Identifier for the Social Insights instance for the organization.	
        "disableSocialCare":"common/application/organization/disableSocialCare", //	Indicates whether Social Care is disabled.	
        "maxProductsInBundle":"common/application/organization/maxProductsInBundle", //	Restrict the maximum no of items in a bundle	
        "useInbuiltRuleForDefaultPricelistSelection":"common/application/organization/useInbuiltRuleForDefaultPricelistSelection", //	Flag indicates whether to Use Inbuilt Rule For DefaultPricelist.	
        "OOBPriceCalculationEnabled":"common/application/organization/OOBPriceCalculationEnabled", //	Enable OOB pricing calculation logic for Opportunity, Quote, Order and Invoice entities.	
        "isHierarchicalSecurityModelEnabled":"common/application/organization/isHierarchicalSecurityModelEnabled", //	Enable Hierarchical Security Model	
        "maximumDynamicPropertiesAllowed":"common/application/organization/maximumDynamicPropertiesAllowed", //	Restrict the maximum number of product properties for a product family/bundle	
        "usePositionHierarchy":"common/application/organization/usePositionHierarchy", //	Use position hierarchy	
        "maxDepthForHierarchicalSecurityModel":"common/application/organization/maxDepthForHierarchicalSecurityModel", //	Maximum depth for hierarchy security propagation.	
        "slaPauseStates":"common/application/organization/slaPauseStates", //	Contains the on hold case status values.	
        "socialInsightsEnabled":"common/application/organization/socialInsightsEnabled", //	Flag for whether the organization is using Social Insights.	
        "isAppointmentAttachmentSyncEnabled":"dataformat/boolean/nullable/false", //	Enable or disable attachments sync for outlook and exchange.	
        "isAssignedTasksSyncEnabled":"common/application/organization/isAssignedTasksSyncEnabled", //	Enable or disable assigned tasks sync for outlook and exchange.	
        "isContactMailingAddressSyncEnabled":"common/application/organization/isContactMailingAddressSyncEnabled", //	Enable or disable mailing address sync for outlook and exchange.	
        "maxSupportedInternetExplorerVersion":"common/application/organization/maxSupportedInternetExplorerVersion", //	The maximum version of IE to run browser emulation for in Outlook client	
        "globalHelpUrl":"common/application/organization/globalHelpUrl", //	URL for the web page global help.	
        "globalHelpUrlEnabled":"common/application/organization/globalHelpUrlEnabled", //	Indicates whether the customizable global help is enabled.	
        "globalAppendUrlParametersEnabled":"common/application/organization/globalAppendUrlParametersEnabled", //	Indicates whether the append URL parameters is enabled.	
        "KMSettings":"common/application/organization/KMSettings", //	XML string containing the Knowledge Management settings that are applied in Knowledge Management Wizard.	
        "createProductsWithoutParentInActiveState":"common/application/organization/createProductsWithoutParentInActiveState", //	Enable Initial state of newly created products to be Active instead of Draft	
        "isMailboxInactiveBackoffEnabled":"common/application/organization/isMailboxInactiveBackoffEnabled", //	Enable or disable mailbox keep alive for Server Side Sync.	
        "isFullTextSearchEnabled":"common/application/organization/isFullTextSearchEnabled", //	Indicates whether full-text search for Quick Find entities should be enabled for the organization.	
        "enforceReadOnlyPlugins":"common/application/organization/enforceReadOnlyPlugins", //	Organization setting to enforce read only plugins.	
        "sharePointDeploymentType":"common/application/organization/sharePointDeploymentType", //	Indicates which SharePoint deployment type is configured for Server to Server. (Online or On-Premises)	
        "sharePointDeploymentType_display":"common/application/organization/sharePointDeploymentType_display", //		
        "organizationState":"common/application/organization/organizationState", //	Indicates the organization lifecycle state	
        "organizationState_display":"common/application/organization/organizationState_display", //		
        "defaultThemeData":"common/application/organization/defaultThemeData", //	Default theme data for the organization.	
        "isFolderBasedTrackingEnabled":"common/application/organization/isFolderBasedTrackingEnabled", //	Enable or disable folder based tracking for Server Side Sync.	
        "webResourceHash":"common/application/organization/webResourceHash", //	Hash value of web resources.	
        "expireChangeTrackingInDays":"common/application/organization/expireChangeTrackingInDays", //	Maximum number of days to keep change tracking deleted records	
        "maxFolderBasedTrackingMappings":"common/application/organization/maxFolderBasedTrackingMappings", //	Maximum number of Folder Based Tracking mappings user can add	
        "privacyStatementUrl":"common/application/organization/privacyStatementUrl", //	Privacy Statement URL	
        "pluginTraceLogSetting":"common/application/organization/pluginTraceLogSetting", //	Plug-in Trace Log Setting for the Organization.	
        "pluginTraceLogSetting_display":"common/application/organization/pluginTraceLogSetting_display", //		
        "isMailboxForcedUnlockingEnabled":"common/application/organization/isMailboxForcedUnlockingEnabled", //	Enable or disable forced unlocking for Server Side Sync mailboxes.	
        "mailboxIntermittentIssueMinRange":"common/application/organization/mailboxIntermittentIssueMinRange", //	Lower Threshold For Mailbox Intermittent Issue.	
        "mailboxPermanentIssueMinRange":"common/application/organization/mailboxPermanentIssueMinRange", //	Lower Threshold For Mailbox Permanent Issue.	
        "highContrastThemeData":"common/application/organization/highContrastThemeData", //	High contrast theme data for the organization.	
        "delegatedAdminUserId":"common/application/organization/delegatedAdminUserId", //	Unique identifier of the delegated admin user for the organization.	
        "isExternalSearchIndexEnabled":"common/application/organization/isExternalSearchIndexEnabled", //	Select whether data can be synchronized with an external search index.	
        "isMobileOfflineEnabled":"common/application/organization/isMobileOfflineEnabled", //	Indicates whether the feature MobileOffline should be enabled for the organization.	
        "isOfficeGraphEnabled":"common/application/organization/isOfficeGraphEnabled", //	Indicates whether the feature OfficeGraph should be enabled for the organization.	
        "isOneDriveEnabled":"common/application/organization/isOneDriveEnabled", //	Indicates whether the feature One Drive should be enabled for the organization.	
        "externalPartyEntitySettings":"common/application/organization/externalPartyEntitySettings", //	XML string containing the ExternalPartyEnabled entities settings.	
        "externalPartyCorrelationKeys":"common/application/organization/externalPartyCorrelationKeys", //	XML string containing the ExternalPartyEnabled entities correlation keys for association of existing External Party instance entities to newly created IsExternalPartyEnabled entities.For internal use only	
        "maxVerboseLoggingMailbox":"common/application/organization/maxVerboseLoggingMailbox", //	Maximum number of mailboxes that can be toggled for verbose logging	
        "maxVerboseLoggingSyncCycles":"common/application/organization/maxVerboseLoggingSyncCycles", //	Maximum number of sync cycles for which verbose logging will be enabled by default	
        "mobileOfflineSyncInterval":"common/application/organization/mobileOfflineSyncInterval", //	Sync interval for mobile offline.	
        "officeGraphDelveUrl":"common/application/organization/officeGraphDelveUrl", //	The url to open the Delve for the organization.	
        "mobileOfflineMinLicenseTrial":"common/application/organization/mobileOfflineMinLicenseTrial", //	Minimum number of user license required for mobile offline service by trial organization	
        "mobileOfflineMinLicenseProd":"common/application/organization/mobileOfflineMinLicenseProd", //	Minimum number of user license required for mobile offline service by production/preview organization	
        "daysSinceRecordLastModifiedMaxValue":"common/application/organization/daysSinceRecordLastModifiedMaxValue", //	The maximum value for the Mobile Offline setting Days since record last modified	
        "taskBasedFlowEnabled":"common/application/organization/taskBasedFlowEnabled", //	Select whether to turn on task flows for the organization.	
        "showKBArticleDeprecationNotification":"common/application/organization/showKBArticleDeprecationNotification", //	Select whether to display a KB article deprecation notification to the user.	
        "azureSchedulerJobCollectionName":"common/application/organization/azureSchedulerJobCollectionName", //	For internal use only.	
        "cortanaProactiveExperienceEnabled":"common/application/organization/cortanaProactiveExperienceEnabled", //	Indicates whether the feature CortanaProactiveExperience Flow processes should be enabled for the organization.	
        "officeAppsAutoDeploymentEnabled":"common/application/organization/officeAppsAutoDeploymentEnabled", //	Indicates whether the Office Apps auto deployment is enabled for the organization.	
        "appDesignerExperienceEnabled":"common/application/organization/appDesignerExperienceEnabled", //	Indicates whether the appDesignerExperience is enabled for the organization.	
        "enableImmersiveSkypeIntegration":"common/application/organization/enableImmersiveSkypeIntegration", //	Enable Integration with Immersive Skype	
        "autoApplySLA":"common/application/organization/autoApplySLA", //	Indicates whether to Auto-apply SLA on case record update after SLA was manually applied.	
        "isEmailServerProfileContentFilteringEnabled":"common/application/organization/isEmailServerProfileContentFilteringEnabled", //	Enable Email Server Profile content filtering	
        "isDelegateAccessEnabled":"common/application/organization/isDelegateAccessEnabled", //	Enable Delegation Access content	
        "displayNavigationTour":"common/application/organization/displayNavigationTour", //	Indicates whether or not navigation tour is displayed.	
        "useLegacyRendering":"common/application/organization/useLegacyRendering", //	Select whether to use legacy form rendering.	
        "defaultMobileOfflineProfileId":"common/application/organization/defaultMobileOfflineProfileId", //	Unique identifier of the default mobile offline profile.	
        "kaPrefix":"common/application/organization/kaPrefix", //	Type the prefix to use for all knowledge articles in Microsoft Dynamics 365.	
        "currentKaNumber":"common/application/organization/currentKaNumber", //	Enter the first number to use for knowledge articles. Deprecated. Use SetAutoNumberSeed message.	
        "currentCategoryNumber":"common/application/organization/currentCategoryNumber", //	Enter the first number to use for Categories. Deprecated. Use SetAutoNumberSeed message.	
        "categoryPrefix":"common/application/organization/categoryPrefix", //	Type the prefix to use for all categories in Microsoft Dynamics 365.	
        "maximumEntitiesWithActiveSLA":"common/application/organization/maximumEntitiesWithActiveSLA", //	Maximum number of active SLA allowed per entity in online	
        "maximumSLAKPIPerEntityWithActiveSLA":"common/application/organization/maximumSLAKPIPerEntityWithActiveSLA", //	Maximum number of SLA KPI per active SLA allowed for entity in online	
        "isConflictDetectionEnabledForMobileClient":"common/application/organization/isConflictDetectionEnabledForMobileClient", //	Information that specifies whether conflict detection for mobile client is enabled.	
        "isDelveActionHubIntegrationEnabled":"common/application/organization/isDelveActionHubIntegrationEnabled", //	Indicates whether the feature Action Hub should be enabled for the organization.	
        "orgInsightsEnabled":"common/application/organization/orgInsightsEnabled", //	Select whether to turn on OrgInsights for the organization.	
        "productRecommendationsEnabled":"common/application/organization/productRecommendationsEnabled", //	Select whether to turn on product recommendations for the organization.	
        "textAnalyticsEnabled":"common/application/organization/textAnalyticsEnabled", //	Select whether to turn on text analytics for the organization.	
        "maxConditionsForMobileOfflineFilters":"common/application/organization/maxConditionsForMobileOfflineFilters", //	Maximum number of conditions allowed for mobile offline filters	
        "isFolderAutoCreatedonSP":"common/application/organization/isFolderAutoCreatedonSP", //	Select whether folders should be automatically created on SharePoint.	
        "powerBiFeatureEnabled":"common/application/organization/powerBiFeatureEnabled", //	Indicates whether the Power BI feature should be enabled for the organization.	
        "isActionCardEnabled":"common/application/organization/isActionCardEnabled", //	Indicates whether the feature Action Card should be enabled for the organization.	
        "isEmailMonitoringAllowed":"common/application/organization/isEmailMonitoringAllowed", //	Allow tracking recipient activity on sent emails.	
        "isActivityAnalysisEnabled":"common/application/organization/isActivityAnalysisEnabled", //	Indicates whether the feature Relationship Analytics should be enabled for the organization.	
        "isAutoDataCaptureEnabled":"common/application/organization/isAutoDataCaptureEnabled", //	Indicates whether the feature Auto Capture should be enabled for the organization.	
        "externalBaseUrl":"common/application/organization/externalBaseUrl", //	Specify the base URL to use to look for external document suggestions.	
        "isPreviewEnabledForActionCard":"common/application/organization/isPreviewEnabledForActionCard", //	Indicates whether the Preview feature for Action Card should be enabled for the organization.	
        "isPreviewForEmailMonitoringAllowed":"common/application/organization/isPreviewForEmailMonitoringAllowed", //	Is Preview For Email Monitoring Allowed.	
        "unresolveEmailAddressIfMultipleMatch":"common/application/organization/unresolveEmailAddressIfMultipleMatch", //	Indicates whether email address should be unresolved if multiple matches are found	
        "riErrorStatus":"common/application/organization/riErrorStatus", //	Error status of Relationship Insights provisioning.	
        "widgetProperties":"common/application/organization/widgetProperties", //	For Internal use only.	
        "enableMicrosoftFlowIntegration":"common/application/organization/enableMicrosoftFlowIntegration", //	Enable Integration with Microsoft Flow	
        "isEnabledForAllRoles":"common/application/organization/isEnabledForAllRoles", //	Indicates whether appmodule is enabled for all roles	
        "isPreviewForAutoCaptureEnabled":"common/application/organization/isPreviewForAutoCaptureEnabled", //	Indicates whether the feature Auto Capture should be enabled for the organization at Preview Settings.	
        "defaultCrmCustomName":"common/application/organization/defaultCrmCustomName", //	Name of the default crm custom.	
        "ACIWebEndpointUrl":"common/application/organization/ACIWebEndpointUrl", //	ACI Web Endpoint URL.	
        "enableLPAuthoring":"common/application/organization/enableLPAuthoring", //	Select to enable learning path auhtoring.	
        "isResourceBookingExchangeSyncEnabled":"common/application/organization/isResourceBookingExchangeSyncEnabled", //	Indicates if the synchronization of user resource booking with Exchange is enabled at organization level.	
        "isMobileClientOnDemandSyncEnabled":"common/application/organization/isMobileClientOnDemandSyncEnabled", //	Information that specifies whether mobile client on demand sync is enabled.	
        "postMessageWhitelistDomains":"common/application/organization/postMessageWhitelistDomains", //	For internal use only.	
        "isRelationshipInsightsEnabled":"common/application/organization/isRelationshipInsightsEnabled", //	Indicates whether the feature Relationship Insights should be enabled for the organization.	
        "resolveSimilarUnresolvedEmailAddress":"common/application/organization/resolveSimilarUnresolvedEmailAddress", //	Apply same email address to all unresolved matches when you manually resolve it for one	
        "isTextWrapEnabled":"common/application/organization/isTextWrapEnabled", //	Information on whether text wrap is enabled.	
        "sessionTimeoutEnabled":"common/application/organization/sessionTimeoutEnabled", //	Information that specifies whether session timeout is enabled	
        "sessionTimeoutInMins":"common/application/organization/sessionTimeoutInMins", //	Session timeout in minutes	
        "sessionTimeoutReminderInMins":"common/application/organization/sessionTimeoutReminderInMins", //	Session timeout reminder in minutes	
        "microsoftFlowEnvironment":"common/application/organization/microsoftFlowEnvironment", //	Environment selected for Integration with Microsoft Flow	
        "inactivityTimeoutEnabled":"common/application/organization/inactivityTimeoutEnabled", //	Information that specifies whether Inactivity timeout is enabled	
        "inactivityTimeoutInMins  ":"common/application/organization/inactivityTimeoutInMins", //	Inactivity timeout in minutes	
        "inactivityTimeoutReminderInMins":"common/application/organization/inactivityTimeoutReminderInMins", //	Inactivity timeout reminder in minutes	
        "syncOptInSelection":"common/application/organization/syncOptInSelection", //	Indicates the selection to use the dynamics 365 azure sync framework or server side sync.	
        "syncOptInSelectionStatus":"common/application/organization/syncOptInSelectionStatus", //	Indicates the status of the opt-in or opt-out operation for dynamics 365 azure sync.	
        "syncOptInSelectionStatus_display":"common/application/organization/syncOptInSelectionStatus_display", //		
        "isActionSupportFeatureEnabled":"common/application/organization/isActionSupportFeatureEnabled", //	Information that specifies whether Action Support Feature is enabled	
        "isBPFEntityCustomizationFeatureEnabled":"common/application/organization/isBPFEntityCustomizationFeatureEnabled", //	Information that specifies whether BPF Entity Customization Feature is enabled	
        "boundDashboardDefaultCardExpanded":"common/application/organization/boundDashboardDefaultCardExpanded", //	Display cards in expanded state for interactive dashboard	
        "maxActionStepsInBPF":"common/application/organization/maxActionStepsInBPF", //	Maximum number of actionsteps allowed in a BPF	
        "serveStaticResourcesFromAzureCDN":"common/application/organization/serveStaticResourcesFromAzureCDN", //	Serve Static Content From CDN	
        "isExternalFileStorageEnabled":"common/application/organization/isExternalFileStorageEnabled", //	Indicates whether the organization's files are being stored in Azure.	
        "clientFeatureSet":"common/application/organization/clientFeatureSet", //	Client Features to be enabled as an XML BLOB.	
        "isReadAuditEnabled":"common/application/organization/isReadAuditEnabled", //	Enable or disable auditing of read operations.	
        "isNotesAnalysisEnabled":"common/application/organization/isNotesAnalysisEnabled", //	Indicates whether the feature Notes Analysis should be enabled for the organization.	
        "allowLegacyDialogsEmbedding":"common/application/organization/allowLegacyDialogsEmbedding", //	Enable embedding of certain legacy dialogs in Unified Interface browser client	
        "appointmentRichEditorExperience":"common/application/organization/appointmentRichEditorExperience", //	Information on whether rich editing experience for Appointment is enabled.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}