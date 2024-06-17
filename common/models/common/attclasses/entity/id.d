module models.common.attclasses.entity.id;

import models.common;

static this() {
  gsCommon.attclasses("entity/id", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("dataFormat/guid/isPrimaryKey/true");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("entity/id").name == "entity/id");
}
    