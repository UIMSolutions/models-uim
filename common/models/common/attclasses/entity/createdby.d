module models.common.attclasses.entity.createdby;

import models.common;

static this() {
  gsCommon.attclasses("entity/createdBy", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("dataFormat/guid/nullable");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("entity/application/createdBy").name == "entity/application/createdBy");
}
    