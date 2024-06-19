module models.pim.entities.billofmaterials.line;

@safe:
import models.pim;

class DBOMLineEntity : DEntity {
  mixin(EntityThis!("BOMLineEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ConsumptionType": StringAttribute, 
        "BOMId": UUIDAttribute, 
        "Quantity": StringAttribute, 
        "QuantityDenominator": StringAttribute, 
        "LineType": StringAttribute, 
        "WillCostCalculationIncludeLine": StringAttribute, 
        "ConsumptionCalculationConstant": StringAttribute, 
        "PhysicalProductDensity": StringAttribute, 
        "PhysicalProductDepth": StringAttribute, 
        "IsConsumedAtOperationComplete": StringAttribute, 
        "ConsumptionCalculationMethod": StringAttribute, 
        "ValidFromDate": StringAttribute, 
        "PhysicalProductHeight": StringAttribute, 
        "SubBOMId": UUIDAttribute, 
        "ItemNumber": StringAttribute, 
        "SubRouteId": UUIDAttribute, 
        "LineNumber": StringAttribute, 
        "RouteOperationNumber": StringAttribute, 
        "CatchWeightQuantity": StringAttribute, 
        "WillManufacturedItemInheritBatchAttributes": StringAttribute, 
        "WillManufacturedItemInheritShelfLifeDates": StringAttribute, 
        "PositionNumber": StringAttribute, 
        "FlushingPrinciple": StringAttribute, 
        "RoundingUpMethod": StringAttribute, 
        "QuantityRoundingUpMultiples": StringAttribute, 
        "ConstantScrapQuantity": StringAttribute, 
        "VariableScrapPercentage": StringAttribute, 
        "ValidToDate": StringAttribute, 
        "ProductUnitSymbol": StringAttribute, 
        "VendorAccountNumber": StringAttribute, 
        "PhysicalProductWidth": StringAttribute, 
        "IsResourceConsumptionUsed": StringAttribute, 
        "ProductConfigurationId": UUIDAttribute, 
        "ProductColorId": UUIDAttribute, 
        "ProductSizeId": UUIDAttribute, 
        "ProductStyleId": UUIDAttribute, 
        "ProductVersionId": UUIDAttribute, 
        "ConsumptionSiteId": UUIDAttribute, 
        "ConsumptionWarehouseId": UUIDAttribute, 
        "LineBOMId": UUIDAttribute, 
        "LineCreationSequenceNumber": StringAttribute, 
        "ConfigurationGroupId": UUIDAttribute, 
        "Relationship_RelationForeignKey1RelationshipId": UUIDAttribute, 
        "Relationship_RouteHeaderRelationshipId": UUIDAttribute, 
        "Relationship_SubBillOfMaterialsHeaderRelationshipId": UUIDAttribute, 
        "Relationship_VendorRelationshipId": UUIDAttribute, 
        "Relationship_BillOfMaterialsHeaderRelationshipId": UUIDAttribute, 
        "Relationship_BOMConfigurationGroupRelationshipId": UUIDAttribute, 
        "BackingTable_BOMRelationshipId": UUIDAttribute, 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,         
      ])
      .registerPath("pim_billofmaterials.line");
  }
}
mixin(EntityCalls!("BOMLineEntity"))

version(test_model_pim) {
  unittest {
    assert(BOMLineEntity);
    auto entity = BOMLineEntity;
    // Todo
  }
}
