module models.common.attclasses.entity.createdon;

import models.common;

static this() {
  gsCommon.attclasses("entity/createdOn", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("base/dateTime/nullable");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("entity/application/ownerId").name == "entity/application/ownerId");
}
    