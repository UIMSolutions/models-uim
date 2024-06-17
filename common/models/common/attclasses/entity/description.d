module models.common.attclasses.entity.description;

import models.common;

static this() {
  gsCommon.attclasses("entity/description", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("dataFormat/string/maximumLength/2000/nullable/true");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("entity/application/credescriptionatedBy").name == "entity/application/description");
}
    