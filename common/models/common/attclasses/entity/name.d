module models.common.attclasses.entity.name;

import models.common;

static this() {
  gsCommon.attclasses("entity/name", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("dataFormat/string/maximumLength/100/nullable/true");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("common/name").name == "common/name");
}
    