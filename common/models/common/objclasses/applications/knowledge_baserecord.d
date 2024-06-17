module models.common.objclasses.applications.knowledge_baserecord;

import models.common;

static this() {
  // Metadata of knowledge base (KB) articles associated with Microsoft Dynamics 365 entities.
  gsCommon.objclasses("common/application/knowledgeBaseRecord", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "title":"common/application/knowledgeBaseRecord/title", //	Shows the title of the knowledge base (KB) Record.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the record.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who modified the record.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier for the organization	
        "timeZoneRuleVersionNumber":"common/application/knowledgeBaseRecord/timeZoneRuleVersionNumber", //	For internal use only.	
        "privateUrl":"common/application/knowledgeBaseRecord/privateUrl", //	Shows the internal Parature service desk URL of the knowledge base records.	
        "publicUrl":"common/application/knowledgeBaseRecord/publicUrl", //	Shows the public Parature portal URL of the knowledge base records.	
        "exchangeRate":"common/application/knowledgeBaseRecord/exchangeRate", //	Exchange rate for the currency associated with the knowledge base record with respect to the base currency.	
        "transactionCurrencyId":"common/application/knowledgeBaseRecord/transactionCurrencyId", //	Exchange rate for the currency associated with the Knowledge Base Record with respect to the base currency.	
        "uniqueId":"common/application/knowledgeBaseRecord/uniqueId", //	Shows the unique ID of the linked knowledge base (KB) article.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}