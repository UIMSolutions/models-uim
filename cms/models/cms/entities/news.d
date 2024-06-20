module models.cms.entities.news;

@safe:
import models.cms;


class DCMSNewsItem : DCMSPost {
  mixin(EntityThis!("CMSNewsItem"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addData([
        "newsId": UUIDAttribute 
      ])
      .registerPath("cms_news")
      .routingPath("/cms/news");
  }
}
mixin(EntityCalls!("CMSNewsItem"));



