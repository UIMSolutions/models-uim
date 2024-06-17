module models.common.attclasses.applications.modifiedOnBehalfBy;

import models.common;

static this() {
  gsCommon.attclasses(new class DOOPAttclass {
    this() {
      super(); 
      this
      .name("common/modifiedOnBehalfBy")
      .attclass("dataFormat/guid/nullable/true");      
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("common/application/ownerId").name == "common/application/ownerId");
}
    