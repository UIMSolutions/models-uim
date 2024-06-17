module models.common;

public import std.stdio;
public import std.string;
public import std.uuid;

public import uim.core;
public import uim.oop;
public import uim.models;

public import models.common.attributes;
public import models.common.entities;


DOOPModel gsCommon;
string[string][string] bsiTranslations;

static this() {
  gsCommon = new class DOOPModel {
    this() {
      super();
      this.name("Common");

      this.attclasses(
        OOPAttclass("dataformat/boolean/nullable/false"),
        OOPAttclass("dataformat/boolean/nullable/true"),
        OOPAttclass("dataformat/datetime/nullable/false"),
        OOPAttclass("dataformat/datetime/nullable/true"),
        OOPAttclass("dataformat/double/nullable/false"),
        OOPAttclass("dataformat/double/nullable/true"),
        OOPAttclass("dataformat/guid/nullable/false"),
        OOPAttclass("dataformat/guid/nullable/true"),
        OOPAttclass("dataformat/integer/nullable/false"),
        OOPAttclass("dataformat/integer/nullable/true"),
        OOPAttclass("dataformat/timestamp/nullable/false"),
        OOPAttclass("dataformat/string/nullable/true"),
        OOPAttclass("dataformat/string/nullable/false"),
        OOPAttclass("dataformat/timestamp/nullable/true"),
        OOPAttclass("dataformat/url/nullable/false"),
        OOPAttclass("dataformat/url/nullable/true"),
      );
    }
  };
}
unittest {
  writeln(gsCommon.objclass("common/entity").toJson);
  writeln(gsCommon.objclass("common/application/team").toJson);
  writeln(gsCommon.objclass("common/application/team").objclass);

  auto f = File("model-common.json", "w"); // open for writing
  f.write(gsCommon.toJson.toString);

  MongoClient client = connectMongoDB("127.0.0.1");
	auto models = client.getCollection("eim.models");
  models.insert(gsCommon.toBson);
}
