module models.common.objclasses.applications.note;

import models.common;

static this() {
  // Note that is attached to one or more objects, including other notes.
  gsCommon.objclasses("common/application/note", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "annotationId":"common/application/note/annotationId", //	Unique identifier of the note.	
        "objectTypeCode":"common/application/note/objectTypeCode", //	Type of entity with which the note is associated.	
        "objectTypeCode_display":"common/application/note/objectTypeCode_display", //		
        "owningUser":"common/application/note/owningUser", //	Unique identifier of the user who owns the note.	
        "objectId":"common/application/note/objectId", //	Unique identifier of the object with which the note is associated.	
        "objectIdTypeCode":"common/application/note/objectIdTypeCode", //	The name of the entity linked by objectId	
        "owningBusinessUnit":"common/application/note/owningBusinessUnit", //	Unique identifier of the business unit that owns the note.	
        "subject":"common/application/note/subject", //	Subject associated with the note.	
        "isDocument":"common/application/note/isDocument", //	Specifies whether the note is an attachment.	
        "noteText":"common/application/note/noteText", //	Text of the note.	
        "mimeType":"common/application/note/mimeType", //	MIME type of the note's attachment.	
        "langId":"common/application/note/langId", //	Language identifier for the note.	
        "documentBody":"common/application/note/documentBody", //	Contents of the note's attachment.	
        "fileSize":"common/application/note/fileSize", //	File size of the note.	
        "fileName":"common/application/note/fileName", //	File name of the note.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/note/ownerIdType", //	The type of owner, either User or Team.	
        "stepId":"common/application/note/stepId", //	workflow step id associated with the note.	
        "overriddenCreatedOn":"common/application/note/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/note/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who created the annotation.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Unique identifier of the delegate user who last modified the annotation.	
        "owningTeam":"common/application/note/owningTeam", //	Unique identifier of the team who owns the note.		
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}