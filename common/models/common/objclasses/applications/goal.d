module models.common.objclasses.applications.goal;

import models.common;

static this() {
  // Target objective for a user or a team for a specified time period.
  gsCommon.objclasses("common/application/goal", new class DOOPObjclass {
    this() {
      super();
      this.objclass("common/entity").attclasses([
        "createdOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy":"dataformat/guid/nullable/true", //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn":"common/application/goal/overriddenCreatedOn", //	Date and time that the record was migrated.	
        "importSequenceNumber":"common/application/goal/importSequenceNumber", //	Unique identifier of the data import or data migration that created this record.	
        "ownerId":"common/ownerId", //	Owner Id	
        "ownerIdType":"common/application/goal/ownerIdType", //	The type of owner, either User or Team.	
        "owningBusinessUnit":"common/application/goal/owningBusinessUnit", //	Unique identifier for the business unit that owns the record	
        "owningUser":"common/application/goal/owningUser", //	Unique identifier of the user that owns the activity.	
        "owningTeam":"common/application/goal/owningTeam", //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber":"common/application/goal/timeZoneRuleVersionNumber", //	For internal use only.	
        "UTCConversionTimeZoneCode":"common/application/goal/UTCConversionTimeZoneCode", //	Time zone code that was in use when the record was created.	
        "stateCode":"common/application/goal/stateCode", //	Shows whether the goal is open, completed, or canceled. Completed and canceled goals are read-only and can't be edited.	
        "stateCode_display":"common/application/goal/stateCode_display", //		
        "statusCode":"common/application/goal/statusCode", //	Select the goal's status.	
        "statusCode_display":"common/application/goal/statusCode_display", //		
        "title":"common/application/goal/title", //	Type a title or name that describes the goal.	
        "fiscalPeriod":"common/application/goal/fiscalPeriod", //	Select the fiscal period for the goal.	
        "fiscalPeriod_display":"common/application/goal/fiscalPeriod_display", //		
        "fiscalYear":"common/application/goal/fiscalYear", //	Select the fiscal year for the goal that's being tracked.	
        "fiscalYear_display":"common/application/goal/fiscalYear_display", //		
        "goalStartDate":"common/application/goal/goalStartDate", //	Enter the date and time when the period for tracking the goal begins.	
        "goalEndDate":"common/application/goal/goalEndDate", //	Enter the date when the goal ends.	
        "goalOwnerId":"common/application/goal/goalOwnerId", //	Choose the user or team responsible for meeting the goal.	
        "goalOwnerIdType":"common/application/goal/goalOwnerIdType", //	The name of the entity linked by goalOwnerId	
        "parentGoalId":"common/application/goal/parentGoalId", //	Choose a parent goal if the current goal is a child goal. This sets up a parent-child relationship for reporting and analytics.	
        "transactionCurrencyId":"common/application/goal/transactionCurrencyId", //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate":"common/application/goal/exchangeRate", //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "metricId":"common/application/goal/metricId", //	Choose the metric for the goal. This metric determines how the goal is tracked.	
        "treeId":"common/application/goal/treeId", //	Unique identifier of the goal tree.	
        "depth":"common/application/goal/depth", //	Depth of the goal in the tree.	
        "stretchTargetMoney":"common/application/goal/stretchTargetMoney", //	Select stretch target (money) of the goal to define a higher or difficult level of goal than the usual ones.	
        "stretchTargetMoneyBase":"common/application/goal/stretchTargetMoneyBase", //	Shows the stretch target (money) in base currency to indicate a higher or difficult level of goal than the usual ones.	
        "stretchTargetDecimal":"common/application/goal/stretchTargetDecimal", //	Select a stretch target (decimal) of the goal to define a higher or difficult level of goal than the usual ones.	
        "stretchTargetInteger":"common/application/goal/stretchTargetInteger", //	Select the stretch target (integer) of the goal to define a higher or difficult level of goal than the usual ones.	
        "targetMoney":"common/application/goal/targetMoney", //	Select a goal target (money) to track a monetary amount such as revenue from a product.	
        "targetMoneyBase":"common/application/goal/targetMoneyBase", //	Shows the goal target of the money type in base currency.	
        "targetDecimal":"common/application/goal/targetDecimal", //	Select a goal target of the decimal type to use for tracking data that include partial numbers, such as pounds sold of a product sold by weight.	
        "targetInteger":"common/application/goal/targetInteger", //	Select a goal target of the integer type to use for tracking anything countable in whole numbers, such as units sold.	
        "actualMoney":"common/application/goal/actualMoney", //	Shows the actual value (Money type) achieved towards the target as of the last rolled-up date. This field appears when the metric type of the goal is Amount and the amount data type is Money.	
        "actualMoneyBase":"common/application/goal/actualMoneyBase", //	Shows the actual value (money type) in base currency to track goal results against the target.	
        "customRollupFieldMoney":"common/application/goal/customRollupFieldMoney", //	Indicates a placeholder rollup field for a money value to track a third category of results other than actuals and in-progress results.	
        "customRollupFieldMoneyBase":"common/application/goal/customRollupFieldMoneyBase", //	Indicates a placeholder rollup field for a money value in base currency to track a third category of results other than actuals and in-progress results.	
        "inProgressMoney":"common/application/goal/inProgressMoney", //	Shows the in-progress value (money) against the target. This value could contribute to a goal, but is not counted yet as actual.	
        "inProgressMoneyBase":"common/application/goal/inProgressMoneyBase", //	Shows the in-progress value (money) in base currency to track goal results against the target.	
        "actualDecimal":"common/application/goal/actualDecimal", //	Shows the actual value (Decimal type) achieved towards the target as of the last rolled-up date. This field appears when the metric type of the goal is Amount and the amount data type is Decimal.	
        "customRollupFieldDecimal":"common/application/goal/customRollupFieldDecimal", //	Indicates a placeholder rollup field for a decimal value to track a third category of results other than actuals and in-progress results.	
        "inProgressDecimal":"common/application/goal/inProgressDecimal", //	Shows the in-progress value (decimal) against the target. This value could contribute to a goal, but is not counted yet as actual.	
        "actualInteger":"common/application/goal/actualInteger", //	Shows the actual value (integer) achieved towards the target as of the last rolled-up date. This field appears when the metric type of the goal is Amount or Count and the amount data type is Integer.	
        "customRollupFieldInteger":"common/application/goal/customRollupFieldInteger", //	Indicates a placeholder rollup field for an integer value to track a third category of results other than actuals and in-progress results.	
        "inProgressInteger":"common/application/goal/inProgressInteger", //	Shows the in-progress value (integer) against the target. This value could contribute to a goal, but is not counted yet as actual.	
        "percentage":"common/application/goal/percentage", //	Shows the percentage achieved against the target goal.	
        "isFiscalPeriodGoal":"common/application/goal/isFiscalPeriodGoal", //	Select whether the goal period is a fiscal period or custom period.	
        "considerOnlyGoalOwnersRecords":"common/application/goal/considerOnlyGoalOwnersRecords", //	Select whether only the goal owner's records, or all records, should be rolled up for goal results.	
        "lastRolledupDate":"common/application/goal/lastRolledupDate", //	Shows the date and time when the goal was last rolled up. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	
        "targetString":"common/application/goal/targetString", //	Target value of the goal.	
        "stretchTargetString":"common/application/goal/stretchTargetString", //	Stretch target value for all data types.	
        "actualString":"common/application/goal/actualString", //	Actual Value of the goal.	
        "customRollupFieldString":"common/application/goal/customRollupFieldString", //	Placeholder rollup field for the goal.	
        "inProgressString":"common/application/goal/inProgressString", //	In-progress value of the goal.	
        "amountDataType":"common/application/goal/amountDataType", //	Data type of the amount.	
        "amountDataType_display":"common/application/goal/amountDataType_display", //		
        "isAmount":"common/application/goal/isAmount", //	Indicates whether the metric type is Count or Amount.	
        "rollupQueryActualIntegerId":"common/application/goal/rollupQueryActualIntegerId", //	Choose the query that will be used to calculate the actual data for the goal (integer).	
        "rollUpQueryActualMoneyId":"common/application/goal/rollUpQueryActualMoneyId", //	Choose the query that will be used to calculate the actual data for the goal (money).	
        "rollUpQueryActualDecimalId":"common/application/goal/rollUpQueryActualDecimalId", //	Choose the query that will be used to calculate the actual data for the goal (decimal).	
        "rollUpQueryCustomIntegerId":"common/application/goal/rollUpQueryCustomIntegerId", //	Choose the query that will be used to calculate data for the custom rollup field (integer).	
        "rollUpQueryCustomMoneyId":"common/application/goal/rollUpQueryCustomMoneyId", //	Choose the query that will be used to calculate data for the custom rollup field (money).	
        "rollUpQueryCustomDecimalId":"common/application/goal/rollUpQueryCustomDecimalId", //	Choose the query that will be used to calculate data for the custom rollup field (decimal).	
        "rollUpQueryInprogressIntegerId":"common/application/goal/rollUpQueryInprogressIntegerId", //	Choose the query that will be used to calculate data for the in-progress rollup field (integer).	
        "rollUpQueryInprogressMoneyId":"common/application/goal/rollUpQueryInprogressMoneyId", //	Choose the query that will be used to calculate data for the in-progress rollup field (money).	
        "rollUpQueryInprogressDecimalId":"common/application/goal/rollUpQueryInprogressDecimalId", //	Choose the query that will be used to calculate data for the in-progress rollup field (decimal).	
        "rollupOnlyFromChildGoals":"common/application/goal/rollupOnlyFromChildGoals", //	Select whether the data should be rolled up only from the child goals.	
        "goalWithErrorId":"common/application/goal/goalWithErrorId", //	Unique identifier of the goal that caused an error in the rollup of the goal hierarchy.	
        "rollupErrorCode":"common/application/goal/rollupErrorCode", //	Error code associated with rollup.	
        "computedTargetAsOfTodayPercentageAchieved":"common/application/goal/computedTargetAsOfTodayPercentageAchieved", //	Shows the expected value for percentage achieved against the target goal as of the current date.	
        "computedTargetAsOfTodayMoney":"common/application/goal/computedTargetAsOfTodayMoney", //	Shows the expected amount for actual value (money type) against the target goal as of the current date.	
        "computedTargetAsOfTodayMoneyBase":"common/application/goal/computedTargetAsOfTodayMoneyBase", //	Shows the expected amount in base currency for actual value (money type) against the target goal as of the current date.	
        "computedTargetAsOfTodayDecimal":"common/application/goal/computedTargetAsOfTodayDecimal", //	Shows the expected amount for actual value (decimal type) against the target goal.	
        "computedTargetAsOfTodayInteger":"common/application/goal/computedTargetAsOfTodayInteger", //	Shows the expected amount for actual value (integer type) against the target goal as of the current date.	
        "isOverride":"common/application/goal/isOverride", //	Indicates whether the values of system rollup fields can be updated.	
        "isOverridden":"common/application/goal/isOverridden", //	Select whether the system rollup fields are updated. If set to Yes, the next system rollup will not update the values of the rollup fields with the system calculated values.	
        "entityImageId":"common/application/goal/entityImageId", //	For internal use only.	
      ]); 

    }
  });
}
unittest {
  // assert(gsModel.gsCommon("bsi/person").name == "bsi/person");
}