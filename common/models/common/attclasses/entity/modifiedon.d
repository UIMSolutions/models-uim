module models.common.attclasses.entity.modifiedon;

import models.common;

static this() {
  gsCommon.attclasses("entity/modifiedOn", new class DOOPAttclass {
    this() {
      super(); 
      this.attclass("base/dateTime/nullable");
    }
  });
}
unittest {
//  assert(gsCommon.attclasses("entity/modifiedOn").name == "entity/modifiedOn");
}
    