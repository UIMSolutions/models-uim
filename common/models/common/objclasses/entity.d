module models.common.objclasses.entity;

import models.common;

static this() {
  // Base class fpr entities
  gsCommon.objclasses("common/entity", new class DOOPObjclass {
    this() {
      super();
      this.attclasses([
        "id":"common/id", // Unique identifier of the entity.
        "name":"common/name", // name of entity.
        "createdOn":"common/createdOn", // Date and time when the entity was created.
        "createdBy":"common/createdBy", // Shows who created the entity.
        "modifiedOn":"common/modifiedOn", // Date and time when the entity was modified.
        "modifiedBy":"common/modifiedBy", // Shows who last updated the entity.
        "description":"common/description", // Type a detailed description of what the categorization is about.

        "versionName":"common/name", // Version Name like "1.1"
        "versionMajor":"common/versionNumber", // Version Major Number
        "versionMinor":"common/versionNumber", // Version Minor Number
        "versionOn":"common/createdOn", // Date and time when the version was created.
        "versionBy":"common/createdBy", // Shows who created the version.
        "versionDescription":"common/description", // Version Description
      ]); 
    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}