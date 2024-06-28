/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.numbersequences.numbersequence;

@safe:
import models.systems;

class DNumberSequenceEntity : DEntity {
  mixin(EntityThis!("NumberSequenceEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"numberSequenceCode": StringAttribute, //
				"companyId": StringAttribute, //
				"numberSequenceScope": StringAttribute, //
				"backingTable_NumberSequenceTableRelationshipId": StringAttribute, //
      ])
      .registerPath("system_numbersequences")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("NumberSequenceEntity"));