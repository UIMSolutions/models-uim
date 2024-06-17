module models.common.attclasses.applications.ownerid;

import models.common;

static this() {
  gsCommon.attclasses(new class DOOPAttclass {
    this() {
      super(); 
      this
      .name("common/ownerId")
      .attclass("dataFormat/guid");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("common/application/ownerId").name == "common/application/ownerId");
}
    