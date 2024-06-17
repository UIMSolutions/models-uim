module models.educations.entities.tests.score;

@safe:
import models.educations;

// Test scores for a Student Contact
class DTestScoreEntity : DEntity {
  mixin(EntityThis!("TestScoreEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute,
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([ // individual values  
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerId": UUIDAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "testScoreId": UUIDAttribute, //	Unique identifier for entity instances	
        "actComposite": StringAttribute, //	ACT - Composite Score	
        "actELA": StringAttribute, //	ACT - ELA Score	
        "actEnglish": StringAttribute, //	ACT - English Score	
        "actEquivalentScore": StringAttribute, //	ACT equivalent score for a given SAT Score	
        "actMath": StringAttribute, //	ACT - Math Score	
        "actReading": StringAttribute, //	ACT - Reading Score	
        "actScience": StringAttribute, //	ACT - Science Score	
        "actSTEM": StringAttribute, //	ACT - STEM Score	
        "actWriting": StringAttribute, //	ACT - Writing Score	
        "alevelArt": StringAttribute, //	A-level Art	
        "gmaTAnalyticalWriting": StringAttribute, //	GMAT - Analytical Writing Score	
        "gmaTIntegratedReasoning": StringAttribute, //	GMAT - Integrated Reasoning Score	
        "gmaTQuantitativeReasoning": StringAttribute, //	GMAT - Quantitative Reasoning Score	
        "gmaTTotal": StringAttribute, //	GMAT - Total Score	
        "gmaTVerbalReasoning": StringAttribute, //	GMAT - Verbal Reasoning Score	
        "GREAnalyticalReasoning": StringAttribute, //	GRE - Analytical Reasoning Score	
        "GREQuantitativeReasoning": StringAttribute, //	GRE - Quantitative Reasoning Score	
        "GRETotalScore": StringAttribute, //	GRE - Total Score	
        "GREVerbalReasoning": StringAttribute, //	GRE - Verbal Reasoning Score	
        "ieltSCEFR": StringAttribute, //	ieltS - CEFR	
        "ieltSCEFR_display": StringAttribute, //		
        "ieltSListening": StringAttribute, //	ieltS - Listening score	
        "ieltSOverallBandScore": StringAttribute, //	ieltS - Overall Band Score	
        "ieltSReading": StringAttribute, //	ieltS - Reading Score	
        "ieltSSpeakingScore": StringAttribute, //	ieltS - Speaking Score	
        "ieltSWriting": StringAttribute, //	ieltS - Writing Score	
        "satEssayAnalysis": StringAttribute, //	SAT - SAT Essay - Analysis Score	
        "satEssayReading": StringAttribute, //	SAT - SAT Essay - Reading Score	
        "satEssayWriting": StringAttribute, //	SAT - SAT Essay - Writing Score	
        "satEvidenceBasedReadingandWritingSection": StringAttribute, //	SAT - Evidence-Based Reading and Writing Section Score	
        "satMathSection": StringAttribute, //	SAT - Math Section Score	
        "satTotalScore": StringAttribute, //	SAT - Total Score	
        "studentID": StringAttribute, //	Lookup to the Student (Contact Id)	
        "testDate": StringAttribute, //	Date when test was taken	
        "testLocation": StringAttribute, //	Location where the test was taken	
        "testScoreValue": StringAttribute, //	Test Score Value	
        "testSource": StringAttribute, //	Source of Test score	
        "testSource_display": StringAttribute, //		
        "testTypeId": UUIDAttribute, //	List of test types	
        "toeflListeningSection": StringAttribute, //	TOEFL - Listening Section Score	
        "toeflReadingSection": StringAttribute, //	TOEFL - Reading Section Score	
        "toeflSpeakingSection": StringAttribute, //	TOEFL - Speaking Section Score	
        "toeflTotalScore": StringAttribute, //	TOEFL - Total Score	
        "toeflWritingSection": StringAttribute, //	TOEFL - Writing Section Score	      
      ])
      .registerPath("education_test.scores");
  }
}
mixin(EntityCalls!("TestScoreEntity"));


version(test_model_education) { unittest {
    assert(TestScoreEntity);

    auto entity = TestScoreEntity;
  }
}