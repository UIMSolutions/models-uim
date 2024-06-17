module models.common.objclasses.applications.article;

import models.common;

static this() {
  // Structured content that is part of the knowledge base.
  gsCommon.objclasses("common/application/article", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "kbArticleId":"common/application/article/kbArticleId", //	Shows the ID of the article.	
        "kbArticleTemplateId":"common/application/article/kbArticleTemplateId", //	Choose the template that you want to use as a base for creating the new article.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization associated with the article.	
        "subjectId":"common/application/article/subjectId", //	Choose the subject of the article to assist with article searches. You can configure subjects under Business Management in the Settings area.	
        "articleXml":"common/application/article/articleXml", //	Shows the article content and formatting, stored as XML.	
        "title":"common/application/article/title", //	Type a subject or descriptive name for the article to assist with article searches.	
        "number":"common/application/article/number", //	Knowledge base article number.	
        "content":"common/application/article/content", //	Description of the content of the knowledge base article.	
        "comments":"common/application/article/comments", //	Comments regarding the knowledge base article.	
        "stateCode":"common/application/article/stateCode", //	Shows whether the knowledge base article is in draft, unapproved, or published status. Published articles are read-only and can't be edited unless they are unpublished.	
        "stateCode_display":"common/application/article/stateCode_display", //		
        "statusCode":"common/application/article/statusCode", //	Select the article's status.	
        "statusCode_display":"common/application/article/statusCode_display", //		
        "keyWords":"common/application/article/keyWords", //	Keywords to be used for searches in knowledge base articles.	
        "importSequenceNumber":"common/application/article/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "overriddenCreatedOn":"common/application/article/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the article.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the kbarticle.	
        "languageCode":"common/application/article/languageCode", //	Select which language the article must be available in. This list is based on the list of language packs that are installed in your Microsoft Dynamics 365 environment.	
        "exchangeRate":"common/application/article/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "transactionCurrencyId":"common/application/article/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "entityImageId":"common/application/article/entityImageId", //	For internal use only.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}