module models.common.attclasses.entity.modifiedby;

import models.common;

static this() {
  gsCommon.attclasses("entity/modifiedBy", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("dataFormat/guid/nullable");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("entity/modifiedBy").name == "entity/modifiedBy");
}
    