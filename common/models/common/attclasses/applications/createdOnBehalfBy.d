module models.common.attclasses.applications.createdOnBehalfBy;

import models.common;

static this() {
  gsCommon.attclasses(new class DOOPAttclass {
    this() {
      super();       
      this
      .name("common/createdOnBehalfBy");
//      .attclass("dataFormat/guid/nullable/true");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("common/application/ownerId").name == "common/application/ownerId");
}
    