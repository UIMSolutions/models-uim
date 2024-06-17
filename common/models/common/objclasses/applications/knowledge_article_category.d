module models.common.objclasses.applications.knowledge_article_category;

import models.common;

static this() {
  // Category for a Knowledge Article.
  gsCommon.objclasses("common/application/knowledgeArticleCategory", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "knowledgeArticleId":"common/application/knowledgeArticleCategory/knowledgeArticleId", //		
        "categoryId":"common/application/knowledgeArticleCategory/categoryId", //		
        "knowledgeArticleCategoryId":"common/application/knowledgeArticleCategory/knowledgeArticleCategoryId", //	Unique identifier of the Category for the knowledge article.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}