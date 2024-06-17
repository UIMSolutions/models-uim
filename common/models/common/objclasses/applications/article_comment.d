module models.common.objclasses.applications.article_comment;

import models.common;

static this() {
  // Comment on a knowledge base article.
  gsCommon.objclasses("common/application/articleComment", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "kbArticleCommentId":"common/application/articleComment/kbArticleCommentId", //	Unique identifier of the knowledge base article comment.	
        "kbArticleId":"common/application/articleComment/kbArticleId", //	Unique identifier of the knowledge base article to which the comment applies.	
        "title":"common/application/articleComment/title", //	Title of the knowledge base article comment.	
        "commentText":"common/application/articleComment/commentText", //	Comment text for the knowledge base article.	
        "organizationId":"dataformat/guid/nullable/false", //	Unique identifier of the organization with which the article comment is associated.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the kbarticlecomment.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the kbarticlecomment.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}