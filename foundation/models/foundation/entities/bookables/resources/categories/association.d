module models.foundation.bookables.resources.categories.association;

@safe:
import models.foundation;

// Association entity to model the categorization of resources.
class DBookableResourceCategoryAssociationEntity : DEntity {
  mixin(EntityThis!("BookableResourceCategoryAssociationEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Resource Category Assn
        StatusCodeAttribute, //Reason for the status of the Resource Category Assn
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "bookableResourceCategoryAssnId": UUIDAttribute, // Unique identifier of the resource and category association.
        "resource": StringAttribute, // Shows the resource associated with the category.
        "resourceCategory": StringAttribute, // Choose a category to associate with the resource.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcecategoryassn with respect to the base currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceCategoryAssn with respect to the base currency.
      ])
      .registerPath("foundation_bookable.resource.category.associations");
  }
}
mixin(EntityCalls!("BookableResourceCategoryAssociationEntity"));

version(test_model_foundation) { unittest {
    assert(BookableResourceCategoryAssociationEntity);
  
  auto entity = BookableResourceCategoryAssociationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}