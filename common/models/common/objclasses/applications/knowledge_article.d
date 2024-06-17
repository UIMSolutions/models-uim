module models.common.objclasses.applications.knowledge_article;

import models.common;

static this() {
  // Organizational knowledge for internal and external use.
  gsCommon.objclasses("common/application/knowledgeArticle", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/knowledgeArticle/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/knowledgeArticle/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/knowledgeArticle/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/knowledgeArticle/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/knowledgeArticle/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/knowledgeArticle/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/knowledgeArticle/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/knowledgeArticle/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "knowledgearticleId":"common/application/knowledgeArticle/knowledgearticleId", //	Unique identifier for entity instances	
        "stateCode":"common/application/knowledgeArticle/stateCode", //	Shows whether the article is a draft or is published, archived, or discarded. Draft articles aren't available externally and can be edited. Published articles are available externally, based on applicable permissions, but can't be edited. All metadata changes are reflected in the published version. Archived and discarded articles aren't available externally and can't be edited.	
        "stateCode_display":"common/application/knowledgeArticle/stateCode_display", //		
        "statusCode":"common/application/knowledgeArticle/statusCode", //	Select the article's status.	
        "statusCode_display":"common/application/knowledgeArticle/statusCode_display", //		
        "processId":"common/application/knowledgeArticle/processId", //	Contains the id of the process associated with the entity.	
        "stageId":"common/application/knowledgeArticle/stageId", //	Contains the id of the stage where the entity is located.	
        "traversedPath":"common/application/knowledgeArticle/traversedPath", //	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
        "exchangeRate":"common/application/knowledgeArticle/exchangeRate", //	Exchange rate for the currency associated with the KnowledgeArticle with respect to the base currency.	
        "transactionCurrencyId":"common/application/knowledgeArticle/transactionCurrencyId", //	Exchange rate for the currency associated with the KnowledgeArticle with respect to the base currency.	
        "title":"common/application/knowledgeArticle/title", //	Type a title for the article.	
        "content":"common/application/knowledgeArticle/content", //	Shows the body of the article stored in HTML format.	
        "keyWords":"common/application/knowledgeArticle/keyWords", //	Type keywords to be used for searches in knowledge base articles. Separate keywords by using commas.	
        "publishOn":"common/application/knowledgeArticle/publishOn", //	Date and time when the record was published.	
        "expirationDate":"common/application/knowledgeArticle/expirationDate", //	Enter an expiration date for the article. Leave this field blank for no expiration date.	
        "parentArticleContentId":"common/application/knowledgeArticle/parentArticleContentId", //	Contains the id of the parent article content associated with the entity.	
        "knowledgeArticleViews":"common/application/knowledgeArticle/knowledgeArticleViews", //	Shows the total number of article views.	
        "majorVersionNumber":"common/application/knowledgeArticle/majorVersionNumber", //	Shows the major version number of this article's content.	
        "minorVersionNumber":"common/application/knowledgeArticle/minorVersionNumber", //	Shows the minor version number of this article's content.	
        "languageLocaleId":"common/application/knowledgeArticle/languageLocaleId", //	Select the language that the article's content is in.	
        "scheduledStatusId":"common/application/knowledgeArticle/scheduledStatusId", //	Contains the id of the scheduled status of the entity.	
        "expirationStatusId":"common/application/knowledgeArticle/expirationStatusId", //	Contains the id of the expiration status of the entity.	
        "publishStatusId":"common/application/knowledgeArticle/publishStatusId", //	Publish Status of the Article.	
        "isPrimary":"common/application/knowledgeArticle/isPrimary", //	Select whether the article is the primary article.	
        "readyForReview":"common/application/knowledgeArticle/readyForReview", //	Ready For Review	
        "review":"common/application/knowledgeArticle/review", //	Review	
        "review_display":"common/application/knowledgeArticle/review_display", //		
        "updateContent":"common/application/knowledgeArticle/updateContent", //	Update Content	
        "expiredReviewOptions":"common/application/knowledgeArticle/expiredReviewOptions", //	Expired Review Options	
        "expiredReviewOptions_display":"common/application/knowledgeArticle/expiredReviewOptions_display", //		
        "subjectId":"common/application/knowledgeArticle/subjectId", //	Choose the subject of the article to assist with article searches. You can configure subjects under Business Management in the Settings area.	
        "primaryAuthorId":"common/application/knowledgeArticle/primaryAuthorId", //	Contains the id of the primary author associated with the article.	
        "isRootArticle":"common/application/knowledgeArticle/isRootArticle", //	Select whether the article is the root article.	
        "previousArticleContentId":"common/application/knowledgeArticle/previousArticleContentId", //	Shows the version that the current article was restored from.	
        "articlePublicNumber":"common/application/knowledgeArticle/articlePublicNumber", //	Shows the automatically generated ID exposed to customers, partners, and other external users to reference and look up articles.	
        "isLatestVersion":"common/application/knowledgeArticle/isLatestVersion", //	Shows which version of the knowledge article is the latest version.	
        "rootArticleId":"common/application/knowledgeArticle/rootArticleId", //	Contains the id of the root article.	
        "knowledgeArticleViewsDate":"common/application/knowledgeArticle/knowledgeArticleViewsDate", //	The date time for Knowledge Article View.	
        "knowledgeArticleViewsState":"common/application/knowledgeArticle/knowledgeArticleViewsState", //	State of Knowledge Article View.	
        "rating":"common/application/knowledgeArticle/rating", //	Information which specifies how helpful the related record was.	
        "ratingDate":"common/application/knowledgeArticle/ratingDate", //	The date time for Rating.	
        "ratingState":"common/application/knowledgeArticle/ratingState", //	State of Rating	
        "ratingSum":"common/application/knowledgeArticle/ratingSum", //	Total sum of Rating	
        "ratingCount":"common/application/knowledgeArticle/ratingCount", //	Rating Count	
        "isInternal":"common/application/knowledgeArticle/isInternal", //	Shows whether this article is only visible internally.	
        "setCategoryAssociations":"common/application/knowledgeArticle/setCategoryAssociations", //	Shows whether category associations have been set	
        "expirationStateId":"common/application/knowledgeArticle/expirationStateId", //	Contains the id of the expiration state of the entity.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}