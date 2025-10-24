/* Edit the following line to reflect the full path to your CSV file */
/* Original Dataset not included because of HIPPA*/
dm'log;clear' continue;
%let csv_file = "C:\Users\lupus_data.csv";
OPTIONS nofmterr;

proc format;
	value $redcap_event_name_ 'baseline_arm_1'='Baseline' '30_day_followup_arm_1'='30 day follow-up' 
		'60_day_followup_arm_1'='60 day follow-up';
	value race_ethn_shr_cell___1_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___2_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___3_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___4_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___5_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___6_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___7_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___15_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___98_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___99_ 0='Unchecked' 1='Checked';
	value discrim_courtesy_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_service_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_smart_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_afraid_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_harassed_cell_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t Know' 
		99='Prefer not to answer';
	value diag_mon_ 1='January' 2='February' 
		3='March' 4='April' 
		5='May' 6='June' 
		7='July' 8='August' 
		9='September' 10='October' 
		11='November' 12='December' 
		13='Don''t remember';
	value edu_years_shr_combo_ 0='A: No school' 1='B: 5th grade or less' 
		2='C: 6th to 8th grade' 3='D: Some HS, no diploma' 
		4='E: HS graduate (or equivalent)' 5='F: Some college (no degree)' 
		6='G: Associate''s degree (including occupational and technical)' 7='H: Bachelor''s degree (BA, BS, AB)' 
		8='I: Master''s degree (MA, MS, MSW)' 9='J: Professional degree (MD, JD)' 
		10='K: Doctorate degree (PhD, EdD)' 98='Don''t know' 
		99='Prefer not to answer';
	value family_income_shr_combo_ 1='A: $ 0 - $ 4,999' 2='B: $ 5,000 - $ 9,999' 
		3='C: $ 10,000 - $ 14,999' 4='D: $ 15,000 - $ 19,999' 
		5='E: $ 20,000 - $ 24,999' 6='F: $ 25,000 - $ 29,999' 
		7='G: $ 30,000 - $ 34,999' 8='H: $ 35,000 - $ 39,999' 
		9='I: $ 40,000 - $ 44,999' 10='J: $ 45,000 - $ 49,999' 
		11='K: $ 50,000 - $ 54,999' 12='L: $ 55,000 - $ 59,999' 
		13='M: $ 60,000 - $ 64,999' 14='N: $ 65,000 - $ 69,999' 
		15='O: $ 70,000 - $ 74,999' 16='P: $ 75,000 - $ 79,999' 
		17='Q: $ 80,000 - $ 84,999' 18='R: $ 85,000 - $ 89,999' 
		19='S: $ 90,000 - $ 94,999' 20='T: $ 95,000 - $ 99,999' 
		21='U: $ 100,000 - $124,999' 22='V: $125,000 - $149,999' 
		23='W: $150,000 - $199,999' 24='X: $200,000-$249,000' 
		25='Y: $250,000 or more' 99='Prefer not to answer';
	value exp_school_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_gettingwork_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_work_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_housing_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_medicalcare_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_service_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_credit_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_public_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_legal_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_court_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value hi_coverage_type_ 0='I do NOT have health insurance' 1='Private (purchased directly or through Employment)' 
		2='Public (Medicare, Medicaid, Tricare)' 98='Don''t know' 
		99='Prefer not to answer';
	value self_reported_disability_ 1='Yes' 0='No' 
		98='Don''t know' 99='Prefer not to answer';
	value relat_stat_cell_ 1='Legally married, in a marriage-like relationship, or have a partner' 2='In a romantic relationship' 
		3='Separated or divorced' 4='Widowed' 
		5='Single' 98='Don''t know' 
		99='Prefer not to answer';
	value current_employment_self_cell_ 1='Yes' 0='No' 
		98='Don''t know' 99='Prefer not to answer';
	value vicarious1_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious2_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious3_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious4_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious5_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious6_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious7_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious8_cell_ 1='Never' 2='Rarely' 
		3='Sometimes' 4='Very often' 
		5='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious9_cell_ 1='Not at all distressed' 2='A little distressed' 
		3='Somewhat distressed' 4='Distressed a lot' 
		5='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious10_cell_ 1='Not at all concerned' 2='A little concerned' 
		3='Somewhat concerned' 4='Concerned a lot' 
		5='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance1_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance2_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance3_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance4_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value retinadamage_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cataract_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value kidneytrans_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value dialysis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pulmhbp_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pulmfibrosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value coronary_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_cvd_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value heartattack_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value multheartattack_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pericarditis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value fingertiploss_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value limbloss_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value thrombosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value seizuresdd_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value seizuresmeds_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value psychosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value strokedd_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value multiplestrokes_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value paralysis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value paralysisstrokemi_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value esophagussurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value stomachsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value sintestinesurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value colonsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value spleensurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value liversurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pancreassurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value gallbladsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value peritonitis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value otherabsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value osteofracture_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value bonenecrosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value boneinfection_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value skinulcers_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value earlyperiodstop_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value earlyhysterectomy_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value menses_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pregnancy_status_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_diabetes_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_cancer_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cancer12_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value flare_combo_ 0='No Flare' 1='Mild Flare' 
		2='Moderate Flare' 3='Severe Flare' 
		4='Don''t Remember' 99='Prefer not to answer';
	value weightloss_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value fatigue_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value fevers_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value oralnasalsores_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value rash_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value otherrash_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value blueskinspots_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value sunsensitivity_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value alopecia_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value swolneckgland_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value sob_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value chestpainbreath_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value raynauds_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value stomachpain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value numbtingling_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value seizuresda_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value strokeda_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value forgetfulness_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value feelingdepress_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value unusualheadache_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value musclepain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value muscleweakness_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value jointpain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value jointswelling_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value diseaseactrate3mo_combo_ 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 88='Don''t Know' 
		99='Prefer not to answer';
	value bio_sex_birth_2_combo_ 1='Female' 0='Male' 
		3='Intersex' 96='None of these describe me' 
		99='Prefer not to answer';
	value $current_state_combo_ 'AL'='Alabama' 'AK'='Alaska' 
		'AZ'='Arizona' 'AR'='Arkansas' 
		'CA'='California' 'CO'='Colorado' 
		'CT'='Connecticut' 'DE'='Delaware' 
		'DC'='District of Columbia(DC)' 'FL'='Florida' 
		'GA'='Georgia' 'HI'='Hawaii' 
		'ID'='Idaho' 'IL'='Illinois' 
		'IN'='Indiana' 'IA'='Iowa' 
		'KS'='Kansas' 'KY'='Kentucky' 
		'LA'='Louisiana' 'ME'='Maine' 
		'MD'='Maryland' 'MA'='Massachusetts' 
		'MI'='Michigan' 'MN'='Minnesota' 
		'MS'='Mississippi' 'MO'='Missouri' 
		'MT'='Montana' 'NE'='Nebraska' 
		'NV'='Nevada' 'NH'='New Hampshire' 
		'NJ'='New Jersey' 'NM'='New Mexico' 
		'NY'='New York' 'NC'='North Carolina' 
		'ND'='North Dakota' 'OH'='Ohio' 
		'OK'='Oklahoma' 'OR'='Oregon' 
		'PA'='Pennsylvania' 'RI'='Rhode Island' 
		'SC'='South Carolina' 'SD'='South Dakota' 
		'TN'='Tennessee' 'TX'='Texas' 
		'UT'='Utah' 'VT'='Vermont' 
		'VA'='Virginia' 'WA'='Washington' 
		'WV'='West Virginia' 'WI'='Wisconsin' 
		'WY'='Wyoming' 'AMS'='American Somoa' 
		'GUAM'='GUAM' 'NMI'='Northern Mariana Islands' 
		'PR'='Puerto Rico' 'USVI'='US Virgin Islands';
	value weightloss_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fatigue_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fevers_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sores_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value rash_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value otherrash_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value skinspots_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sunsick_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value baldpatches_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value swollenglands_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sob_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value chestpain_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value raynauds_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stomachpain_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value numbtingling_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value seizures_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stroke_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value forgetfulness_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value feelingdepress_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value headaches_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value musclepain_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value muscleweakness_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointpain_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointswelling_followup 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value lupusactivity_followup 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 98='Don''t know' 
		99='Prefer not to answer';
	value racetreated_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racenews_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceexperience_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceracism_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepoliticians_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepublic_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racemedia_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racethoughts_followup  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racedistressed_followup 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceconcern_followup 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racediscrimination_followup 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceguard_followup 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racevigilant_followup 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racefeared_followup 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value weightloss_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fatigue_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fevers_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sores_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value rash_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value otherrash_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value skinspots_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sunsick_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value baldpatches_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value swollenglands_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sob_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value chestpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value raynauds_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stomachpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value numbtingling_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value seizures_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stroke_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value forgetfulness_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value feelingdepress_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value headaches_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value musclepain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value muscleweakness_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointswelling_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value lupusactivity_followup_two 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 98='Don''t know' 
		99='Prefer not to answer';
	value racetreated_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racenews_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceexperience_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceracism_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepoliticians_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepublic_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racemedia_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racethoughts_followup_two  0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racedistressed_followup_two 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceconcern_followup_two 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racediscrimination_f_v_0_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceguard_followup_two 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racevigilant_followup_two 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racefeared_followup_two 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value leap_online_survey_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';

	run;

data work.redcap1; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat race_ethn_shr_cell___1 best32. ;
	informat race_ethn_shr_cell___2 best32. ;
	informat race_ethn_shr_cell___3 best32. ;
	informat race_ethn_shr_cell___4 best32. ;
	informat race_ethn_shr_cell___5 best32. ;
	informat race_ethn_shr_cell___6 best32. ;
	informat race_ethn_shr_cell___7 best32. ;
	informat race_ethn_shr_cell___15 best32. ;
	informat race_ethn_shr_cell___98 best32. ;
	informat race_ethn_shr_cell___99 best32. ;
	informat discrim_courtesy best32. ;
	informat discrim_service best32. ;
	informat discrim_smart best32. ;
	informat discrim_afraid best32. ;
	informat discrim_harassed_cell best32. ;
	informat dob_mdy_combo yymmdd10. ;
	informat baseline_complete_date $500. ;
	informat diag_mon best32. ;
	informat diag_yr $500. ;
	informat edu_years_shr_combo best32. ;
	informat family_income_shr_combo best32. ;
	informat exp_school_cell best32. ;
	informat exp_gettingwork_cell best32. ;
	informat exp_work_cell best32. ;
	informat exp_housing_cell best32. ;
	informat exp_medicalcare_cell best32. ;
	informat exp_service_cell best32. ;
	informat exp_credit_cell best32. ;
	informat exp_public_cell best32. ;
	informat exp_legal_cell best32. ;
	informat exp_court_cell best32. ;
	informat hi_coverage_type best32. ;
	informat self_reported_disability best32. ;
	informat relat_stat_cell best32. ;
	informat current_employment_self_cell best32. ;
	informat vicarious1_cell best32. ;
	informat vicarious2_cell best32. ;
	informat vicarious3_cell best32. ;
	informat vicarious4_cell best32. ;
	informat vicarious5_cell best32. ;
	informat vicarious6_cell best32. ;
	informat vicarious7_cell best32. ;
	informat vicarious8_cell best32. ;
	informat vicarious9_cell best32. ;
	informat vicarious10_cell best32. ;
	informat vigilance1_cell best32. ;
	informat vigilance2_cell best32. ;
	informat vigilance3_cell best32. ;
	informat vigilance4_cell best32. ;
	informat retinadamage_combo best32. ;
	informat cataract_combo best32. ;
	informat kidneytrans_combo best32. ;
	informat dialysis_combo best32. ;
	informat pulmhbp_combo best32. ;
	informat pulmfibrosis_combo best32. ;
	informat coronary_combo best32. ;
	informat cc_cvd_2_combo best32. ;
	informat heartattack_combo best32. ;
	informat multheartattack_combo best32. ;
	informat pericarditis_combo best32. ;
	informat fingertiploss_combo best32. ;
	informat limbloss_combo best32. ;
	informat thrombosis_combo best32. ;
	informat seizuresdd_combo best32. ;
	informat seizuresmeds_combo best32. ;
	informat psychosis_combo best32. ;
	informat strokedd_combo best32. ;
	informat multiplestrokes_combo best32. ;
	informat paralysis_combo best32. ;
	informat paralysisstrokemi_combo best32. ;
	informat esophagussurgery_combo best32. ;
	informat stomachsurgery_combo best32. ;
	informat sintestinesurgery_combo best32. ;
	informat colonsurgery_combo best32. ;
	informat spleensurgery_combo best32. ;
	informat liversurgery_combo best32. ;
	informat pancreassurgery_combo best32. ;
	informat gallbladsurgery_combo best32. ;
	informat peritonitis_combo best32. ;
	informat otherabsurgery_combo best32. ;
	informat absurgeryother_combo $500. ;
	informat osteofracture_combo best32. ;
	informat bonenecrosis_combo best32. ;
	informat boneinfection_combo best32. ;
	informat skinulcers_combo best32. ;
	informat earlyperiodstop_combo best32. ;
	informat earlyhysterectomy_combo best32. ;
	informat menses_combo best32. ;
	informat pregnancy_status_combo best32. ;
	informat cc_diabetes_2_combo best32. ;
	informat cc_cancer_2_combo best32. ;
	informat cancertype_combo $500. ;
	informat cancer12_combo best32. ;
	informat flare_combo best32. ;
	informat weightloss_combo best32. ;
	informat fatigue_combo best32. ;
	informat fevers_combo best32. ;
	informat oralnasalsores_combo best32. ;
	informat rash_combo best32. ;
	informat otherrash_combo best32. ;
	informat blueskinspots_combo best32. ;
	informat sunsensitivity_combo best32. ;
	informat alopecia_combo best32. ;
	informat swolneckgland_combo best32. ;
	informat sob_combo best32. ;
	informat chestpainbreath_combo best32. ;
	informat raynauds_combo best32. ;
	informat stomachpain_combo best32. ;
	informat numbtingling_combo best32. ;
	informat seizuresda_combo best32. ;
	informat strokeda_combo best32. ;
	informat forgetfulness_combo best32. ;
	informat feelingdepress_combo best32. ;
	informat unusualheadache_combo best32. ;
	informat musclepain_combo best32. ;
	informat muscleweakness_combo best32. ;
	informat jointpain_combo best32. ;
	informat jointswelling_combo best32. ;
	informat diseaseactrate3mo_combo best32. ;
	informat bio_sex_birth_2_combo best32. ;
	informat current_city_combo $500. ;
	informat current_state_combo $500. ;
	informat weightloss_followup best32. ;
	informat fatigue_followup best32. ;
	informat fevers_followup best32. ;
	informat sores_followup best32. ;
	informat rash_followup best32. ;
	informat otherrash_followup best32. ;
	informat skinspots_followup best32. ;
	informat sunsick_followup best32. ;
	informat baldpatches_followup best32. ;
	informat swollenglands_followup best32. ;
	informat sob_followup best32. ;
	informat chestpain_followup best32. ;
	informat raynauds_followup best32. ;
	informat stomachpain_followup best32. ;
	informat numbtingling_followup best32. ;
	informat seizures_followup best32. ;
	informat stroke_followup best32. ;
	informat forgetfulness_followup best32. ;
	informat feelingdepress_followup best32. ;
	informat headaches_followup best32. ;
	informat musclepain_followup best32. ;
	informat muscleweakness_followup best32. ;
	informat jointpain_followup best32. ;
	informat jointswelling_followup best32. ;
	informat lupusactivity_followup best32. ;
	informat racetreated_followup best32. ;
	informat racenews_followup best32. ;
	informat raceexperience_followup best32. ;
	informat raceracism_followup best32. ;
	informat racepoliticians_followup best32. ;
	informat racepublic_followup best32. ;
	informat racemedia_followup best32. ;
	informat racethoughts_followup best32. ;
	informat racedistressed_followup best32. ;
	informat raceconcern_followup best32. ;
	informat racediscrimination_followup best32. ;
	informat raceguard_followup best32. ;
	informat racevigilant_followup best32. ;
	informat racefeared_followup best32. ;
	informat weightloss_followup_two best32. ;
	informat fatigue_followup_two best32. ;
	informat fevers_followup_two best32. ;
	informat sores_followup_two best32. ;
	informat rash_followup_two best32. ;
	informat otherrash_followup_two best32. ;
	informat skinspots_followup_two best32. ;
	informat sunsick_followup_two best32. ;
	informat baldpatches_followup_two best32. ;
	informat swollenglands_followup_two best32. ;
	informat sob_followup_two best32. ;
	informat chestpain_followup_two best32. ;
	informat raynauds_followup_two best32. ;
	informat stomachpain_followup_two best32. ;
	informat numbtingling_followup_two best32. ;
	informat seizures_followup_two best32. ;
	informat stroke_followup_two best32. ;
	informat forgetfulness_followup_two best32. ;
	informat feelingdepress_followup_two best32. ;
	informat headaches_followup_two best32. ;
	informat musclepain_followup_two best32. ;
	informat muscleweakness_followup_two best32. ;
	informat jointpain_followup_two best32. ;
	informat jointswelling_followup_two best32. ;
	informat lupusactivity_followup_two best32. ;
	informat racetreated_followup_two best32. ;
	informat racenews_followup_two best32. ;
	informat raceexperience_followup_two best32. ;
	informat raceracism_followup_two best32. ;
	informat racepoliticians_followup_two best32. ;
	informat racepublic_followup_two best32. ;
	informat racemedia_followup_two best32. ;
	informat racethoughts_followup_two best32. ;
	informat racedistressed_followup_two best32. ;
	informat raceconcern_followup_two best32. ;
	informat racediscrimination_f_v_0 best32. ;
	informat raceguard_followup_two best32. ;
	informat racevigilant_followup_two best32. ;
	informat racefeared_followup_two best32. ;
	informat date_complete_fu1 $500. ;
	informat date_complete_fu2 $500. ;
	informat baseline_date yymmdd10. ;
	informat leap_online_survey_complete best32. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format race_ethn_shr_cell___1 best12. ;
	format race_ethn_shr_cell___2 best12. ;
	format race_ethn_shr_cell___3 best12. ;
	format race_ethn_shr_cell___4 best12. ;
	format race_ethn_shr_cell___5 best12. ;
	format race_ethn_shr_cell___6 best12. ;
	format race_ethn_shr_cell___7 best12. ;
	format race_ethn_shr_cell___15 best12. ;
	format race_ethn_shr_cell___98 best12. ;
	format race_ethn_shr_cell___99 best12. ;
	format discrim_courtesy best12. ;
	format discrim_service best12. ;
	format discrim_smart best12. ;
	format discrim_afraid best12. ;
	format discrim_harassed_cell best12. ;
	format dob_mdy_combo yymmdd10. ;
	format baseline_complete_date $500. ;
	format diag_mon best12. ;
	format diag_yr $500. ;
	format edu_years_shr_combo best12. ;
	format family_income_shr_combo best12. ;
	format exp_school_cell best12. ;
	format exp_gettingwork_cell best12. ;
	format exp_work_cell best12. ;
	format exp_housing_cell best12. ;
	format exp_medicalcare_cell best12. ;
	format exp_service_cell best12. ;
	format exp_credit_cell best12. ;
	format exp_public_cell best12. ;
	format exp_legal_cell best12. ;
	format exp_court_cell best12. ;
	format hi_coverage_type best12. ;
	format self_reported_disability best12. ;
	format relat_stat_cell best12. ;
	format current_employment_self_cell best12. ;
	format vicarious1_cell best12. ;
	format vicarious2_cell best12. ;
	format vicarious3_cell best12. ;
	format vicarious4_cell best12. ;
	format vicarious5_cell best12. ;
	format vicarious6_cell best12. ;
	format vicarious7_cell best12. ;
	format vicarious8_cell best12. ;
	format vicarious9_cell best12. ;
	format vicarious10_cell best12. ;
	format vigilance1_cell best12. ;
	format vigilance2_cell best12. ;
	format vigilance3_cell best12. ;
	format vigilance4_cell best12. ;
	format retinadamage_combo best12. ;
	format cataract_combo best12. ;
	format kidneytrans_combo best12. ;
	format dialysis_combo best12. ;
	format pulmhbp_combo best12. ;
	format pulmfibrosis_combo best12. ;
	format coronary_combo best12. ;
	format cc_cvd_2_combo best12. ;
	format heartattack_combo best12. ;
	format multheartattack_combo best12. ;
	format pericarditis_combo best12. ;
	format fingertiploss_combo best12. ;
	format limbloss_combo best12. ;
	format thrombosis_combo best12. ;
	format seizuresdd_combo best12. ;
	format seizuresmeds_combo best12. ;
	format psychosis_combo best12. ;
	format strokedd_combo best12. ;
	format multiplestrokes_combo best12. ;
	format paralysis_combo best12. ;
	format paralysisstrokemi_combo best12. ;
	format esophagussurgery_combo best12. ;
	format stomachsurgery_combo best12. ;
	format sintestinesurgery_combo best12. ;
	format colonsurgery_combo best12. ;
	format spleensurgery_combo best12. ;
	format liversurgery_combo best12. ;
	format pancreassurgery_combo best12. ;
	format gallbladsurgery_combo best12. ;
	format peritonitis_combo best12. ;
	format otherabsurgery_combo best12. ;
	format absurgeryother_combo $500. ;
	format osteofracture_combo best12. ;
	format bonenecrosis_combo best12. ;
	format boneinfection_combo best12. ;
	format skinulcers_combo best12. ;
	format earlyperiodstop_combo best12. ;
	format earlyhysterectomy_combo best12. ;
	format menses_combo best12. ;
	format pregnancy_status_combo best12. ;
	format cc_diabetes_2_combo best12. ;
	format cc_cancer_2_combo best12. ;
	format cancertype_combo $500. ;
	format cancer12_combo best12. ;
	format flare_combo best12. ;
	format weightloss_combo best12. ;
	format fatigue_combo best12. ;
	format fevers_combo best12. ;
	format oralnasalsores_combo best12. ;
	format rash_combo best12. ;
	format otherrash_combo best12. ;
	format blueskinspots_combo best12. ;
	format sunsensitivity_combo best12. ;
	format alopecia_combo best12. ;
	format swolneckgland_combo best12. ;
	format sob_combo best12. ;
	format chestpainbreath_combo best12. ;
	format raynauds_combo best12. ;
	format stomachpain_combo best12. ;
	format numbtingling_combo best12. ;
	format seizuresda_combo best12. ;
	format strokeda_combo best12. ;
	format forgetfulness_combo best12. ;
	format feelingdepress_combo best12. ;
	format unusualheadache_combo best12. ;
	format musclepain_combo best12. ;
	format muscleweakness_combo best12. ;
	format jointpain_combo best12. ;
	format jointswelling_combo best12. ;
	format diseaseactrate3mo_combo best12. ;
	format bio_sex_birth_2_combo best12. ;
	format current_city_combo $500. ;
	format current_state_combo $500. ;
	format weightloss_followup best12. ;
	format fatigue_followup best12. ;
	format fevers_followup best12. ;
	format sores_followup best12. ;
	format rash_followup best12. ;
	format otherrash_followup best12. ;
	format skinspots_followup best12. ;
	format sunsick_followup best12. ;
	format baldpatches_followup best12. ;
	format swollenglands_followup best12. ;
	format sob_followup best12. ;
	format chestpain_followup best12. ;
	format raynauds_followup best12. ;
	format stomachpain_followup best12. ;
	format numbtingling_followup best12. ;
	format seizures_followup best12. ;
	format stroke_followup best12. ;
	format forgetfulness_followup best12. ;
	format feelingdepress_followup best12. ;
	format headaches_followup best12. ;
	format musclepain_followup best12. ;
	format muscleweakness_followup best12. ;
	format jointpain_followup best12. ;
	format jointswelling_followup best12. ;
	format lupusactivity_followup best12. ;
	format racetreated_followup best12. ;
	format racenews_followup best12. ;
	format raceexperience_followup best12. ;
	format raceracism_followup best12. ;
	format racepoliticians_followup best12. ;
	format racepublic_followup best12. ;
	format racemedia_followup best12. ;
	format racethoughts_followup best12. ;
	format racedistressed_followup best12. ;
	format raceconcern_followup best12. ;
	format racediscrimination_followup best12. ;
	format raceguard_followup best12. ;
	format racevigilant_followup best12. ;
	format racefeared_followup best12. ;
	format weightloss_followup_two best12. ;
	format fatigue_followup_two best12. ;
	format fevers_followup_two best12. ;
	format sores_followup_two best12. ;
	format rash_followup_two best12. ;
	format otherrash_followup_two best12. ;
	format skinspots_followup_two best12. ;
	format sunsick_followup_two best12. ;
	format baldpatches_followup_two best12. ;
	format swollenglands_followup_two best12. ;
	format sob_followup_two best12. ;
	format chestpain_followup_two best12. ;
	format raynauds_followup_two best12. ;
	format stomachpain_followup_two best12. ;
	format numbtingling_followup_two best12. ;
	format seizures_followup_two best12. ;
	format stroke_followup_two best12. ;
	format forgetfulness_followup_two best12. ;
	format feelingdepress_followup_two best12. ;
	format headaches_followup_two best12. ;
	format musclepain_followup_two best12. ;
	format muscleweakness_followup_two best12. ;
	format jointpain_followup_two best12. ;
	format jointswelling_followup_two best12. ;
	format lupusactivity_followup_two best12. ;
	format racetreated_followup_two best12. ;
	format racenews_followup_two best12. ;
	format raceexperience_followup_two best12. ;
	format raceracism_followup_two best12. ;
	format racepoliticians_followup_two best12. ;
	format racepublic_followup_two best12. ;
	format racemedia_followup_two best12. ;
	format racethoughts_followup_two best12. ;
	format racedistressed_followup_two best12. ;
	format raceconcern_followup_two best12. ;
	format racediscrimination_f_v_0 best12. ;
	format raceguard_followup_two best12. ;
	format racevigilant_followup_two best12. ;
	format racefeared_followup_two best12. ;
	format date_complete_fu1 $500. ;
	format date_complete_fu2 $500. ;
	format baseline_date yymmdd10. ;
	format leap_online_survey_complete best12. ;

input
	record_id $
	redcap_event_name $
	race_ethn_shr_cell___1
	race_ethn_shr_cell___2
	race_ethn_shr_cell___3
	race_ethn_shr_cell___4
	race_ethn_shr_cell___5
	race_ethn_shr_cell___6
	race_ethn_shr_cell___7
	race_ethn_shr_cell___15
	race_ethn_shr_cell___98
	race_ethn_shr_cell___99
	discrim_courtesy
	discrim_service
	discrim_smart
	discrim_afraid
	discrim_harassed_cell
	dob_mdy_combo
	baseline_complete_date $
	diag_mon
	diag_yr $
	edu_years_shr_combo
	family_income_shr_combo
	exp_school_cell
	exp_gettingwork_cell
	exp_work_cell
	exp_housing_cell
	exp_medicalcare_cell
	exp_service_cell
	exp_credit_cell
	exp_public_cell
	exp_legal_cell
	exp_court_cell
	hi_coverage_type
	self_reported_disability
	relat_stat_cell
	current_employment_self_cell
	vicarious1_cell
	vicarious2_cell
	vicarious3_cell
	vicarious4_cell
	vicarious5_cell
	vicarious6_cell
	vicarious7_cell
	vicarious8_cell
	vicarious9_cell
	vicarious10_cell
	vigilance1_cell
	vigilance2_cell
	vigilance3_cell
	vigilance4_cell
	retinadamage_combo
	cataract_combo
	kidneytrans_combo
	dialysis_combo
	pulmhbp_combo
	pulmfibrosis_combo
	coronary_combo
	cc_cvd_2_combo
	heartattack_combo
	multheartattack_combo
	pericarditis_combo
	fingertiploss_combo
	limbloss_combo
	thrombosis_combo
	seizuresdd_combo
	seizuresmeds_combo
	psychosis_combo
	strokedd_combo
	multiplestrokes_combo
	paralysis_combo
	paralysisstrokemi_combo
	esophagussurgery_combo
	stomachsurgery_combo
	sintestinesurgery_combo
	colonsurgery_combo
	spleensurgery_combo
	liversurgery_combo
	pancreassurgery_combo
	gallbladsurgery_combo
	peritonitis_combo
	otherabsurgery_combo
	absurgeryother_combo $
	osteofracture_combo
	bonenecrosis_combo
	boneinfection_combo
	skinulcers_combo
	earlyperiodstop_combo
	earlyhysterectomy_combo
	menses_combo
	pregnancy_status_combo
	cc_diabetes_2_combo
	cc_cancer_2_combo
	cancertype_combo $
	cancer12_combo
	flare_combo
	weightloss_combo
	fatigue_combo
	fevers_combo
	oralnasalsores_combo
	rash_combo
	otherrash_combo
	blueskinspots_combo
	sunsensitivity_combo
	alopecia_combo
	swolneckgland_combo
	sob_combo
	chestpainbreath_combo
	raynauds_combo
	stomachpain_combo
	numbtingling_combo
	seizuresda_combo
	strokeda_combo
	forgetfulness_combo
	feelingdepress_combo
	unusualheadache_combo
	musclepain_combo
	muscleweakness_combo
	jointpain_combo
	jointswelling_combo
	diseaseactrate3mo_combo
	bio_sex_birth_2_combo
	current_city_combo $
	current_state_combo $
	weightloss_followup
	fatigue_followup
	fevers_followup
	sores_followup
	rash_followup
	otherrash_followup
	skinspots_followup
	sunsick_followup
	baldpatches_followup
	swollenglands_followup
	sob_followup
	chestpain_followup
	raynauds_followup
	stomachpain_followup
	numbtingling_followup
	seizures_followup
	stroke_followup
	forgetfulness_followup
	feelingdepress_followup
	headaches_followup
	musclepain_followup
	muscleweakness_followup
	jointpain_followup
	jointswelling_followup
	lupusactivity_followup
	racetreated_followup
	racenews_followup
	raceexperience_followup
	raceracism_followup
	racepoliticians_followup
	racepublic_followup
	racemedia_followup
	racethoughts_followup
	racedistressed_followup
	raceconcern_followup
	racediscrimination_followup
	raceguard_followup
	racevigilant_followup
	racefeared_followup
	weightloss_followup_two
	fatigue_followup_two
	fevers_followup_two
	sores_followup_two
	rash_followup_two
	otherrash_followup_two
	skinspots_followup_two
	sunsick_followup_two
	baldpatches_followup_two
	swollenglands_followup_two
	sob_followup_two
	chestpain_followup_two
	raynauds_followup_two
	stomachpain_followup_two
	numbtingling_followup_two
	seizures_followup_two
	stroke_followup_two
	forgetfulness_followup_two
	feelingdepress_followup_two
	headaches_followup_two
	musclepain_followup_two
	muscleweakness_followup_two
	jointpain_followup_two
	jointswelling_followup_two
	lupusactivity_followup_two
	racetreated_followup_two
	racenews_followup_two
	raceexperience_followup_two
	raceracism_followup_two
	racepoliticians_followup_two
	racepublic_followup_two
	racemedia_followup_two
	racethoughts_followup_two
	racedistressed_followup_two
	raceconcern_followup_two
	racediscrimination_f_v_0
	raceguard_followup_two
	racevigilant_followup_two
	racefeared_followup_two
	date_complete_fu1 $
	date_complete_fu2 $
	baseline_date
	leap_online_survey_complete
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;

data redcap1;
	set redcap1;
	label record_id='Record ID';
	label redcap_event_name='Event Name';
	label race_ethn_shr_cell___1='What is your race?(CHECK ALL THAT APPLY)  (choice=American Indian or Alaska Native)';
	label race_ethn_shr_cell___2='What is your race?(CHECK ALL THAT APPLY)  (choice=Black or African American)';
	label race_ethn_shr_cell___3='What is your race?(CHECK ALL THAT APPLY)  (choice=Asian)';
	label race_ethn_shr_cell___4='What is your race?(CHECK ALL THAT APPLY)  (choice=Native Hawaiian or  Other Pacific Islander)';
	label race_ethn_shr_cell___5='What is your race?(CHECK ALL THAT APPLY)  (choice=White)';
	label race_ethn_shr_cell___6='What is your race?(CHECK ALL THAT APPLY)  (choice=Hispanic, Latino, or Spanish)';
	label race_ethn_shr_cell___7='What is your race?(CHECK ALL THAT APPLY)  (choice=Middle Eastern or North African)';
	label race_ethn_shr_cell___15='What is your race?(CHECK ALL THAT APPLY)  (choice=Some other race)';
	label race_ethn_shr_cell___98='What is your race?(CHECK ALL THAT APPLY)  (choice=Dont know)';
	label race_ethn_shr_cell___99='What is your race?(CHECK ALL THAT APPLY)  (choice=Prefer not to answer)';
	label discrim_courtesy='You are treated with less courtesy or respect than other people.';
	label discrim_service='You receive poorer service than other people at restaurants or stores';
	label discrim_smart='People act as if they think you are not smart.';
	label discrim_afraid='People act as if they are afraid of you.';
	label discrim_harassed_cell='You are threatened or harassed.';
	label dob_mdy_combo='What is your Date of Birth?';
	label baseline_complete_date='Baseline Completion Date [date_complete_baseline]';
	label diag_mon='Approximately when were you first diagnosed with lupus? (Month)';
	label diag_yr='(Year)';
	label edu_years_shr_combo='[NOTE: Advance Slide]  What is the highest level of education you have achieved outside or in the United States?  (Grades are roughly equivalent to years of school.)';
	label family_income_shr_combo='I''m going to show you a screen now.  [NOTE: Open LEAP FLASHCARDS]  Think about all of the sources of income for all family members in your household. This includes income from a job, self-employment, social security, retirement income, unemployment, child support, and alimony. Which letter shows how much your total family household income was from all of these sources in the past year BEFORE taxes? You only need to give me the letter.  [NOTE: If don''t know or prefer not to answer: This is a very important question. Your response will not be shared with anyone else and will be completely confidential. If you are unsure, please give your best guess.]';
	label exp_school_cell='At school?';
	label exp_gettingwork_cell='Getting hired or getting a job?';
	label exp_work_cell='At work?';
	label exp_housing_cell='Getting housing?';
	label exp_medicalcare_cell='Getting medical care?';
	label exp_service_cell='Getting service at a store or restaurant?';
	label exp_credit_cell='Getting credit, bank loans, or a mortgage?';
	label exp_public_cell='On the streets or in a public setting?';
	label exp_legal_cell='From the police?';
	label exp_court_cell='In court? ';
	label hi_coverage_type='What is the primary kind of health insurance or health care plan that you have now?';
	label self_reported_disability='Do you have a disability that interferes with your ability to carry out daily activities? Examples of daily activities include walking, climbing stairs, shopping, balancing a checkbook,  bathing or dressing.';
	label relat_stat_cell='Which of these describe your relationship status?';
	label current_employment_self_cell='Are you currently employed, working at a job or business, or have your own business?';
	label vicarious1_cell='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label vicarious2_cell='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label vicarious3_cell='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label vicarious4_cell='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label vicarious5_cell='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label vicarious6_cell='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label vicarious7_cell='Hear about or see racist things happen to people who are the same race as you posted on social media?';
	label vicarious8_cell='How much have you thought about these experiences or incidents?';
	label vicarious9_cell='How distressed have you felt when thinking about these experiences or incidents?';
	label vicarious10_cell='How concerned have you been about these experiences or incidents?';
	label vigilance1_cell='I avoid going to some places where I think I will be discriminated because of my race/ethnicity.';
	label vigilance2_cell='I feel that I have to be on guard in some situations because I anticipate that I will be discriminated against because of my race/ethnicity.';
	label vigilance3_cell='I feel that I have to be vigilant about the possibility I will be discriminated against because of my race/ethnicity';
	label vigilance4_cell='I fear that I will be discriminated against because of my race/ethnicity';
	label retinadamage_combo='Has an eye doctor ever told you that you had something wrong with the retina of your eye because of your lupus? (Note:  The retina is the back of your eye.)';
	label cataract_combo='Has a doctor ever told you that you had a cataract in your eye?';
	label kidneytrans_combo='Have you ever had a kidney transplant?';
	label dialysis_combo='Have you ever been on dialysis for 6 months or longer?';
	label pulmhbp_combo='Pulmonary hypertension, which is high blood pressure in the lungs? This is different from regular hypertension or high blood pressure. (Note:  Diagnosis starts with an echocardiogram, not a blood pressure cuff.)';
	label pulmfibrosis_combo='A serious condition of your lungs, such as fibrosis or interstitial lung disease? This does not include pneumonia, asthma, emphysema, or pleurisy. (Note:  also not COPD, or bronchitis.)';
	label coronary_combo='Have you ever had coronary or heart bypass surgery?';
	label cc_cvd_2_combo='Heart disease, including angina or congestive heart failure?';
	label heartattack_combo='Heart attack?';
	label multheartattack_combo='Did you ever have more than 1 heart attack at least 6 months apart?';
	label pericarditis_combo='An episode of pericarditis, which is an inflammation in the sack around the heart, that lasted 6 months or longer?';
	label fingertiploss_combo='Loss of flesh or thinning on the ends of your fingers?';
	label limbloss_combo='Loss of a finger, toe, or part of an arm or leg? (Note: not due to an accident)';
	label thrombosis_combo='Deep vein thrombosis -- DVT -- or a blood clot in your arm or leg?';
	label seizuresdd_combo='Seizures?';
	label seizuresmeds_combo='Did you ever have to take medication for seizures for at least 6 months?';
	label psychosis_combo='A psychotic episode?';
	label strokedd_combo='A stroke? (Note: This does not include TIA or transient ischemic attack.)';
	label multiplestrokes_combo='Did you ever have more than 1 stroke at least 6 months apart?';
	label paralysis_combo='Paralysis in your arms or legs that was so severe that you needed to be hospitalized? (Note:  This is transverse myelitis, a rare condition caused by inflammation of the spinal cord.)';
	label paralysisstrokemi_combo='Was this paralysis from a stroke or multiple sclerosis?';
	label esophagussurgery_combo='Esophagus?';
	label stomachsurgery_combo='Stomach?';
	label sintestinesurgery_combo='Small intestine?';
	label colonsurgery_combo='Large intestine/colon?';
	label spleensurgery_combo='Spleen?';
	label liversurgery_combo='Liver?';
	label pancreassurgery_combo='Pancreas?';
	label gallbladsurgery_combo='Gall bladder?';
	label peritonitis_combo='Has a doctor ever told you that you had peritonitis, which is an inflammation of the lining of your abdomen?';
	label otherabsurgery_combo='Other abdominal surgery (e.g. kidney, appendix, uterus or reproductive organs)';
	label absurgeryother_combo='Please specify the other abdominal surgery you received';
	label osteofracture_combo='Osteoporosis, or thin bones, that resulted in a fracture?';
	label bonenecrosis_combo='Avascular necrosis? This is when part of a bone dies.';
	label boneinfection_combo='Osteomyelitis? This is an infection in a bone.';
	label skinulcers_combo='A skin ulcer, which is an open sore on your skin, that lasted 6 months or longer? (Note: this is not an oral ulcer or a ''cold sore''.)';
	label earlyperiodstop_combo='Did your menstrual periods stop before you turned 40?';
	label earlyhysterectomy_combo='Was this due to a hysterectomy?';
	label menses_combo='Do you still get your menstrual periods?';
	label pregnancy_status_combo='Are you currently pregnant or nursing?';
	label cc_diabetes_2_combo='Diabetes?';
	label cc_cancer_2_combo='Cancer?';
	label cancertype_combo='What type of cancer? ';
	label cancer12_combo='Was this cancer diagnosed within the last 12 months? ';
	label flare_combo='In the past 3 months have you had a lupus flare? (A lupus flare is when your lupus gets worse.) ';
	label weightloss_combo='Weight loss without trying';
	label fatigue_combo='Fatigue';
	label fevers_combo='Fevers (>101?F, 38.5?C) taken by thermometer';
	label oralnasalsores_combo='Sores in mouth or nose';
	label rash_combo='Rash on cheeks (shaped like a butterfly)';
	label otherrash_combo='Other rash';
	label blueskinspots_combo=' Dark blue or purple spots you could feel on your skin';
	label sunsensitivity_combo='Rash or feeling sick after going out in the sun';
	label alopecia_combo='Bald patches on scalp, or clumps of hair on pillow';
	label swolneckgland_combo='Swollen glands (nodes) in neck';
	label sob_combo='Shortness of breath';
	label chestpainbreath_combo='Chest pain with a deep breath';
	label raynauds_combo='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_combo='Stomach or belly pain';
	label numbtingling_combo='Persistent numbness or tingling in your arms or legs';
	label seizuresda_combo='Seizures';
	label strokeda_combo='Stroke';
	label forgetfulness_combo='Forgetfulness';
	label feelingdepress_combo='Feeling depressed';
	label unusualheadache_combo='Unusual headaches';
	label musclepain_combo='Muscle pain';
	label muscleweakness_combo='Muscle weakness';
	label jointpain_combo='Pain or stiffness in joints';
	label jointswelling_combo='Swelling in joints';
	label diseaseactrate3mo_combo='[NOTE: Advance Slide]  Please rate the disease activity of your lupus in the past 3 months on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label bio_sex_birth_2_combo='What was your sex assigned at birth on your birth certificate?';
	label current_city_combo='Which City do you live in?';
	label current_state_combo='Which State or Territory do you live in?';
	label weightloss_followup='Weight loss without trying';
	label fatigue_followup='Fatigue';
	label fevers_followup='Fevers (>101F, 38.5C) taken by thermometer';
	label sores_followup='Sores in mouth or nose';
	label rash_followup='Rash on cheeks (shaped like a butterfly)';
	label otherrash_followup='Other rash';
	label skinspots_followup='Dark blue or purple spots you could feel on your skin';
	label sunsick_followup='Rash or feeling sick after going out in the sun';
	label baldpatches_followup='Bald patches on scalp, or clumps of hair on pillow';
	label swollenglands_followup='Swollen glands (nodes) in neck';
	label sob_followup='Shortness of breath';
	label chestpain_followup='Chest pain with a deep breath';
	label raynauds_followup='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_followup='Stomach or belly pain';
	label numbtingling_followup='Persistent numbness or tingling in your arms or legs';
	label seizures_followup='Seizures';
	label stroke_followup='Stroke';
	label forgetfulness_followup='Forgetfulness';
	label feelingdepress_followup='Feeling depressed';
	label headaches_followup='Unusual headaches';
	label musclepain_followup='Muscle pain';
	label muscleweakness_followup='Muscle weakness';
	label jointpain_followup='Pain or stiffness in joints';
	label jointswelling_followup='Swelling in joints';
	label lupusactivity_followup='Please rate the disease activity of your lupus in the past month on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label racetreated_followup='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label racenews_followup='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label raceexperience_followup='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label raceracism_followup='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label racepoliticians_followup='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label racepublic_followup='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label racemedia_followup='Hear about or see racist things about people who are the same race as you posted on social media?';
	label racethoughts_followup='How much do you think about these experiences or incidents?';
	label racedistressed_followup='How distressed have you felt when thinking about these experiences or incidents?';
	label raceconcern_followup='How concerned have you been about these experiences or instances?';
	label racediscrimination_followup='I avoided going to some places where I thought I would be discriminated because of my race/ethnicity.';
	label raceguard_followup='I felt that I had to be on guard in some situations because I anticipated that I would be discriminated against because of my race/ethnicity.';
	label racevigilant_followup='I felt that I had to be vigilant about the possibility I would be discriminated against because of my race/ethnicity.';
	label racefeared_followup='I feared that I would be discriminated against because of my race/ethnicity';
	label weightloss_followup_two='Weight loss without trying';
	label fatigue_followup_two='Fatigue';
	label fevers_followup_two='Fevers (>101F, 38.5C) taken by thermometer';
	label sores_followup_two='Sores in mouth or nose';
	label rash_followup_two='Rash on cheeks (shaped like a butterfly)';
	label otherrash_followup_two='Other rash';
	label skinspots_followup_two='Dark blue or purple spots you could feel on your skin';
	label sunsick_followup_two='Rash or feeling sick after going out in the sun';
	label baldpatches_followup_two='Bald patches on scalp, or clumps of hair on pillow';
	label swollenglands_followup_two='Swollen glands (nodes) in neck';
	label sob_followup_two='Shortness of breath';
	label chestpain_followup_two='Chest pain with a deep breath';
	label raynauds_followup_two='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_followup_two='Stomach or belly pain';
	label numbtingling_followup_two='Persistent numbness or tingling in your arms or legs';
	label seizures_followup_two='Seizures';
	label stroke_followup_two='Stroke';
	label forgetfulness_followup_two='Forgetfulness';
	label feelingdepress_followup_two='Feeling depressed';
	label headaches_followup_two='Unusual headaches';
	label musclepain_followup_two='Muscle pain';
	label muscleweakness_followup_two='Muscle weakness';
	label jointpain_followup_two='Pain or stiffness in joints';
	label jointswelling_followup_two='Swelling in joints';
	label lupusactivity_followup_two='Please rate the disease activity of your lupus in the past month on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label racetreated_followup_two='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label racenews_followup_two='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label raceexperience_followup_two='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label raceracism_followup_two='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label racepoliticians_followup_two='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label racepublic_followup_two='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label racemedia_followup_two='Hear about or see racist things about people who are the same race as you posted on social media?';
	label racethoughts_followup_two='How much do you think about these experiences or incidents?';
	label racedistressed_followup_two='How distressed have you felt when thinking about these experiences or incidents?';
	label raceconcern_followup_two='How concerned have you been about these experiences or instances?';
	label racediscrimination_f_v_0='I avoided going to some places where I thought I would be discriminated because of my race/ethnicity.';
	label raceguard_followup_two='I felt that I had to be on guard in some situations because I anticipated that I would be discriminated against because of my race/ethnicity.';
	label racevigilant_followup_two='I felt that I had to be vigilant about the possibility I would be discriminated against because of my race/ethnicity.';
	label racefeared_followup_two='I feared that I will be discriminated against because of my race/ethnicity';
	label date_complete_fu1='Date Completed';
	label date_complete_fu2='Date Completed';
	label baseline_date='[Research Staff Enter Today''s Date]';
	label leap_online_survey_complete='Complete?';
	format redcap_event_name redcap_event_name_.;
	format race_ethn_shr_cell___1 race_ethn_shr_cell___1_.;
	format race_ethn_shr_cell___2 race_ethn_shr_cell___2_.;
	format race_ethn_shr_cell___3 race_ethn_shr_cell___3_.;
	format race_ethn_shr_cell___4 race_ethn_shr_cell___4_.;
	format race_ethn_shr_cell___5 race_ethn_shr_cell___5_.;
	format race_ethn_shr_cell___6 race_ethn_shr_cell___6_.;
	format race_ethn_shr_cell___7 race_ethn_shr_cell___7_.;
	format race_ethn_shr_cell___15 race_ethn_shr_cell___15_.;
	format race_ethn_shr_cell___98 race_ethn_shr_cell___98_.;
	format race_ethn_shr_cell___99 race_ethn_shr_cell___99_.;
	format discrim_courtesy discrim_courtesy_.;
	format discrim_service discrim_service_.;
	format discrim_smart discrim_smart_.;
	format discrim_afraid discrim_afraid_.;
	format discrim_harassed_cell discrim_harassed_cell_.;
	format diag_mon diag_mon_.;
	format edu_years_shr_combo edu_years_shr_combo_.;
	format family_income_shr_combo family_income_shr_combo_.;
	format exp_school_cell exp_school_cell_.;
	format exp_gettingwork_cell exp_gettingwork_cell_.;
	format exp_work_cell exp_work_cell_.;
	format exp_housing_cell exp_housing_cell_.;
	format exp_medicalcare_cell exp_medicalcare_cell_.;
	format exp_service_cell exp_service_cell_.;
	format exp_credit_cell exp_credit_cell_.;
	format exp_public_cell exp_public_cell_.;
	format exp_legal_cell exp_legal_cell_.;
	format exp_court_cell exp_court_cell_.;
	format hi_coverage_type hi_coverage_type_.;
	format self_reported_disability self_reported_disability_.;
	format relat_stat_cell relat_stat_cell_.;
	format current_employment_self_cell current_employment_self_cell_.;
	format vicarious1_cell vicarious1_cell_.;
	format vicarious2_cell vicarious2_cell_.;
	format vicarious3_cell vicarious3_cell_.;
	format vicarious4_cell vicarious4_cell_.;
	format vicarious5_cell vicarious5_cell_.;
	format vicarious6_cell vicarious6_cell_.;
	format vicarious7_cell vicarious7_cell_.;
	format vicarious8_cell vicarious8_cell_.;
	format vicarious9_cell vicarious9_cell_.;
	format vicarious10_cell vicarious10_cell_.;
	format vigilance1_cell vigilance1_cell_.;
	format vigilance2_cell vigilance2_cell_.;
	format vigilance3_cell vigilance3_cell_.;
	format vigilance4_cell vigilance4_cell_.;
	format retinadamage_combo retinadamage_combo_.;
	format cataract_combo cataract_combo_.;
	format kidneytrans_combo kidneytrans_combo_.;
	format dialysis_combo dialysis_combo_.;
	format pulmhbp_combo pulmhbp_combo_.;
	format pulmfibrosis_combo pulmfibrosis_combo_.;
	format coronary_combo coronary_combo_.;
	format cc_cvd_2_combo cc_cvd_2_combo_.;
	format heartattack_combo heartattack_combo_.;
	format multheartattack_combo multheartattack_combo_.;
	format pericarditis_combo pericarditis_combo_.;
	format fingertiploss_combo fingertiploss_combo_.;
	format limbloss_combo limbloss_combo_.;
	format thrombosis_combo thrombosis_combo_.;
	format seizuresdd_combo seizuresdd_combo_.;
	format seizuresmeds_combo seizuresmeds_combo_.;
	format psychosis_combo psychosis_combo_.;
	format strokedd_combo strokedd_combo_.;
	format multiplestrokes_combo multiplestrokes_combo_.;
	format paralysis_combo paralysis_combo_.;
	format paralysisstrokemi_combo paralysisstrokemi_combo_.;
	format esophagussurgery_combo esophagussurgery_combo_.;
	format stomachsurgery_combo stomachsurgery_combo_.;
	format sintestinesurgery_combo sintestinesurgery_combo_.;
	format colonsurgery_combo colonsurgery_combo_.;
	format spleensurgery_combo spleensurgery_combo_.;
	format liversurgery_combo liversurgery_combo_.;
	format pancreassurgery_combo pancreassurgery_combo_.;
	format gallbladsurgery_combo gallbladsurgery_combo_.;
	format peritonitis_combo peritonitis_combo_.;
	format otherabsurgery_combo otherabsurgery_combo_.;
	format osteofracture_combo osteofracture_combo_.;
	format bonenecrosis_combo bonenecrosis_combo_.;
	format boneinfection_combo boneinfection_combo_.;
	format skinulcers_combo skinulcers_combo_.;
	format earlyperiodstop_combo earlyperiodstop_combo_.;
	format earlyhysterectomy_combo earlyhysterectomy_combo_.;
	format menses_combo menses_combo_.;
	format pregnancy_status_combo pregnancy_status_combo_.;
	format cc_diabetes_2_combo cc_diabetes_2_combo_.;
	format cc_cancer_2_combo cc_cancer_2_combo_.;
	format cancer12_combo cancer12_combo_.;
	format flare_combo flare_combo_.;
	format weightloss_combo weightloss_combo_.;
	format fatigue_combo fatigue_combo_.;
	format fevers_combo fevers_combo_.;
	format oralnasalsores_combo oralnasalsores_combo_.;
	format rash_combo rash_combo_.;
	format otherrash_combo otherrash_combo_.;
	format blueskinspots_combo blueskinspots_combo_.;
	format sunsensitivity_combo sunsensitivity_combo_.;
	format alopecia_combo alopecia_combo_.;
	format swolneckgland_combo swolneckgland_combo_.;
	format sob_combo sob_combo_.;
	format chestpainbreath_combo chestpainbreath_combo_.;
	format raynauds_combo raynauds_combo_.;
	format stomachpain_combo stomachpain_combo_.;
	format numbtingling_combo numbtingling_combo_.;
	format seizuresda_combo seizuresda_combo_.;
	format strokeda_combo strokeda_combo_.;
	format forgetfulness_combo forgetfulness_combo_.;
	format feelingdepress_combo feelingdepress_combo_.;
	format unusualheadache_combo unusualheadache_combo_.;
	format musclepain_combo musclepain_combo_.;
	format muscleweakness_combo muscleweakness_combo_.;
	format jointpain_combo jointpain_combo_.;
	format jointswelling_combo jointswelling_combo_.;
	format diseaseactrate3mo_combo diseaseactrate3mo_combo_.;
	format bio_sex_birth_2_combo bio_sex_birth_2_combo_.;
	format current_state_combo current_state_combo_.;
	format weightloss_followup weightloss_followup_.;
	format fatigue_followup fatigue_followup_.;
	format fevers_followup fevers_followup_.;
	format sores_followup sores_followup_.;
	format rash_followup rash_followup_.;
	format otherrash_followup otherrash_followup_.;
	format skinspots_followup skinspots_followup_.;
	format sunsick_followup sunsick_followup_.;
	format baldpatches_followup baldpatches_followup_.;
	format swollenglands_followup swollenglands_followup_.;
	format sob_followup sob_followup_.;
	format chestpain_followup chestpain_followup_.;
	format raynauds_followup raynauds_followup_.;
	format stomachpain_followup stomachpain_followup_.;
	format numbtingling_followup numbtingling_followup_.;
	format seizures_followup seizures_followup_.;
	format stroke_followup stroke_followup_.;
	format forgetfulness_followup forgetfulness_followup_.;
	format feelingdepress_followup feelingdepress_followup_.;
	format headaches_followup headaches_followup_.;
	format musclepain_followup musclepain_followup_.;
	format muscleweakness_followup muscleweakness_followup_.;
	format jointpain_followup jointpain_followup_.;
	format jointswelling_followup jointswelling_followup_.;
	format lupusactivity_followup lupusactivity_followup_.;
	format racetreated_followup racetreated_followup_.;
	format racenews_followup racenews_followup_.;
	format raceexperience_followup raceexperience_followup_.;
	format raceracism_followup raceracism_followup_.;
	format racepoliticians_followup racepoliticians_followup_.;
	format racepublic_followup racepublic_followup_.;
	format racemedia_followup racemedia_followup_.;
	format racethoughts_followup racethoughts_followup_.;
	format racedistressed_followup racedistressed_followup_.;
	format raceconcern_followup raceconcern_followup_.;
	format racediscrimination_followup racediscrimination_followup_.;
	format raceguard_followup raceguard_followup_.;
	format racevigilant_followup racevigilant_followup_.;
	format racefeared_followup racefeared_followup_.;
	format weightloss_followup_two weightloss_followup_two.;
	format fatigue_followup_two fatigue_followup_two.;
	format fevers_followup_two fevers_followup_two.;
	format sores_followup_two sores_followup_two.;
	format rash_followup_two rash_followup_two.;
	format otherrash_followup_two otherrash_followup_two.;
	format skinspots_followup_two skinspots_followup_two.;
	format sunsick_followup_two sunsick_followup_two.;
	format baldpatches_followup_two baldpatches_followup_two.;
	format swollenglands_followup_two swollenglands_followup_two.;
	format sob_followup_two sob_followup_two.;
	format chestpain_followup_two chestpain_followup_two.;
	format raynauds_followup_two raynauds_followup_two.;
	format stomachpain_followup_two stomachpain_followup_two.;
	format numbtingling_followup_two numbtingling_followup_two.;
	format seizures_followup_two seizures_followup_two.;
	format stroke_followup_two stroke_followup_two.;
	format forgetfulness_followup_two forgetfulness_followup_two.;
	format feelingdepress_followup_two feelingdepress_followup_two.;
	format headaches_followup_two headaches_followup_two.;
	format musclepain_followup_two musclepain_followup_two.;
	format muscleweakness_followup_two muscleweakness_followup_two.;
	format jointpain_followup_two jointpain_followup_two.;
	format jointswelling_followup_two jointswelling_followup_two.;
	format lupusactivity_followup_two lupusactivity_followup_two.;
	format racetreated_followup_two racetreated_followup_two.;
	format racenews_followup_two racenews_followup_two.;
	format raceexperience_followup_two raceexperience_followup_two.;
	format raceracism_followup_two raceracism_followup_two.;
	format racepoliticians_followup_two racepoliticians_followup_two.;
	format racepublic_followup_two racepublic_followup_two.;
	format racemedia_followup_two racemedia_followup_two.;
	format racethoughts_followup_two racethoughts_followup_two.;
	format racedistressed_followup_two racedistressed_followup_two.;
	format raceconcern_followup_two raceconcern_followup_two.;
	format racediscrimination_f_v_0 racediscrimination_f_v_0_.;
	format raceguard_followup_two raceguard_followup_two.;
	format racevigilant_followup_two racevigilant_followup_two.;
	format racefeared_followup_two racefeared_followup_two.;
	format leap_online_survey_complete leap_online_survey_complete_.;
run;

proc contents data = redcap1 varnum;
run;

%let csv_file = "C:\Users\leapdata2.csv";
OPTIONS nofmterr;


proc format;
	value $redcap_event_name_ 'baseline_arm_1'='Baseline' '30_day_followup_arm_1'='30 day follow-up' 
		'60_day_followup_arm_1'='60 day follow-up';
	value race_ethn_shr_cell___1_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___2_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___3_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___4_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___5_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___6_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___7_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___15_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___98_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___99_ 0='Unchecked' 1='Checked';
	value discrim_courtesy_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_service_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_smart_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_afraid_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_harassed_cell_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t Know' 
		99='Prefer not to answer';
	value diag_mon_ 1='January' 2='February' 
		3='March' 4='April' 
		5='May' 6='June' 
		7='July' 8='August' 
		9='September' 10='October' 
		11='November' 12='December' 
		13='Don''t remember';
	value edu_years_shr_combo_ 0='A: No school' 1='B: 5th grade or less' 
		2='C: 6th to 8th grade' 3='D: Some HS, no diploma' 
		4='E: HS graduate (or equivalent)' 5='F: Some college (no degree)' 
		6='G: Associate''s degree (including occupational and technical)' 7='H: Bachelor''s degree (BA, BS, AB)' 
		8='I: Master''s degree (MA, MS, MSW)' 9='J: Professional degree (MD, JD)' 
		10='K: Doctorate degree (PhD, EdD)' 98='Don''t know' 
		99='Prefer not to answer';
	value family_income_shr_combo_ 1='A: $ 0 - $ 4,999' 2='B: $ 5,000 - $ 9,999' 
		3='C: $ 10,000 - $ 14,999' 4='D: $ 15,000 - $ 19,999' 
		5='E: $ 20,000 - $ 24,999' 6='F: $ 25,000 - $ 29,999' 
		7='G: $ 30,000 - $ 34,999' 8='H: $ 35,000 - $ 39,999' 
		9='I: $ 40,000 - $ 44,999' 10='J: $ 45,000 - $ 49,999' 
		11='K: $ 50,000 - $ 54,999' 12='L: $ 55,000 - $ 59,999' 
		13='M: $ 60,000 - $ 64,999' 14='N: $ 65,000 - $ 69,999' 
		15='O: $ 70,000 - $ 74,999' 16='P: $ 75,000 - $ 79,999' 
		17='Q: $ 80,000 - $ 84,999' 18='R: $ 85,000 - $ 89,999' 
		19='S: $ 90,000 - $ 94,999' 20='T: $ 95,000 - $ 99,999' 
		21='U: $ 100,000 - $124,999' 22='V: $125,000 - $149,999' 
		23='W: $150,000 - $199,999' 24='X: $200,000-$249,000' 
		25='Y: $250,000 or more' 99='Prefer not to answer';
	value exp_school_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_gettingwork_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_work_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_housing_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_medicalcare_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_service_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_credit_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_public_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_legal_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_court_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value hi_coverage_type_ 0='I do NOT have health insurance' 1='Private (purchased directly or through Employment)' 
		2='Public (Medicare, Medicaid, Tricare)' 98='Don''t know' 
		99='Prefer not to answer';
	value self_reported_disability_ 1='Yes' 0='No' 
		98='Don''t know' 99='Prefer not to answer';
	value relat_stat_cell_ 1='Legally married, in a marriage-like relationship, or have a partner' 2='In a romantic relationship' 
		3='Separated or divorced' 4='Widowed' 
		5='Single' 98='Don''t know' 
		99='Prefer not to answer';
	value current_employment_self_cell_ 1='Yes' 0='No' 
		98='Don''t know' 99='Prefer not to answer';
	value vicarious1_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious2_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious3_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious4_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious5_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious6_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious7_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious8_cell_ 1='Never' 2='Rarely' 
		3='Sometimes' 4='Very often' 
		5='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious9_cell_ 1='Not at all distressed' 2='A little distressed' 
		3='Somewhat distressed' 4='Distressed a lot' 
		5='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious10_cell_ 1='Not at all concerned' 2='A little concerned' 
		3='Somewhat concerned' 4='Concerned a lot' 
		5='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance1_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance2_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance3_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance4_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value retinadamage_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cataract_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value kidneytrans_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value dialysis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pulmhbp_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pulmfibrosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value coronary_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_cvd_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value heartattack_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value multheartattack_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pericarditis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value fingertiploss_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value limbloss_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value thrombosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value seizuresdd_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value seizuresmeds_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value psychosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value strokedd_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value multiplestrokes_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value paralysis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value paralysisstrokemi_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value esophagussurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value stomachsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value sintestinesurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value colonsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value spleensurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value liversurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pancreassurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value gallbladsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value peritonitis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value otherabsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value osteofracture_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value bonenecrosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value boneinfection_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value skinulcers_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value earlyperiodstop_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value earlyhysterectomy_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value menses_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pregnancy_status_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_diabetes_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_cancer_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cancer12_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value flare_combo_ 0='No Flare' 1='Mild Flare' 
		2='Moderate Flare' 3='Severe Flare' 
		4='Don''t Remember' 99='Prefer not to answer';
	value weightloss_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value fatigue_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value fevers_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value oralnasalsores_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value rash_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value otherrash_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value blueskinspots_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value sunsensitivity_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value alopecia_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value swolneckgland_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value sob_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value chestpainbreath_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value raynauds_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value stomachpain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value numbtingling_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value seizuresda_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value strokeda_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value forgetfulness_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value feelingdepress_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value unusualheadache_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value musclepain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value muscleweakness_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value jointpain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value jointswelling_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value diseaseactrate3mo_combo_ 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 88='Don''t Know' 
		99='Prefer not to answer';
	value bio_sex_birth_2_combo_ 1='Female' 0='Male' 
		3='Intersex' 96='None of these describe me' 
		99='Prefer not to answer';
	value $current_state_combo_ 'AL'='Alabama' 'AK'='Alaska' 
		'AZ'='Arizona' 'AR'='Arkansas' 
		'CA'='California' 'CO'='Colorado' 
		'CT'='Connecticut' 'DE'='Delaware' 
		'DC'='District of Columbia(DC)' 'FL'='Florida' 
		'GA'='Georgia' 'HI'='Hawaii' 
		'ID'='Idaho' 'IL'='Illinois' 
		'IN'='Indiana' 'IA'='Iowa' 
		'KS'='Kansas' 'KY'='Kentucky' 
		'LA'='Louisiana' 'ME'='Maine' 
		'MD'='Maryland' 'MA'='Massachusetts' 
		'MI'='Michigan' 'MN'='Minnesota' 
		'MS'='Mississippi' 'MO'='Missouri' 
		'MT'='Montana' 'NE'='Nebraska' 
		'NV'='Nevada' 'NH'='New Hampshire' 
		'NJ'='New Jersey' 'NM'='New Mexico' 
		'NY'='New York' 'NC'='North Carolina' 
		'ND'='North Dakota' 'OH'='Ohio' 
		'OK'='Oklahoma' 'OR'='Oregon' 
		'PA'='Pennsylvania' 'RI'='Rhode Island' 
		'SC'='South Carolina' 'SD'='South Dakota' 
		'TN'='Tennessee' 'TX'='Texas' 
		'UT'='Utah' 'VT'='Vermont' 
		'VA'='Virginia' 'WA'='Washington' 
		'WV'='West Virginia' 'WI'='Wisconsin' 
		'WY'='Wyoming' 'AMS'='American Somoa' 
		'GUAM'='GUAM' 'NMI'='Northern Mariana Islands' 
		'PR'='Puerto Rico' 'USVI'='US Virgin Islands';
	value weightloss_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fatigue_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fevers_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sores_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value rash_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value otherrash_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value skinspots_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sunsick_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value baldpatches_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value swollenglands_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sob_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value chestpain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value raynauds_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stomachpain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value numbtingling_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value seizures_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stroke_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value forgetfulness_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value feelingdepress_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value headaches_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value musclepain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value muscleweakness_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointpain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointswelling_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value lupusactivity_followup_ 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 98='Don''t know' 
		99='Prefer not to answer';
	value racetreated_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racenews_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceexperience_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceracism_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepoliticians_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepublic_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		98='Don''t know' 99='Prefer not to answer';
	value racemedia_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racethoughts_followup_ 0='Never' 1='Rarely' 
		2='Sometimes' 3='Very Often' 
		4='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value racedistressed_followup_ 0='Not at all distressed' 1='A little distressed' 
		2='Somewhat distressed' 3='Distressed a lot' 
		4='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value raceconcern_followup_ 0='Not at all concerned' 1='A little concerned' 
		2='Somewhat concerned' 3='Concerned a lot' 
		4='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value racediscrimination_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceguard_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racevigilant_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racefeared_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value weightloss_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fatigue_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fevers_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sores_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value rash_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value otherrash_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value skinspots_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sunsick_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value baldpatches_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value swollenglands_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sob_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value chestpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value raynauds_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stomachpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value numbtingling_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value seizures_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stroke_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value forgetfulness_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value feelingdepress_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value headaches_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value musclepain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value muscleweakness_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointswelling_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value lupusactivity_followup_two 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 98='Don''t know' 
		99='Prefer not to answer';
	value racetreated_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racenews_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceexperience_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceracism_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepoliticians_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepublic_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		98='Don''t know' 99='Prefer not to answer';
	value racemedia_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racethoughts_followup_two 0='Never' 1='Rarely' 
		2='Sometimes' 3='Very Often' 
		4='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value racedistressed_followup_two 0='Not at all distressed' 1='A little distressed' 
		2='Somewhat distressed' 3='Distressed a lot' 
		4='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value raceconcern_followup_two 0='Not at all concerned' 1='A little concerned' 
		2='Somewhat concerned' 3='Concerned a lot' 
		4='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value racediscrimination_f_v_0_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceguard_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racevigilant_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racefeared_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';

	run;

data work.redcap2; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat race_ethn_shr_cell___1 best32. ;
	informat race_ethn_shr_cell___2 best32. ;
	informat race_ethn_shr_cell___3 best32. ;
	informat race_ethn_shr_cell___4 best32. ;
	informat race_ethn_shr_cell___5 best32. ;
	informat race_ethn_shr_cell___6 best32. ;
	informat race_ethn_shr_cell___7 best32. ;
	informat race_ethn_shr_cell___15 best32. ;
	informat race_ethn_shr_cell___98 best32. ;
	informat race_ethn_shr_cell___99 best32. ;
	informat discrim_courtesy best32. ;
	informat discrim_service best32. ;
	informat discrim_smart best32. ;
	informat discrim_afraid best32. ;
	informat discrim_harassed_cell best32. ;
	informat dob_mdy_combo yymmdd10. ;
	informat baseline_complete_date $500. ;
	informat diag_mon best32. ;
	informat diag_yr $500. ;
	informat edu_years_shr_combo best32. ;
	informat family_income_shr_combo best32. ;
	informat exp_school_cell best32. ;
	informat exp_gettingwork_cell best32. ;
	informat exp_work_cell best32. ;
	informat exp_housing_cell best32. ;
	informat exp_medicalcare_cell best32. ;
	informat exp_service_cell best32. ;
	informat exp_credit_cell best32. ;
	informat exp_public_cell best32. ;
	informat exp_legal_cell best32. ;
	informat exp_court_cell best32. ;
	informat hi_coverage_type best32. ;
	informat self_reported_disability best32. ;
	informat relat_stat_cell best32. ;
	informat current_employment_self_cell best32. ;
	informat vicarious1_cell best32. ;
	informat vicarious2_cell best32. ;
	informat vicarious3_cell best32. ;
	informat vicarious4_cell best32. ;
	informat vicarious5_cell best32. ;
	informat vicarious6_cell best32. ;
	informat vicarious7_cell best32. ;
	informat vicarious8_cell best32. ;
	informat vicarious9_cell best32. ;
	informat vicarious10_cell best32. ;
	informat vigilance1_cell best32. ;
	informat vigilance2_cell best32. ;
	informat vigilance3_cell best32. ;
	informat vigilance4_cell best32. ;
	informat retinadamage_combo best32. ;
	informat cataract_combo best32. ;
	informat kidneytrans_combo best32. ;
	informat dialysis_combo best32. ;
	informat pulmhbp_combo best32. ;
	informat pulmfibrosis_combo best32. ;
	informat coronary_combo best32. ;
	informat cc_cvd_2_combo best32. ;
	informat heartattack_combo best32. ;
	informat multheartattack_combo best32. ;
	informat pericarditis_combo best32. ;
	informat fingertiploss_combo best32. ;
	informat limbloss_combo best32. ;
	informat thrombosis_combo best32. ;
	informat seizuresdd_combo best32. ;
	informat seizuresmeds_combo best32. ;
	informat psychosis_combo best32. ;
	informat strokedd_combo best32. ;
	informat multiplestrokes_combo best32. ;
	informat paralysis_combo best32. ;
	informat paralysisstrokemi_combo best32. ;
	informat esophagussurgery_combo best32. ;
	informat stomachsurgery_combo best32. ;
	informat sintestinesurgery_combo best32. ;
	informat colonsurgery_combo best32. ;
	informat spleensurgery_combo best32. ;
	informat liversurgery_combo best32. ;
	informat pancreassurgery_combo best32. ;
	informat gallbladsurgery_combo best32. ;
	informat peritonitis_combo best32. ;
	informat otherabsurgery_combo best32. ;
	informat absurgeryother_combo $500. ;
	informat osteofracture_combo best32. ;
	informat bonenecrosis_combo best32. ;
	informat boneinfection_combo best32. ;
	informat skinulcers_combo best32. ;
	informat earlyperiodstop_combo best32. ;
	informat earlyhysterectomy_combo best32. ;
	informat menses_combo best32. ;
	informat pregnancy_status_combo best32. ;
	informat cc_diabetes_2_combo best32. ;
	informat cc_cancer_2_combo best32. ;
	informat cancertype_combo $500. ;
	informat cancer12_combo best32. ;
	informat flare_combo best32. ;
	informat weightloss_combo best32. ;
	informat fatigue_combo best32. ;
	informat fevers_combo best32. ;
	informat oralnasalsores_combo best32. ;
	informat rash_combo best32. ;
	informat otherrash_combo best32. ;
	informat blueskinspots_combo best32. ;
	informat sunsensitivity_combo best32. ;
	informat alopecia_combo best32. ;
	informat swolneckgland_combo best32. ;
	informat sob_combo best32. ;
	informat chestpainbreath_combo best32. ;
	informat raynauds_combo best32. ;
	informat stomachpain_combo best32. ;
	informat numbtingling_combo best32. ;
	informat seizuresda_combo best32. ;
	informat strokeda_combo best32. ;
	informat forgetfulness_combo best32. ;
	informat feelingdepress_combo best32. ;
	informat unusualheadache_combo best32. ;
	informat musclepain_combo best32. ;
	informat muscleweakness_combo best32. ;
	informat jointpain_combo best32. ;
	informat jointswelling_combo best32. ;
	informat diseaseactrate3mo_combo best32. ;
	informat bio_sex_birth_2_combo best32. ;
	informat current_city_combo $500. ;
	informat current_state_combo $500. ;
	informat weightloss_followup best32. ;
	informat fatigue_followup best32. ;
	informat fevers_followup best32. ;
	informat sores_followup best32. ;
	informat rash_followup best32. ;
	informat otherrash_followup best32. ;
	informat skinspots_followup best32. ;
	informat sunsick_followup best32. ;
	informat baldpatches_followup best32. ;
	informat swollenglands_followup best32. ;
	informat sob_followup best32. ;
	informat chestpain_followup best32. ;
	informat raynauds_followup best32. ;
	informat stomachpain_followup best32. ;
	informat numbtingling_followup best32. ;
	informat seizures_followup best32. ;
	informat stroke_followup best32. ;
	informat forgetfulness_followup best32. ;
	informat feelingdepress_followup best32. ;
	informat headaches_followup best32. ;
	informat musclepain_followup best32. ;
	informat muscleweakness_followup best32. ;
	informat jointpain_followup best32. ;
	informat jointswelling_followup best32. ;
	informat lupusactivity_followup best32. ;
	informat racetreated_followup best32. ;
	informat racenews_followup best32. ;
	informat raceexperience_followup best32. ;
	informat raceracism_followup best32. ;
	informat racepoliticians_followup best32. ;
	informat racepublic_followup best32. ;
	informat racemedia_followup best32. ;
	informat racethoughts_followup best32. ;
	informat racedistressed_followup best32. ;
	informat raceconcern_followup best32. ;
	informat racediscrimination_followup best32. ;
	informat raceguard_followup best32. ;
	informat racevigilant_followup best32. ;
	informat racefeared_followup best32. ;
	informat weightloss_followup_two best32. ;
	informat fatigue_followup_two best32. ;
	informat fevers_followup_two best32. ;
	informat sores_followup_two best32. ;
	informat rash_followup_two best32. ;
	informat otherrash_followup_two best32. ;
	informat skinspots_followup_two best32. ;
	informat sunsick_followup_two best32. ;
	informat baldpatches_followup_two best32. ;
	informat swollenglands_followup_two best32. ;
	informat sob_followup_two best32. ;
	informat chestpain_followup_two best32. ;
	informat raynauds_followup_two best32. ;
	informat stomachpain_followup_two best32. ;
	informat numbtingling_followup_two best32. ;
	informat seizures_followup_two best32. ;
	informat stroke_followup_two best32. ;
	informat forgetfulness_followup_two best32. ;
	informat feelingdepress_followup_two best32. ;
	informat headaches_followup_two best32. ;
	informat musclepain_followup_two best32. ;
	informat muscleweakness_followup_two best32. ;
	informat jointpain_followup_two best32. ;
	informat jointswelling_followup_two best32. ;
	informat lupusactivity_followup_two best32. ;
	informat racetreated_followup_two best32. ;
	informat racenews_followup_two best32. ;
	informat raceexperience_followup_two best32. ;
	informat raceracism_followup_two best32. ;
	informat racepoliticians_followup_two best32. ;
	informat racepublic_followup_two best32. ;
	informat racemedia_followup_two best32. ;
	informat racethoughts_followup_two best32. ;
	informat racedistressed_followup_two best32. ;
	informat raceconcern_followup_two best32. ;
	informat racediscrimination_f_v_0 best32. ;
	informat raceguard_followup_two best32. ;
	informat racevigilant_followup_two best32. ;
	informat racefeared_followup_two best32. ;
	informat date_complete_fu1 $500. ;
	informat date_complete_fu2 $500. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format race_ethn_shr_cell___1 best12. ;
	format race_ethn_shr_cell___2 best12. ;
	format race_ethn_shr_cell___3 best12. ;
	format race_ethn_shr_cell___4 best12. ;
	format race_ethn_shr_cell___5 best12. ;
	format race_ethn_shr_cell___6 best12. ;
	format race_ethn_shr_cell___7 best12. ;
	format race_ethn_shr_cell___15 best12. ;
	format race_ethn_shr_cell___98 best12. ;
	format race_ethn_shr_cell___99 best12. ;
	format discrim_courtesy best12. ;
	format discrim_service best12. ;
	format discrim_smart best12. ;
	format discrim_afraid best12. ;
	format discrim_harassed_cell best12. ;
	format dob_mdy_combo yymmdd10. ;
	format baseline_complete_date $500. ;
	format diag_mon best12. ;
	format diag_yr $500. ;
	format edu_years_shr_combo best12. ;
	format family_income_shr_combo best12. ;
	format exp_school_cell best12. ;
	format exp_gettingwork_cell best12. ;
	format exp_work_cell best12. ;
	format exp_housing_cell best12. ;
	format exp_medicalcare_cell best12. ;
	format exp_service_cell best12. ;
	format exp_credit_cell best12. ;
	format exp_public_cell best12. ;
	format exp_legal_cell best12. ;
	format exp_court_cell best12. ;
	format hi_coverage_type best12. ;
	format self_reported_disability best12. ;
	format relat_stat_cell best12. ;
	format current_employment_self_cell best12. ;
	format vicarious1_cell best12. ;
	format vicarious2_cell best12. ;
	format vicarious3_cell best12. ;
	format vicarious4_cell best12. ;
	format vicarious5_cell best12. ;
	format vicarious6_cell best12. ;
	format vicarious7_cell best12. ;
	format vicarious8_cell best12. ;
	format vicarious9_cell best12. ;
	format vicarious10_cell best12. ;
	format vigilance1_cell best12. ;
	format vigilance2_cell best12. ;
	format vigilance3_cell best12. ;
	format vigilance4_cell best12. ;
	format retinadamage_combo best12. ;
	format cataract_combo best12. ;
	format kidneytrans_combo best12. ;
	format dialysis_combo best12. ;
	format pulmhbp_combo best12. ;
	format pulmfibrosis_combo best12. ;
	format coronary_combo best12. ;
	format cc_cvd_2_combo best12. ;
	format heartattack_combo best12. ;
	format multheartattack_combo best12. ;
	format pericarditis_combo best12. ;
	format fingertiploss_combo best12. ;
	format limbloss_combo best12. ;
	format thrombosis_combo best12. ;
	format seizuresdd_combo best12. ;
	format seizuresmeds_combo best12. ;
	format psychosis_combo best12. ;
	format strokedd_combo best12. ;
	format multiplestrokes_combo best12. ;
	format paralysis_combo best12. ;
	format paralysisstrokemi_combo best12. ;
	format esophagussurgery_combo best12. ;
	format stomachsurgery_combo best12. ;
	format sintestinesurgery_combo best12. ;
	format colonsurgery_combo best12. ;
	format spleensurgery_combo best12. ;
	format liversurgery_combo best12. ;
	format pancreassurgery_combo best12. ;
	format gallbladsurgery_combo best12. ;
	format peritonitis_combo best12. ;
	format otherabsurgery_combo best12. ;
	format absurgeryother_combo $500. ;
	format osteofracture_combo best12. ;
	format bonenecrosis_combo best12. ;
	format boneinfection_combo best12. ;
	format skinulcers_combo best12. ;
	format earlyperiodstop_combo best12. ;
	format earlyhysterectomy_combo best12. ;
	format menses_combo best12. ;
	format pregnancy_status_combo best12. ;
	format cc_diabetes_2_combo best12. ;
	format cc_cancer_2_combo best12. ;
	format cancertype_combo $500. ;
	format cancer12_combo best12. ;
	format flare_combo best12. ;
	format weightloss_combo best12. ;
	format fatigue_combo best12. ;
	format fevers_combo best12. ;
	format oralnasalsores_combo best12. ;
	format rash_combo best12. ;
	format otherrash_combo best12. ;
	format blueskinspots_combo best12. ;
	format sunsensitivity_combo best12. ;
	format alopecia_combo best12. ;
	format swolneckgland_combo best12. ;
	format sob_combo best12. ;
	format chestpainbreath_combo best12. ;
	format raynauds_combo best12. ;
	format stomachpain_combo best12. ;
	format numbtingling_combo best12. ;
	format seizuresda_combo best12. ;
	format strokeda_combo best12. ;
	format forgetfulness_combo best12. ;
	format feelingdepress_combo best12. ;
	format unusualheadache_combo best12. ;
	format musclepain_combo best12. ;
	format muscleweakness_combo best12. ;
	format jointpain_combo best12. ;
	format jointswelling_combo best12. ;
	format diseaseactrate3mo_combo best12. ;
	format bio_sex_birth_2_combo best12. ;
	format current_city_combo $500. ;
	format current_state_combo $500. ;
	format weightloss_followup best12. ;
	format fatigue_followup best12. ;
	format fevers_followup best12. ;
	format sores_followup best12. ;
	format rash_followup best12. ;
	format otherrash_followup best12. ;
	format skinspots_followup best12. ;
	format sunsick_followup best12. ;
	format baldpatches_followup best12. ;
	format swollenglands_followup best12. ;
	format sob_followup best12. ;
	format chestpain_followup best12. ;
	format raynauds_followup best12. ;
	format stomachpain_followup best12. ;
	format numbtingling_followup best12. ;
	format seizures_followup best12. ;
	format stroke_followup best12. ;
	format forgetfulness_followup best12. ;
	format feelingdepress_followup best12. ;
	format headaches_followup best12. ;
	format musclepain_followup best12. ;
	format muscleweakness_followup best12. ;
	format jointpain_followup best12. ;
	format jointswelling_followup best12. ;
	format lupusactivity_followup best12. ;
	format racetreated_followup best12. ;
	format racenews_followup best12. ;
	format raceexperience_followup best12. ;
	format raceracism_followup best12. ;
	format racepoliticians_followup best12. ;
	format racepublic_followup best12. ;
	format racemedia_followup best12. ;
	format racethoughts_followup best12. ;
	format racedistressed_followup best12. ;
	format raceconcern_followup best12. ;
	format racediscrimination_followup best12. ;
	format raceguard_followup best12. ;
	format racevigilant_followup best12. ;
	format racefeared_followup best12. ;
	format weightloss_followup_two best12. ;
	format fatigue_followup_two best12. ;
	format fevers_followup_two best12. ;
	format sores_followup_two best12. ;
	format rash_followup_two best12. ;
	format otherrash_followup_two best12. ;
	format skinspots_followup_two best12. ;
	format sunsick_followup_two best12. ;
	format baldpatches_followup_two best12. ;
	format swollenglands_followup_two best12. ;
	format sob_followup_two best12. ;
	format chestpain_followup_two best12. ;
	format raynauds_followup_two best12. ;
	format stomachpain_followup_two best12. ;
	format numbtingling_followup_two best12. ;
	format seizures_followup_two best12. ;
	format stroke_followup_two best12. ;
	format forgetfulness_followup_two best12. ;
	format feelingdepress_followup_two best12. ;
	format headaches_followup_two best12. ;
	format musclepain_followup_two best12. ;
	format muscleweakness_followup_two best12. ;
	format jointpain_followup_two best12. ;
	format jointswelling_followup_two best12. ;
	format lupusactivity_followup_two best12. ;
	format racetreated_followup_two best12. ;
	format racenews_followup_two best12. ;
	format raceexperience_followup_two best12. ;
	format raceracism_followup_two best12. ;
	format racepoliticians_followup_two best12. ;
	format racepublic_followup_two best12. ;
	format racemedia_followup_two best12. ;
	format racethoughts_followup_two best12. ;
	format racedistressed_followup_two best12. ;
	format raceconcern_followup_two best12. ;
	format racediscrimination_f_v_0 best12. ;
	format raceguard_followup_two best12. ;
	format racevigilant_followup_two best12. ;
	format racefeared_followup_two best12. ;
	format date_complete_fu1 $500. ;
	format date_complete_fu2 $500. ;

input
	record_id $
	redcap_event_name $
	race_ethn_shr_cell___1
	race_ethn_shr_cell___2
	race_ethn_shr_cell___3
	race_ethn_shr_cell___4
	race_ethn_shr_cell___5
	race_ethn_shr_cell___6
	race_ethn_shr_cell___7
	race_ethn_shr_cell___15
	race_ethn_shr_cell___98
	race_ethn_shr_cell___99
	discrim_courtesy
	discrim_service
	discrim_smart
	discrim_afraid
	discrim_harassed_cell
	dob_mdy_combo
	baseline_complete_date $
	diag_mon
	diag_yr $
	edu_years_shr_combo
	family_income_shr_combo
	exp_school_cell
	exp_gettingwork_cell
	exp_work_cell
	exp_housing_cell
	exp_medicalcare_cell
	exp_service_cell
	exp_credit_cell
	exp_public_cell
	exp_legal_cell
	exp_court_cell
	hi_coverage_type
	self_reported_disability
	relat_stat_cell
	current_employment_self_cell
	vicarious1_cell
	vicarious2_cell
	vicarious3_cell
	vicarious4_cell
	vicarious5_cell
	vicarious6_cell
	vicarious7_cell
	vicarious8_cell
	vicarious9_cell
	vicarious10_cell
	vigilance1_cell
	vigilance2_cell
	vigilance3_cell
	vigilance4_cell
	retinadamage_combo
	cataract_combo
	kidneytrans_combo
	dialysis_combo
	pulmhbp_combo
	pulmfibrosis_combo
	coronary_combo
	cc_cvd_2_combo
	heartattack_combo
	multheartattack_combo
	pericarditis_combo
	fingertiploss_combo
	limbloss_combo
	thrombosis_combo
	seizuresdd_combo
	seizuresmeds_combo
	psychosis_combo
	strokedd_combo
	multiplestrokes_combo
	paralysis_combo
	paralysisstrokemi_combo
	esophagussurgery_combo
	stomachsurgery_combo
	sintestinesurgery_combo
	colonsurgery_combo
	spleensurgery_combo
	liversurgery_combo
	pancreassurgery_combo
	gallbladsurgery_combo
	peritonitis_combo
	otherabsurgery_combo
	absurgeryother_combo $
	osteofracture_combo
	bonenecrosis_combo
	boneinfection_combo
	skinulcers_combo
	earlyperiodstop_combo
	earlyhysterectomy_combo
	menses_combo
	pregnancy_status_combo
	cc_diabetes_2_combo
	cc_cancer_2_combo
	cancertype_combo $
	cancer12_combo
	flare_combo
	weightloss_combo
	fatigue_combo
	fevers_combo
	oralnasalsores_combo
	rash_combo
	otherrash_combo
	blueskinspots_combo
	sunsensitivity_combo
	alopecia_combo
	swolneckgland_combo
	sob_combo
	chestpainbreath_combo
	raynauds_combo
	stomachpain_combo
	numbtingling_combo
	seizuresda_combo
	strokeda_combo
	forgetfulness_combo
	feelingdepress_combo
	unusualheadache_combo
	musclepain_combo
	muscleweakness_combo
	jointpain_combo
	jointswelling_combo
	diseaseactrate3mo_combo
	bio_sex_birth_2_combo
	current_city_combo $
	current_state_combo $
	weightloss_followup
	fatigue_followup
	fevers_followup
	sores_followup
	rash_followup
	otherrash_followup
	skinspots_followup
	sunsick_followup
	baldpatches_followup
	swollenglands_followup
	sob_followup
	chestpain_followup
	raynauds_followup
	stomachpain_followup
	numbtingling_followup
	seizures_followup
	stroke_followup
	forgetfulness_followup
	feelingdepress_followup
	headaches_followup
	musclepain_followup
	muscleweakness_followup
	jointpain_followup
	jointswelling_followup
	lupusactivity_followup
	racetreated_followup
	racenews_followup
	raceexperience_followup
	raceracism_followup
	racepoliticians_followup
	racepublic_followup
	racemedia_followup
	racethoughts_followup
	racedistressed_followup
	raceconcern_followup
	racediscrimination_followup
	raceguard_followup
	racevigilant_followup
	racefeared_followup
	weightloss_followup_two
	fatigue_followup_two
	fevers_followup_two
	sores_followup_two
	rash_followup_two
	otherrash_followup_two
	skinspots_followup_two
	sunsick_followup_two
	baldpatches_followup_two
	swollenglands_followup_two
	sob_followup_two
	chestpain_followup_two
	raynauds_followup_two
	stomachpain_followup_two
	numbtingling_followup_two
	seizures_followup_two
	stroke_followup_two
	forgetfulness_followup_two
	feelingdepress_followup_two
	headaches_followup_two
	musclepain_followup_two
	muscleweakness_followup_two
	jointpain_followup_two
	jointswelling_followup_two
	lupusactivity_followup_two
	racetreated_followup_two
	racenews_followup_two
	raceexperience_followup_two
	raceracism_followup_two
	racepoliticians_followup_two
	racepublic_followup_two
	racemedia_followup_two
	racethoughts_followup_two
	racedistressed_followup_two
	raceconcern_followup_two
	racediscrimination_f_v_0
	raceguard_followup_two
	racevigilant_followup_two
	racefeared_followup_two
	date_complete_fu1 $
	date_complete_fu2 $
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;

data redcap2;
	set redcap2;
	label record_id='Record ID';
	label redcap_event_name='Event Name';
	label race_ethn_shr_cell___1='What is your race?(CHECK ALL THAT APPLY)  (choice=American Indian or Alaska Native)';
	label race_ethn_shr_cell___2='What is your race?(CHECK ALL THAT APPLY)  (choice=Black or African American)';
	label race_ethn_shr_cell___3='What is your race?(CHECK ALL THAT APPLY)  (choice=Asian)';
	label race_ethn_shr_cell___4='What is your race?(CHECK ALL THAT APPLY)  (choice=Native Hawaiian or  Other Pacific Islander)';
	label race_ethn_shr_cell___5='What is your race?(CHECK ALL THAT APPLY)  (choice=White)';
	label race_ethn_shr_cell___6='What is your race?(CHECK ALL THAT APPLY)  (choice=Hispanic, Latino, or Spanish)';
	label race_ethn_shr_cell___7='What is your race?(CHECK ALL THAT APPLY)  (choice=Middle Eastern or North African)';
	label race_ethn_shr_cell___15='What is your race?(CHECK ALL THAT APPLY)  (choice=Some other race)';
	label race_ethn_shr_cell___98='What is your race?(CHECK ALL THAT APPLY)  (choice=Dont know)';
	label race_ethn_shr_cell___99='What is your race?(CHECK ALL THAT APPLY)  (choice=Prefer not to answer)';
	label discrim_courtesy='You are treated with less courtesy or respect than other people.';
	label discrim_service='You receive poorer service than other people at restaurants or stores';
	label discrim_smart='People act as if they think you are not smart.';
	label discrim_afraid='People act as if they are afraid of you.';
	label discrim_harassed_cell='You are threatened or harassed.';
	label dob_mdy_combo='What is your Date of Birth?';
	label baseline_complete_date='Baseline Completion Date [date_complete_baseline]';
	label diag_mon='Approximately when were you first diagnosed with lupus? (Month)';
	label diag_yr='(Year)';
	label edu_years_shr_combo='[NOTE: Advance Slide]  What is the highest level of education you have achieved outside or in the United States?  (Grades are roughly equivalent to years of school.)';
	label family_income_shr_combo='I''m going to show you a screen now.  [NOTE: Open LEAP FLASHCARDS]  Think about all of the sources of income for all family members in your household. This includes income from a job, self-employment, social security, retirement income, unemployment, child support, and alimony. Which letter shows how much your total family household income was from all of these sources in the past year BEFORE taxes? You only need to give me the letter.  [NOTE: If don''t know or prefer not to answer: This is a very important question. Your response will not be shared with anyone else and will be completely confidential. If you are unsure, please give your best guess.]';
	label exp_school_cell='At school?';
	label exp_gettingwork_cell='Getting hired or getting a job?';
	label exp_work_cell='At work?';
	label exp_housing_cell='Getting housing?';
	label exp_medicalcare_cell='Getting medical care?';
	label exp_service_cell='Getting service at a store or restaurant?';
	label exp_credit_cell='Getting credit, bank loans, or a mortgage?';
	label exp_public_cell='On the streets or in a public setting?';
	label exp_legal_cell='From the police?';
	label exp_court_cell='In court? ';
	label hi_coverage_type='What is the primary kind of health insurance or health care plan that you have now?';
	label self_reported_disability='Do you have a disability that interferes with your ability to carry out daily activities? Examples of daily activities include walking, climbing stairs, shopping, balancing a checkbook,  bathing or dressing.';
	label relat_stat_cell='Which of these describe your relationship status?';
	label current_employment_self_cell='Are you currently employed, working at a job or business, or have your own business?';
	label vicarious1_cell='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label vicarious2_cell='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label vicarious3_cell='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label vicarious4_cell='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label vicarious5_cell='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label vicarious6_cell='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label vicarious7_cell='Hear about or see racist things happen to people who are the same race as you posted on social media?';
	label vicarious8_cell='How much have you thought about these experiences or incidents?';
	label vicarious9_cell='How distressed have you felt when thinking about these experiences or incidents?';
	label vicarious10_cell='How concerned have you been about these experiences or incidents?';
	label vigilance1_cell='I avoid going to some places where I think I will be discriminated because of my race/ethnicity.';
	label vigilance2_cell='I feel that I have to be on guard in some situations because I anticipate that I will be discriminated against because of my race/ethnicity.';
	label vigilance3_cell='I feel that I have to be vigilant about the possibility I will be discriminated against because of my race/ethnicity';
	label vigilance4_cell='I fear that I will be discriminated against because of my race/ethnicity';
	label retinadamage_combo='Has an eye doctor ever told you that you had something wrong with the retina of your eye because of your lupus? (Note:  The retina is the back of your eye.)';
	label cataract_combo='Has a doctor ever told you that you had a cataract in your eye?';
	label kidneytrans_combo='Have you ever had a kidney transplant?';
	label dialysis_combo='Have you ever been on dialysis for 6 months or longer?';
	label pulmhbp_combo='Pulmonary hypertension, which is high blood pressure in the lungs? This is different from regular hypertension or high blood pressure. (Note:  Diagnosis starts with an echocardiogram, not a blood pressure cuff.)';
	label pulmfibrosis_combo='A serious condition of your lungs, such as fibrosis or interstitial lung disease? This does not include pneumonia, asthma, emphysema, or pleurisy. (Note:  also not COPD, or bronchitis.)';
	label coronary_combo='Have you ever had coronary or heart bypass surgery?';
	label cc_cvd_2_combo='Heart disease, including angina or congestive heart failure?';
	label heartattack_combo='Heart attack?';
	label multheartattack_combo='Did you ever have more than 1 heart attack at least 6 months apart?';
	label pericarditis_combo='An episode of pericarditis, which is an inflammation in the sack around the heart, that lasted 6 months or longer?';
	label fingertiploss_combo='Loss of flesh or thinning on the ends of your fingers?';
	label limbloss_combo='Loss of a finger, toe, or part of an arm or leg? (Note: not due to an accident)';
	label thrombosis_combo='Deep vein thrombosis -- DVT -- or a blood clot in your arm or leg?';
	label seizuresdd_combo='Seizures?';
	label seizuresmeds_combo='Did you ever have to take medication for seizures for at least 6 months?';
	label psychosis_combo='A psychotic episode?';
	label strokedd_combo='A stroke? (Note: This does not include TIA or transient ischemic attack.)';
	label multiplestrokes_combo='Did you ever have more than 1 stroke at least 6 months apart?';
	label paralysis_combo='Paralysis in your arms or legs that was so severe that you needed to be hospitalized? (Note:  This is transverse myelitis, a rare condition caused by inflammation of the spinal cord.)';
	label paralysisstrokemi_combo='Was this paralysis from a stroke or multiple sclerosis?';
	label esophagussurgery_combo='Esophagus?';
	label stomachsurgery_combo='Stomach?';
	label sintestinesurgery_combo='Small intestine?';
	label colonsurgery_combo='Large intestine/colon?';
	label spleensurgery_combo='Spleen?';
	label liversurgery_combo='Liver?';
	label pancreassurgery_combo='Pancreas?';
	label gallbladsurgery_combo='Gall bladder?';
	label peritonitis_combo='Has a doctor ever told you that you had peritonitis, which is an inflammation of the lining of your abdomen?';
	label otherabsurgery_combo='Other abdominal surgery (e.g. kidney, appendix, uterus or reproductive organs)';
	label absurgeryother_combo='Please specify the other abdominal surgery you received';
	label osteofracture_combo='Osteoporosis, or thin bones, that resulted in a fracture?';
	label bonenecrosis_combo='Avascular necrosis? This is when part of a bone dies.';
	label boneinfection_combo='Osteomyelitis? This is an infection in a bone.';
	label skinulcers_combo='A skin ulcer, which is an open sore on your skin, that lasted 6 months or longer? (Note: this is not an oral ulcer or a ''cold sore''.)';
	label earlyperiodstop_combo='Did your menstrual periods stop before you turned 40?';
	label earlyhysterectomy_combo='Was this due to a hysterectomy?';
	label menses_combo='Do you still get your menstrual periods?';
	label pregnancy_status_combo='Are you currently pregnant or nursing?';
	label cc_diabetes_2_combo='Diabetes?';
	label cc_cancer_2_combo='Cancer?';
	label cancertype_combo='What type of cancer? ';
	label cancer12_combo='Was this cancer diagnosed within the last 12 months? ';
	label flare_combo='In the past 3 months have you had a lupus flare? (A lupus flare is when your lupus gets worse.) ';
	label weightloss_combo='Weight loss without trying';
	label fatigue_combo='Fatigue';
	label fevers_combo='Fevers (>101?F, 38.5?C) taken by thermometer';
	label oralnasalsores_combo='Sores in mouth or nose';
	label rash_combo='Rash on cheeks (shaped like a butterfly)';
	label otherrash_combo='Other rash';
	label blueskinspots_combo=' Dark blue or purple spots you could feel on your skin';
	label sunsensitivity_combo='Rash or feeling sick after going out in the sun';
	label alopecia_combo='Bald patches on scalp, or clumps of hair on pillow';
	label swolneckgland_combo='Swollen glands (nodes) in neck';
	label sob_combo='Shortness of breath';
	label chestpainbreath_combo='Chest pain with a deep breath';
	label raynauds_combo='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_combo='Stomach or belly pain';
	label numbtingling_combo='Persistent numbness or tingling in your arms or legs';
	label seizuresda_combo='Seizures';
	label strokeda_combo='Stroke';
	label forgetfulness_combo='Forgetfulness';
	label feelingdepress_combo='Feeling depressed';
	label unusualheadache_combo='Unusual headaches';
	label musclepain_combo='Muscle pain';
	label muscleweakness_combo='Muscle weakness';
	label jointpain_combo='Pain or stiffness in joints';
	label jointswelling_combo='Swelling in joints';
	label diseaseactrate3mo_combo='[NOTE: Advance Slide]  Please rate the disease activity of your lupus in the past 3 months on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label bio_sex_birth_2_combo='What was your sex assigned at birth on your birth certificate?';
	label current_city_combo='Which City do you live in?';
	label current_state_combo='Which State or Territory do you live in?';
	label weightloss_followup='Weight loss without trying';
	label fatigue_followup='Fatigue';
	label fevers_followup='Fevers (>101F, 38.5C) taken by thermometer';
	label sores_followup='Sores in mouth or nose';
	label rash_followup='Rash on cheeks (shaped like a butterfly)';
	label otherrash_followup='Other rash';
	label skinspots_followup='Dark blue or purple spots you could feel on your skin';
	label sunsick_followup='Rash or feeling sick after going out in the sun';
	label baldpatches_followup='Bald patches on scalp, or clumps of hair on pillow';
	label swollenglands_followup='Swollen glands (nodes) in neck';
	label sob_followup='Shortness of breath';
	label chestpain_followup='Chest pain with a deep breath';
	label raynauds_followup='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_followup='Stomach or belly pain';
	label numbtingling_followup='Persistent numbness or tingling in your arms or legs';
	label seizures_followup='Seizures';
	label stroke_followup='Stroke';
	label forgetfulness_followup='Forgetfulness';
	label feelingdepress_followup='Feeling depressed';
	label headaches_followup='Unusual headaches';
	label musclepain_followup='Muscle pain';
	label muscleweakness_followup='Muscle weakness';
	label jointpain_followup='Pain or stiffness in joints';
	label jointswelling_followup='Swelling in joints';
	label lupusactivity_followup='Please rate the disease activity of your lupus in the past month on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label racetreated_followup='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label racenews_followup='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label raceexperience_followup='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label raceracism_followup='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label racepoliticians_followup='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label racepublic_followup='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label racemedia_followup='Hear about or see racist things about people who are the same race as you posted on social media?';
	label racethoughts_followup='How much do you think about these experiences or incidents?';
	label racedistressed_followup='How distressed have you felt when thinking about these experiences or incidents?';
	label raceconcern_followup='How concerned have you been about these experiences or instances?';
	label racediscrimination_followup='I avoided going to some places where I thought I would be discriminated because of my race/ethnicity.';
	label raceguard_followup='I felt that I had to be on guard in some situations because I anticipated that I would be discriminated against because of my race/ethnicity.';
	label racevigilant_followup='I felt that I had to be vigilant about the possibility I would be discriminated against because of my race/ethnicity.';
	label racefeared_followup='I feared that I would be discriminated against because of my race/ethnicity';
	label weightloss_followup_two='Weight loss without trying';
	label fatigue_followup_two='Fatigue';
	label fevers_followup_two='Fevers (>101F, 38.5C) taken by thermometer';
	label sores_followup_two='Sores in mouth or nose';
	label rash_followup_two='Rash on cheeks (shaped like a butterfly)';
	label otherrash_followup_two='Other rash';
	label skinspots_followup_two='Dark blue or purple spots you could feel on your skin';
	label sunsick_followup_two='Rash or feeling sick after going out in the sun';
	label baldpatches_followup_two='Bald patches on scalp, or clumps of hair on pillow';
	label swollenglands_followup_two='Swollen glands (nodes) in neck';
	label sob_followup_two='Shortness of breath';
	label chestpain_followup_two='Chest pain with a deep breath';
	label raynauds_followup_two='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_followup_two='Stomach or belly pain';
	label numbtingling_followup_two='Persistent numbness or tingling in your arms or legs';
	label seizures_followup_two='Seizures';
	label stroke_followup_two='Stroke';
	label forgetfulness_followup_two='Forgetfulness';
	label feelingdepress_followup_two='Feeling depressed';
	label headaches_followup_two='Unusual headaches';
	label musclepain_followup_two='Muscle pain';
	label muscleweakness_followup_two='Muscle weakness';
	label jointpain_followup_two='Pain or stiffness in joints';
	label jointswelling_followup_two='Swelling in joints';
	label lupusactivity_followup_two='Please rate the disease activity of your lupus in the past month on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label racetreated_followup_two='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label racenews_followup_two='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label raceexperience_followup_two='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label raceracism_followup_two='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label racepoliticians_followup_two='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label racepublic_followup_two='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label racemedia_followup_two='Hear about or see racist things about people who are the same race as you posted on social media?';
	label racethoughts_followup_two='How much do you think about these experiences or incidents?';
	label racedistressed_followup_two='How distressed have you felt when thinking about these experiences or incidents?';
	label raceconcern_followup_two='How concerned have you been about these experiences or instances?';
	label racediscrimination_f_v_0='I avoided going to some places where I thought I would be discriminated because of my race/ethnicity.';
	label raceguard_followup_two='I felt that I had to be on guard in some situations because I anticipated that I would be discriminated against because of my race/ethnicity.';
	label racevigilant_followup_two='I felt that I had to be vigilant about the possibility I would be discriminated against because of my race/ethnicity.';
	label racefeared_followup_two='I feared that I will be discriminated against because of my race/ethnicity';
	label date_complete_fu1='Date Completed';
	label date_complete_fu2='Date Completed';
	format redcap_event_name redcap_event_name_.;
	format race_ethn_shr_cell___1 race_ethn_shr_cell___1_.;
	format race_ethn_shr_cell___2 race_ethn_shr_cell___2_.;
	format race_ethn_shr_cell___3 race_ethn_shr_cell___3_.;
	format race_ethn_shr_cell___4 race_ethn_shr_cell___4_.;
	format race_ethn_shr_cell___5 race_ethn_shr_cell___5_.;
	format race_ethn_shr_cell___6 race_ethn_shr_cell___6_.;
	format race_ethn_shr_cell___7 race_ethn_shr_cell___7_.;
	format race_ethn_shr_cell___15 race_ethn_shr_cell___15_.;
	format race_ethn_shr_cell___98 race_ethn_shr_cell___98_.;
	format race_ethn_shr_cell___99 race_ethn_shr_cell___99_.;
	format discrim_courtesy discrim_courtesy_.;
	format discrim_service discrim_service_.;
	format discrim_smart discrim_smart_.;
	format discrim_afraid discrim_afraid_.;
	format discrim_harassed_cell discrim_harassed_cell_.;
	format diag_mon diag_mon_.;
	format edu_years_shr_combo edu_years_shr_combo_.;
	format family_income_shr_combo family_income_shr_combo_.;
	format exp_school_cell exp_school_cell_.;
	format exp_gettingwork_cell exp_gettingwork_cell_.;
	format exp_work_cell exp_work_cell_.;
	format exp_housing_cell exp_housing_cell_.;
	format exp_medicalcare_cell exp_medicalcare_cell_.;
	format exp_service_cell exp_service_cell_.;
	format exp_credit_cell exp_credit_cell_.;
	format exp_public_cell exp_public_cell_.;
	format exp_legal_cell exp_legal_cell_.;
	format exp_court_cell exp_court_cell_.;
	format hi_coverage_type hi_coverage_type_.;
	format self_reported_disability self_reported_disability_.;
	format relat_stat_cell relat_stat_cell_.;
	format current_employment_self_cell current_employment_self_cell_.;
	format vicarious1_cell vicarious1_cell_.;
	format vicarious2_cell vicarious2_cell_.;
	format vicarious3_cell vicarious3_cell_.;
	format vicarious4_cell vicarious4_cell_.;
	format vicarious5_cell vicarious5_cell_.;
	format vicarious6_cell vicarious6_cell_.;
	format vicarious7_cell vicarious7_cell_.;
	format vicarious8_cell vicarious8_cell_.;
	format vicarious9_cell vicarious9_cell_.;
	format vicarious10_cell vicarious10_cell_.;
	format vigilance1_cell vigilance1_cell_.;
	format vigilance2_cell vigilance2_cell_.;
	format vigilance3_cell vigilance3_cell_.;
	format vigilance4_cell vigilance4_cell_.;
	format retinadamage_combo retinadamage_combo_.;
	format cataract_combo cataract_combo_.;
	format kidneytrans_combo kidneytrans_combo_.;
	format dialysis_combo dialysis_combo_.;
	format pulmhbp_combo pulmhbp_combo_.;
	format pulmfibrosis_combo pulmfibrosis_combo_.;
	format coronary_combo coronary_combo_.;
	format cc_cvd_2_combo cc_cvd_2_combo_.;
	format heartattack_combo heartattack_combo_.;
	format multheartattack_combo multheartattack_combo_.;
	format pericarditis_combo pericarditis_combo_.;
	format fingertiploss_combo fingertiploss_combo_.;
	format limbloss_combo limbloss_combo_.;
	format thrombosis_combo thrombosis_combo_.;
	format seizuresdd_combo seizuresdd_combo_.;
	format seizuresmeds_combo seizuresmeds_combo_.;
	format psychosis_combo psychosis_combo_.;
	format strokedd_combo strokedd_combo_.;
	format multiplestrokes_combo multiplestrokes_combo_.;
	format paralysis_combo paralysis_combo_.;
	format paralysisstrokemi_combo paralysisstrokemi_combo_.;
	format esophagussurgery_combo esophagussurgery_combo_.;
	format stomachsurgery_combo stomachsurgery_combo_.;
	format sintestinesurgery_combo sintestinesurgery_combo_.;
	format colonsurgery_combo colonsurgery_combo_.;
	format spleensurgery_combo spleensurgery_combo_.;
	format liversurgery_combo liversurgery_combo_.;
	format pancreassurgery_combo pancreassurgery_combo_.;
	format gallbladsurgery_combo gallbladsurgery_combo_.;
	format peritonitis_combo peritonitis_combo_.;
	format otherabsurgery_combo otherabsurgery_combo_.;
	format osteofracture_combo osteofracture_combo_.;
	format bonenecrosis_combo bonenecrosis_combo_.;
	format boneinfection_combo boneinfection_combo_.;
	format skinulcers_combo skinulcers_combo_.;
	format earlyperiodstop_combo earlyperiodstop_combo_.;
	format earlyhysterectomy_combo earlyhysterectomy_combo_.;
	format menses_combo menses_combo_.;
	format pregnancy_status_combo pregnancy_status_combo_.;
	format cc_diabetes_2_combo cc_diabetes_2_combo_.;
	format cc_cancer_2_combo cc_cancer_2_combo_.;
	format cancer12_combo cancer12_combo_.;
	format flare_combo flare_combo_.;
	format weightloss_combo weightloss_combo_.;
	format fatigue_combo fatigue_combo_.;
	format fevers_combo fevers_combo_.;
	format oralnasalsores_combo oralnasalsores_combo_.;
	format rash_combo rash_combo_.;
	format otherrash_combo otherrash_combo_.;
	format blueskinspots_combo blueskinspots_combo_.;
	format sunsensitivity_combo sunsensitivity_combo_.;
	format alopecia_combo alopecia_combo_.;
	format swolneckgland_combo swolneckgland_combo_.;
	format sob_combo sob_combo_.;
	format chestpainbreath_combo chestpainbreath_combo_.;
	format raynauds_combo raynauds_combo_.;
	format stomachpain_combo stomachpain_combo_.;
	format numbtingling_combo numbtingling_combo_.;
	format seizuresda_combo seizuresda_combo_.;
	format strokeda_combo strokeda_combo_.;
	format forgetfulness_combo forgetfulness_combo_.;
	format feelingdepress_combo feelingdepress_combo_.;
	format unusualheadache_combo unusualheadache_combo_.;
	format musclepain_combo musclepain_combo_.;
	format muscleweakness_combo muscleweakness_combo_.;
	format jointpain_combo jointpain_combo_.;
	format jointswelling_combo jointswelling_combo_.;
	format diseaseactrate3mo_combo diseaseactrate3mo_combo_.;
	format bio_sex_birth_2_combo bio_sex_birth_2_combo_.;
	format current_state_combo current_state_combo_.;
	format weightloss_followup weightloss_followup_.;
	format fatigue_followup fatigue_followup_.;
	format fevers_followup fevers_followup_.;
	format sores_followup sores_followup_.;
	format rash_followup rash_followup_.;
	format otherrash_followup otherrash_followup_.;
	format skinspots_followup skinspots_followup_.;
	format sunsick_followup sunsick_followup_.;
	format baldpatches_followup baldpatches_followup_.;
	format swollenglands_followup swollenglands_followup_.;
	format sob_followup sob_followup_.;
	format chestpain_followup chestpain_followup_.;
	format raynauds_followup raynauds_followup_.;
	format stomachpain_followup stomachpain_followup_.;
	format numbtingling_followup numbtingling_followup_.;
	format seizures_followup seizures_followup_.;
	format stroke_followup stroke_followup_.;
	format forgetfulness_followup forgetfulness_followup_.;
	format feelingdepress_followup feelingdepress_followup_.;
	format headaches_followup headaches_followup_.;
	format musclepain_followup musclepain_followup_.;
	format muscleweakness_followup muscleweakness_followup_.;
	format jointpain_followup jointpain_followup_.;
	format jointswelling_followup jointswelling_followup_.;
	format lupusactivity_followup lupusactivity_followup_.;
	format racetreated_followup racetreated_followup_.;
	format racenews_followup racenews_followup_.;
	format raceexperience_followup raceexperience_followup_.;
	format raceracism_followup raceracism_followup_.;
	format racepoliticians_followup racepoliticians_followup_.;
	format racepublic_followup racepublic_followup_.;
	format racemedia_followup racemedia_followup_.;
	format racethoughts_followup racethoughts_followup_.;
	format racedistressed_followup racedistressed_followup_.;
	format raceconcern_followup raceconcern_followup_.;
	format racediscrimination_followup racediscrimination_followup_.;
	format raceguard_followup raceguard_followup_.;
	format racevigilant_followup racevigilant_followup_.;
	format racefeared_followup racefeared_followup_.;
	format weightloss_followup_two weightloss_followup_two.;
	format fatigue_followup_two fatigue_followup_two.;
	format fevers_followup_two fevers_followup_two.;
	format sores_followup_two sores_followup_two.;
	format rash_followup_two rash_followup_two.;
	format otherrash_followup_two otherrash_followup_two.;
	format skinspots_followup_two skinspots_followup_two.;
	format sunsick_followup_two sunsick_followup_two.;
	format baldpatches_followup_two baldpatches_followup_two.;
	format swollenglands_followup_two swollenglands_followup_two.;
	format sob_followup_two sob_followup_two.;
	format chestpain_followup_two chestpain_followup_two.;
	format raynauds_followup_two raynauds_followup_two.;
	format stomachpain_followup_two stomachpain_followup_two.;
	format numbtingling_followup_two numbtingling_followup_two.;
	format seizures_followup_two seizures_followup_two.;
	format stroke_followup_two stroke_followup_two.;
	format forgetfulness_followup_two forgetfulness_followup_two.;
	format feelingdepress_followup_two feelingdepress_followup_two.;
	format headaches_followup_two headaches_followup_two.;
	format musclepain_followup_two musclepain_followup_two.;
	format muscleweakness_followup_two muscleweakness_followup_two.;
	format jointpain_followup_two jointpain_followup_two.;
	format jointswelling_followup_two jointswelling_followup_two.;
	format lupusactivity_followup_two lupusactivity_followup_two.;
	format racetreated_followup_two racetreated_followup_two.;
	format racenews_followup_two racenews_followup_two.;
	format raceexperience_followup_two raceexperience_followup_two.;
	format raceracism_followup_two raceracism_followup_two.;
	format racepoliticians_followup_two racepoliticians_followup_two.;
	format racepublic_followup_two racepublic_followup_two.;
	format racemedia_followup_two racemedia_followup_two.;
	format racethoughts_followup_two racethoughts_followup_two.;
	format racedistressed_followup_two racedistressed_followup_two.;
	format raceconcern_followup_two raceconcern_followup_two.;
	format racediscrimination_f_v_0 racediscrimination_f_v_0_.;
	format raceguard_followup_two raceguard_followup_two.;
	format racevigilant_followup_two racevigilant_followup_two.;
	format racefeared_followup_two racefeared_followup_two.;
run;

%let csv_file = "C:\Users\leapdata3.csv";
OPTIONS nofmterr;


proc format;
	value $redcap_event_name_ 'baseline_arm_1'='Baseline' '30_day_followup_arm_1'='30 day follow-up' 
		'60_day_followup_arm_1'='60 day follow-up';
	value race_ethn_shr_cell___1_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___2_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___3_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___4_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___5_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___6_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___7_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___15_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___98_ 0='Unchecked' 1='Checked';
	value race_ethn_shr_cell___99_ 0='Unchecked' 1='Checked';
	value discrim_courtesy_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_service_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_smart_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_afraid_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t know' 
		99='Prefer not to answer';
	value discrim_harassed_cell_ 1='Almost everyday' 2='At least once a week' 
		3='A few times a month' 4='Once a month' 
		5='A few times a year' 6='Less than once a year' 
		7='Never' 98='Don''t Know' 
		99='Prefer not to answer';
	value diag_mon_ 1='January' 2='February' 
		3='March' 4='April' 
		5='May' 6='June' 
		7='July' 8='August' 
		9='September' 10='October' 
		11='November' 12='December' 
		13='Don''t remember';
	value edu_years_shr_combo_ 0='A: No school' 1='B: 5th grade or less' 
		2='C: 6th to 8th grade' 3='D: Some HS, no diploma' 
		4='E: HS graduate (or equivalent)' 5='F: Some college (no degree)' 
		6='G: Associate''s degree (including occupational and technical)' 7='H: Bachelor''s degree (BA, BS, AB)' 
		8='I: Master''s degree (MA, MS, MSW)' 9='J: Professional degree (MD, JD)' 
		10='K: Doctorate degree (PhD, EdD)' 98='Don''t know' 
		99='Prefer not to answer';
	value family_income_shr_combo_ 1='A: $ 0 - $ 4,999' 2='B: $ 5,000 - $ 9,999' 
		3='C: $ 10,000 - $ 14,999' 4='D: $ 15,000 - $ 19,999' 
		5='E: $ 20,000 - $ 24,999' 6='F: $ 25,000 - $ 29,999' 
		7='G: $ 30,000 - $ 34,999' 8='H: $ 35,000 - $ 39,999' 
		9='I: $ 40,000 - $ 44,999' 10='J: $ 45,000 - $ 49,999' 
		11='K: $ 50,000 - $ 54,999' 12='L: $ 55,000 - $ 59,999' 
		13='M: $ 60,000 - $ 64,999' 14='N: $ 65,000 - $ 69,999' 
		15='O: $ 70,000 - $ 74,999' 16='P: $ 75,000 - $ 79,999' 
		17='Q: $ 80,000 - $ 84,999' 18='R: $ 85,000 - $ 89,999' 
		19='S: $ 90,000 - $ 94,999' 20='T: $ 95,000 - $ 99,999' 
		21='U: $ 100,000 - $124,999' 22='V: $125,000 - $149,999' 
		23='W: $150,000 - $199,999' 24='X: $200,000-$249,000' 
		25='Y: $250,000 or more' 99='Prefer not to answer';
	value exp_school_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_gettingwork_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_work_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_housing_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_medicalcare_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_service_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_credit_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_public_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_legal_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value exp_court_cell_ 1='No' 2='Once' 
		3='Two or Three Times' 4='Four or More Times' 
		98='Don''t know' 99='Prefer not to answer';
	value hi_coverage_type_ 0='I do NOT have health insurance' 1='Private (purchased directly or through Employment)' 
		2='Public (Medicare, Medicaid, Tricare)' 98='Don''t know' 
		99='Prefer not to answer';
	value self_reported_disability_ 1='Yes' 0='No' 
		98='Don''t know' 99='Prefer not to answer';
	value relat_stat_cell_ 1='Legally married, in a marriage-like relationship, or have a partner' 2='In a romantic relationship' 
		3='Separated or divorced' 4='Widowed' 
		5='Single' 98='Don''t know' 
		99='Prefer not to answer';
	value current_employment_self_cell_ 1='Yes' 0='No' 
		98='Don''t know' 99='Prefer not to answer';
	value vicarious1_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious2_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious3_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious4_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious5_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious6_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious7_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious8_cell_ 1='Never' 2='Rarely' 
		3='Sometimes' 4='Very often' 
		5='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious9_cell_ 1='Not at all distressed' 2='A little distressed' 
		3='Somewhat distressed' 4='Distressed a lot' 
		5='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value vicarious10_cell_ 1='Not at all concerned' 2='A little concerned' 
		3='Somewhat concerned' 4='Concerned a lot' 
		5='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance1_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance2_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance3_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value vigilance4_cell_ 1='Never' 2='Less than once a year' 
		3='A few times a year' 4='About once a month' 
		5='A few times a month' 6='At least once a week' 
		7='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value retinadamage_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cataract_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value kidneytrans_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value dialysis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pulmhbp_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pulmfibrosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value coronary_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_cvd_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value heartattack_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value multheartattack_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pericarditis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value fingertiploss_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value limbloss_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value thrombosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value seizuresdd_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value seizuresmeds_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value psychosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value strokedd_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value multiplestrokes_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value paralysis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value paralysisstrokemi_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value esophagussurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value stomachsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value sintestinesurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value colonsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value spleensurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value liversurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pancreassurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value gallbladsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value peritonitis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value otherabsurgery_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value osteofracture_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value bonenecrosis_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value boneinfection_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value skinulcers_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value earlyperiodstop_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value earlyhysterectomy_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value menses_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value pregnancy_status_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_diabetes_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cc_cancer_2_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value cancer12_combo_ 1='Yes' 0='No' 
		99='Prefer not to answer' 88='Don''t Know';
	value flare_combo_ 0='No Flare' 1='Mild Flare' 
		2='Moderate Flare' 3='Severe Flare' 
		4='Don''t Remember' 99='Prefer not to answer';
	value weightloss_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value fatigue_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value fevers_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value oralnasalsores_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value rash_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value otherrash_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value blueskinspots_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value sunsensitivity_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value alopecia_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value swolneckgland_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value sob_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value chestpainbreath_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value raynauds_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value stomachpain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value numbtingling_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value seizuresda_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value strokeda_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value forgetfulness_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value feelingdepress_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value unusualheadache_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value musclepain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value muscleweakness_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value jointpain_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value jointswelling_combo_ 0='No Problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		99='Prefer not to answer';
	value diseaseactrate3mo_combo_ 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 88='Don''t Know' 
		99='Prefer not to answer';
	value bio_sex_birth_2_combo_ 1='Female' 0='Male' 
		3='Intersex' 96='None of these describe me' 
		99='Prefer not to answer';
	value $current_state_combo_ 'AL'='Alabama' 'AK'='Alaska' 
		'AZ'='Arizona' 'AR'='Arkansas' 
		'CA'='California' 'CO'='Colorado' 
		'CT'='Connecticut' 'DE'='Delaware' 
		'DC'='District of Columbia(DC)' 'FL'='Florida' 
		'GA'='Georgia' 'HI'='Hawaii' 
		'ID'='Idaho' 'IL'='Illinois' 
		'IN'='Indiana' 'IA'='Iowa' 
		'KS'='Kansas' 'KY'='Kentucky' 
		'LA'='Louisiana' 'ME'='Maine' 
		'MD'='Maryland' 'MA'='Massachusetts' 
		'MI'='Michigan' 'MN'='Minnesota' 
		'MS'='Mississippi' 'MO'='Missouri' 
		'MT'='Montana' 'NE'='Nebraska' 
		'NV'='Nevada' 'NH'='New Hampshire' 
		'NJ'='New Jersey' 'NM'='New Mexico' 
		'NY'='New York' 'NC'='North Carolina' 
		'ND'='North Dakota' 'OH'='Ohio' 
		'OK'='Oklahoma' 'OR'='Oregon' 
		'PA'='Pennsylvania' 'RI'='Rhode Island' 
		'SC'='South Carolina' 'SD'='South Dakota' 
		'TN'='Tennessee' 'TX'='Texas' 
		'UT'='Utah' 'VT'='Vermont' 
		'VA'='Virginia' 'WA'='Washington' 
		'WV'='West Virginia' 'WI'='Wisconsin' 
		'WY'='Wyoming' 'AMS'='American Somoa' 
		'GUAM'='GUAM' 'NMI'='Northern Mariana Islands' 
		'PR'='Puerto Rico' 'USVI'='US Virgin Islands';
	value weightloss_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fatigue_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fevers_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sores_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value rash_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value otherrash_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value skinspots_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sunsick_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value baldpatches_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value swollenglands_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sob_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value chestpain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value raynauds_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stomachpain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value numbtingling_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value seizures_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stroke_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value forgetfulness_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value feelingdepress_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value headaches_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value musclepain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value muscleweakness_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointpain_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointswelling_followup_ 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value lupusactivity_followup_ 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 98='Don''t know' 
		99='Prefer not to answer';
	value racetreated_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racenews_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceexperience_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceracism_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepoliticians_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepublic_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		98='Don''t know' 99='Prefer not to answer';
	value racemedia_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racethoughts_followup_ 0='Never' 1='Rarely' 
		2='Sometimes' 3='Very Often' 
		4='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value racedistressed_followup_ 0='Not at all distressed' 1='A little distressed' 
		2='Somewhat distressed' 3='Distressed a lot' 
		4='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value raceconcern_followup_ 0='Not at all concerned' 1='A little concerned' 
		2='Somewhat concerned' 3='Concerned a lot' 
		4='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value racediscrimination_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceguard_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racevigilant_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racefeared_followup_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value weightloss_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fatigue_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value fevers_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sores_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value rash_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value otherrash_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value skinspots_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sunsick_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value baldpatches_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value swollenglands_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value sob_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value chestpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value raynauds_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stomachpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value numbtingling_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value seizures_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value stroke_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value forgetfulness_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value feelingdepress_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value headaches_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value musclepain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value muscleweakness_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointpain_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value jointswelling_followup_two 0='No problem' 1='Mild' 
		2='Moderate' 3='Severe' 
		98='Don''t know' 99='Prefer not to answer';
	value lupusactivity_followup_two 0='0' 1='1' 
		2='2' 3='3' 
		4='4' 5='5' 
		6='6' 7='7' 
		8='8' 9='9' 
		10='10' 98='Don''t know' 
		99='Prefer not to answer';
	value racetreated_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racenews_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceexperience_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceracism_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepoliticians_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racepublic_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		98='Don''t know' 99='Prefer not to answer';
	value racemedia_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racethoughts_followup_two 0='Never' 1='Rarely' 
		2='Sometimes' 3='Very Often' 
		4='Always' 98='Don''t know' 
		99='Prefer not to answer';
	value racedistressed_followup_two 0='Not at all distressed' 1='A little distressed' 
		2='Somewhat distressed' 3='Distressed a lot' 
		4='Extremely distressed' 98='Don''t know' 
		99='Prefer not to answer';
	value raceconcern_followup_two 0='Not at all concerned' 1='A little concerned' 
		2='Somewhat concerned' 3='Concerned a lot' 
		4='Extremely concerned' 98='Don''t know' 
		99='Prefer not to answer';
	value racediscrimination_f_v_0_ 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value raceguard_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racevigilant_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';
	value racefeared_followup_two 0='Never' 1='About once' 
		2='A few times' 3='At least once a week' 
		4='Almost every day' 98='Don''t know' 
		99='Prefer not to answer';

	run;

data work.redcap3; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat redcap_event_name $500. ;
	informat race_ethn_shr_cell___1 best32. ;
	informat race_ethn_shr_cell___2 best32. ;
	informat race_ethn_shr_cell___3 best32. ;
	informat race_ethn_shr_cell___4 best32. ;
	informat race_ethn_shr_cell___5 best32. ;
	informat race_ethn_shr_cell___6 best32. ;
	informat race_ethn_shr_cell___7 best32. ;
	informat race_ethn_shr_cell___15 best32. ;
	informat race_ethn_shr_cell___98 best32. ;
	informat race_ethn_shr_cell___99 best32. ;
	informat discrim_courtesy best32. ;
	informat discrim_service best32. ;
	informat discrim_smart best32. ;
	informat discrim_afraid best32. ;
	informat discrim_harassed_cell best32. ;
	informat dob_mdy_combo yymmdd10. ;
	informat baseline_complete_date $500. ;
	informat diag_mon best32. ;
	informat diag_yr $500. ;
	informat edu_years_shr_combo best32. ;
	informat family_income_shr_combo best32. ;
	informat exp_school_cell best32. ;
	informat exp_gettingwork_cell best32. ;
	informat exp_work_cell best32. ;
	informat exp_housing_cell best32. ;
	informat exp_medicalcare_cell best32. ;
	informat exp_service_cell best32. ;
	informat exp_credit_cell best32. ;
	informat exp_public_cell best32. ;
	informat exp_legal_cell best32. ;
	informat exp_court_cell best32. ;
	informat hi_coverage_type best32. ;
	informat self_reported_disability best32. ;
	informat relat_stat_cell best32. ;
	informat current_employment_self_cell best32. ;
	informat vicarious1_cell best32. ;
	informat vicarious2_cell best32. ;
	informat vicarious3_cell best32. ;
	informat vicarious4_cell best32. ;
	informat vicarious5_cell best32. ;
	informat vicarious6_cell best32. ;
	informat vicarious7_cell best32. ;
	informat vicarious8_cell best32. ;
	informat vicarious9_cell best32. ;
	informat vicarious10_cell best32. ;
	informat vigilance1_cell best32. ;
	informat vigilance2_cell best32. ;
	informat vigilance3_cell best32. ;
	informat vigilance4_cell best32. ;
	informat retinadamage_combo best32. ;
	informat cataract_combo best32. ;
	informat kidneytrans_combo best32. ;
	informat dialysis_combo best32. ;
	informat pulmhbp_combo best32. ;
	informat pulmfibrosis_combo best32. ;
	informat coronary_combo best32. ;
	informat cc_cvd_2_combo best32. ;
	informat heartattack_combo best32. ;
	informat multheartattack_combo best32. ;
	informat pericarditis_combo best32. ;
	informat fingertiploss_combo best32. ;
	informat limbloss_combo best32. ;
	informat thrombosis_combo best32. ;
	informat seizuresdd_combo best32. ;
	informat seizuresmeds_combo best32. ;
	informat psychosis_combo best32. ;
	informat strokedd_combo best32. ;
	informat multiplestrokes_combo best32. ;
	informat paralysis_combo best32. ;
	informat paralysisstrokemi_combo best32. ;
	informat esophagussurgery_combo best32. ;
	informat stomachsurgery_combo best32. ;
	informat sintestinesurgery_combo best32. ;
	informat colonsurgery_combo best32. ;
	informat spleensurgery_combo best32. ;
	informat liversurgery_combo best32. ;
	informat pancreassurgery_combo best32. ;
	informat gallbladsurgery_combo best32. ;
	informat peritonitis_combo best32. ;
	informat otherabsurgery_combo best32. ;
	informat absurgeryother_combo $500. ;
	informat osteofracture_combo best32. ;
	informat bonenecrosis_combo best32. ;
	informat boneinfection_combo best32. ;
	informat skinulcers_combo best32. ;
	informat earlyperiodstop_combo best32. ;
	informat earlyhysterectomy_combo best32. ;
	informat menses_combo best32. ;
	informat pregnancy_status_combo best32. ;
	informat cc_diabetes_2_combo best32. ;
	informat cc_cancer_2_combo best32. ;
	informat cancertype_combo $500. ;
	informat cancer12_combo best32. ;
	informat flare_combo best32. ;
	informat weightloss_combo best32. ;
	informat fatigue_combo best32. ;
	informat fevers_combo best32. ;
	informat oralnasalsores_combo best32. ;
	informat rash_combo best32. ;
	informat otherrash_combo best32. ;
	informat blueskinspots_combo best32. ;
	informat sunsensitivity_combo best32. ;
	informat alopecia_combo best32. ;
	informat swolneckgland_combo best32. ;
	informat sob_combo best32. ;
	informat chestpainbreath_combo best32. ;
	informat raynauds_combo best32. ;
	informat stomachpain_combo best32. ;
	informat numbtingling_combo best32. ;
	informat seizuresda_combo best32. ;
	informat strokeda_combo best32. ;
	informat forgetfulness_combo best32. ;
	informat feelingdepress_combo best32. ;
	informat unusualheadache_combo best32. ;
	informat musclepain_combo best32. ;
	informat muscleweakness_combo best32. ;
	informat jointpain_combo best32. ;
	informat jointswelling_combo best32. ;
	informat diseaseactrate3mo_combo best32. ;
	informat bio_sex_birth_2_combo best32. ;
	informat current_city_combo $500. ;
	informat current_state_combo $500. ;
	informat weightloss_followup best32. ;
	informat fatigue_followup best32. ;
	informat fevers_followup best32. ;
	informat sores_followup best32. ;
	informat rash_followup best32. ;
	informat otherrash_followup best32. ;
	informat skinspots_followup best32. ;
	informat sunsick_followup best32. ;
	informat baldpatches_followup best32. ;
	informat swollenglands_followup best32. ;
	informat sob_followup best32. ;
	informat chestpain_followup best32. ;
	informat raynauds_followup best32. ;
	informat stomachpain_followup best32. ;
	informat numbtingling_followup best32. ;
	informat seizures_followup best32. ;
	informat stroke_followup best32. ;
	informat forgetfulness_followup best32. ;
	informat feelingdepress_followup best32. ;
	informat headaches_followup best32. ;
	informat musclepain_followup best32. ;
	informat muscleweakness_followup best32. ;
	informat jointpain_followup best32. ;
	informat jointswelling_followup best32. ;
	informat lupusactivity_followup best32. ;
	informat racetreated_followup best32. ;
	informat racenews_followup best32. ;
	informat raceexperience_followup best32. ;
	informat raceracism_followup best32. ;
	informat racepoliticians_followup best32. ;
	informat racepublic_followup best32. ;
	informat racemedia_followup best32. ;
	informat racethoughts_followup best32. ;
	informat racedistressed_followup best32. ;
	informat raceconcern_followup best32. ;
	informat racediscrimination_followup best32. ;
	informat raceguard_followup best32. ;
	informat racevigilant_followup best32. ;
	informat racefeared_followup best32. ;
	informat weightloss_followup_two best32. ;
	informat fatigue_followup_two best32. ;
	informat fevers_followup_two best32. ;
	informat sores_followup_two best32. ;
	informat rash_followup_two best32. ;
	informat otherrash_followup_two best32. ;
	informat skinspots_followup_two best32. ;
	informat sunsick_followup_two best32. ;
	informat baldpatches_followup_two best32. ;
	informat swollenglands_followup_two best32. ;
	informat sob_followup_two best32. ;
	informat chestpain_followup_two best32. ;
	informat raynauds_followup_two best32. ;
	informat stomachpain_followup_two best32. ;
	informat numbtingling_followup_two best32. ;
	informat seizures_followup_two best32. ;
	informat stroke_followup_two best32. ;
	informat forgetfulness_followup_two best32. ;
	informat feelingdepress_followup_two best32. ;
	informat headaches_followup_two best32. ;
	informat musclepain_followup_two best32. ;
	informat muscleweakness_followup_two best32. ;
	informat jointpain_followup_two best32. ;
	informat jointswelling_followup_two best32. ;
	informat lupusactivity_followup_two best32. ;
	informat racetreated_followup_two best32. ;
	informat racenews_followup_two best32. ;
	informat raceexperience_followup_two best32. ;
	informat raceracism_followup_two best32. ;
	informat racepoliticians_followup_two best32. ;
	informat racepublic_followup_two best32. ;
	informat racemedia_followup_two best32. ;
	informat racethoughts_followup_two best32. ;
	informat racedistressed_followup_two best32. ;
	informat raceconcern_followup_two best32. ;
	informat racediscrimination_f_v_0 best32. ;
	informat raceguard_followup_two best32. ;
	informat racevigilant_followup_two best32. ;
	informat racefeared_followup_two best32. ;
	informat date_complete_fu1 $500. ;
	informat date_complete_fu2 $500. ;

	format record_id $500. ;
	format redcap_event_name $500. ;
	format race_ethn_shr_cell___1 best12. ;
	format race_ethn_shr_cell___2 best12. ;
	format race_ethn_shr_cell___3 best12. ;
	format race_ethn_shr_cell___4 best12. ;
	format race_ethn_shr_cell___5 best12. ;
	format race_ethn_shr_cell___6 best12. ;
	format race_ethn_shr_cell___7 best12. ;
	format race_ethn_shr_cell___15 best12. ;
	format race_ethn_shr_cell___98 best12. ;
	format race_ethn_shr_cell___99 best12. ;
	format discrim_courtesy best12. ;
	format discrim_service best12. ;
	format discrim_smart best12. ;
	format discrim_afraid best12. ;
	format discrim_harassed_cell best12. ;
	format dob_mdy_combo yymmdd10. ;
	format baseline_complete_date $500. ;
	format diag_mon best12. ;
	format diag_yr $500. ;
	format edu_years_shr_combo best12. ;
	format family_income_shr_combo best12. ;
	format exp_school_cell best12. ;
	format exp_gettingwork_cell best12. ;
	format exp_work_cell best12. ;
	format exp_housing_cell best12. ;
	format exp_medicalcare_cell best12. ;
	format exp_service_cell best12. ;
	format exp_credit_cell best12. ;
	format exp_public_cell best12. ;
	format exp_legal_cell best12. ;
	format exp_court_cell best12. ;
	format hi_coverage_type best12. ;
	format self_reported_disability best12. ;
	format relat_stat_cell best12. ;
	format current_employment_self_cell best12. ;
	format vicarious1_cell best12. ;
	format vicarious2_cell best12. ;
	format vicarious3_cell best12. ;
	format vicarious4_cell best12. ;
	format vicarious5_cell best12. ;
	format vicarious6_cell best12. ;
	format vicarious7_cell best12. ;
	format vicarious8_cell best12. ;
	format vicarious9_cell best12. ;
	format vicarious10_cell best12. ;
	format vigilance1_cell best12. ;
	format vigilance2_cell best12. ;
	format vigilance3_cell best12. ;
	format vigilance4_cell best12. ;
	format retinadamage_combo best12. ;
	format cataract_combo best12. ;
	format kidneytrans_combo best12. ;
	format dialysis_combo best12. ;
	format pulmhbp_combo best12. ;
	format pulmfibrosis_combo best12. ;
	format coronary_combo best12. ;
	format cc_cvd_2_combo best12. ;
	format heartattack_combo best12. ;
	format multheartattack_combo best12. ;
	format pericarditis_combo best12. ;
	format fingertiploss_combo best12. ;
	format limbloss_combo best12. ;
	format thrombosis_combo best12. ;
	format seizuresdd_combo best12. ;
	format seizuresmeds_combo best12. ;
	format psychosis_combo best12. ;
	format strokedd_combo best12. ;
	format multiplestrokes_combo best12. ;
	format paralysis_combo best12. ;
	format paralysisstrokemi_combo best12. ;
	format esophagussurgery_combo best12. ;
	format stomachsurgery_combo best12. ;
	format sintestinesurgery_combo best12. ;
	format colonsurgery_combo best12. ;
	format spleensurgery_combo best12. ;
	format liversurgery_combo best12. ;
	format pancreassurgery_combo best12. ;
	format gallbladsurgery_combo best12. ;
	format peritonitis_combo best12. ;
	format otherabsurgery_combo best12. ;
	format absurgeryother_combo $500. ;
	format osteofracture_combo best12. ;
	format bonenecrosis_combo best12. ;
	format boneinfection_combo best12. ;
	format skinulcers_combo best12. ;
	format earlyperiodstop_combo best12. ;
	format earlyhysterectomy_combo best12. ;
	format menses_combo best12. ;
	format pregnancy_status_combo best12. ;
	format cc_diabetes_2_combo best12. ;
	format cc_cancer_2_combo best12. ;
	format cancertype_combo $500. ;
	format cancer12_combo best12. ;
	format flare_combo best12. ;
	format weightloss_combo best12. ;
	format fatigue_combo best12. ;
	format fevers_combo best12. ;
	format oralnasalsores_combo best12. ;
	format rash_combo best12. ;
	format otherrash_combo best12. ;
	format blueskinspots_combo best12. ;
	format sunsensitivity_combo best12. ;
	format alopecia_combo best12. ;
	format swolneckgland_combo best12. ;
	format sob_combo best12. ;
	format chestpainbreath_combo best12. ;
	format raynauds_combo best12. ;
	format stomachpain_combo best12. ;
	format numbtingling_combo best12. ;
	format seizuresda_combo best12. ;
	format strokeda_combo best12. ;
	format forgetfulness_combo best12. ;
	format feelingdepress_combo best12. ;
	format unusualheadache_combo best12. ;
	format musclepain_combo best12. ;
	format muscleweakness_combo best12. ;
	format jointpain_combo best12. ;
	format jointswelling_combo best12. ;
	format diseaseactrate3mo_combo best12. ;
	format bio_sex_birth_2_combo best12. ;
	format current_city_combo $500. ;
	format current_state_combo $500. ;
	format weightloss_followup best12. ;
	format fatigue_followup best12. ;
	format fevers_followup best12. ;
	format sores_followup best12. ;
	format rash_followup best12. ;
	format otherrash_followup best12. ;
	format skinspots_followup best12. ;
	format sunsick_followup best12. ;
	format baldpatches_followup best12. ;
	format swollenglands_followup best12. ;
	format sob_followup best12. ;
	format chestpain_followup best12. ;
	format raynauds_followup best12. ;
	format stomachpain_followup best12. ;
	format numbtingling_followup best12. ;
	format seizures_followup best12. ;
	format stroke_followup best12. ;
	format forgetfulness_followup best12. ;
	format feelingdepress_followup best12. ;
	format headaches_followup best12. ;
	format musclepain_followup best12. ;
	format muscleweakness_followup best12. ;
	format jointpain_followup best12. ;
	format jointswelling_followup best12. ;
	format lupusactivity_followup best12. ;
	format racetreated_followup best12. ;
	format racenews_followup best12. ;
	format raceexperience_followup best12. ;
	format raceracism_followup best12. ;
	format racepoliticians_followup best12. ;
	format racepublic_followup best12. ;
	format racemedia_followup best12. ;
	format racethoughts_followup best12. ;
	format racedistressed_followup best12. ;
	format raceconcern_followup best12. ;
	format racediscrimination_followup best12. ;
	format raceguard_followup best12. ;
	format racevigilant_followup best12. ;
	format racefeared_followup best12. ;
	format weightloss_followup_two best12. ;
	format fatigue_followup_two best12. ;
	format fevers_followup_two best12. ;
	format sores_followup_two best12. ;
	format rash_followup_two best12. ;
	format otherrash_followup_two best12. ;
	format skinspots_followup_two best12. ;
	format sunsick_followup_two best12. ;
	format baldpatches_followup_two best12. ;
	format swollenglands_followup_two best12. ;
	format sob_followup_two best12. ;
	format chestpain_followup_two best12. ;
	format raynauds_followup_two best12. ;
	format stomachpain_followup_two best12. ;
	format numbtingling_followup_two best12. ;
	format seizures_followup_two best12. ;
	format stroke_followup_two best12. ;
	format forgetfulness_followup_two best12. ;
	format feelingdepress_followup_two best12. ;
	format headaches_followup_two best12. ;
	format musclepain_followup_two best12. ;
	format muscleweakness_followup_two best12. ;
	format jointpain_followup_two best12. ;
	format jointswelling_followup_two best12. ;
	format lupusactivity_followup_two best12. ;
	format racetreated_followup_two best12. ;
	format racenews_followup_two best12. ;
	format raceexperience_followup_two best12. ;
	format raceracism_followup_two best12. ;
	format racepoliticians_followup_two best12. ;
	format racepublic_followup_two best12. ;
	format racemedia_followup_two best12. ;
	format racethoughts_followup_two best12. ;
	format racedistressed_followup_two best12. ;
	format raceconcern_followup_two best12. ;
	format racediscrimination_f_v_0 best12. ;
	format raceguard_followup_two best12. ;
	format racevigilant_followup_two best12. ;
	format racefeared_followup_two best12. ;
	format date_complete_fu1 $500. ;
	format date_complete_fu2 $500. ;

input
	record_id $
	redcap_event_name $
	race_ethn_shr_cell___1
	race_ethn_shr_cell___2
	race_ethn_shr_cell___3
	race_ethn_shr_cell___4
	race_ethn_shr_cell___5
	race_ethn_shr_cell___6
	race_ethn_shr_cell___7
	race_ethn_shr_cell___15
	race_ethn_shr_cell___98
	race_ethn_shr_cell___99
	discrim_courtesy
	discrim_service
	discrim_smart
	discrim_afraid
	discrim_harassed_cell
	dob_mdy_combo
	baseline_complete_date $
	diag_mon
	diag_yr $
	edu_years_shr_combo
	family_income_shr_combo
	exp_school_cell
	exp_gettingwork_cell
	exp_work_cell
	exp_housing_cell
	exp_medicalcare_cell
	exp_service_cell
	exp_credit_cell
	exp_public_cell
	exp_legal_cell
	exp_court_cell
	hi_coverage_type
	self_reported_disability
	relat_stat_cell
	current_employment_self_cell
	vicarious1_cell
	vicarious2_cell
	vicarious3_cell
	vicarious4_cell
	vicarious5_cell
	vicarious6_cell
	vicarious7_cell
	vicarious8_cell
	vicarious9_cell
	vicarious10_cell
	vigilance1_cell
	vigilance2_cell
	vigilance3_cell
	vigilance4_cell
	retinadamage_combo
	cataract_combo
	kidneytrans_combo
	dialysis_combo
	pulmhbp_combo
	pulmfibrosis_combo
	coronary_combo
	cc_cvd_2_combo
	heartattack_combo
	multheartattack_combo
	pericarditis_combo
	fingertiploss_combo
	limbloss_combo
	thrombosis_combo
	seizuresdd_combo
	seizuresmeds_combo
	psychosis_combo
	strokedd_combo
	multiplestrokes_combo
	paralysis_combo
	paralysisstrokemi_combo
	esophagussurgery_combo
	stomachsurgery_combo
	sintestinesurgery_combo
	colonsurgery_combo
	spleensurgery_combo
	liversurgery_combo
	pancreassurgery_combo
	gallbladsurgery_combo
	peritonitis_combo
	otherabsurgery_combo
	absurgeryother_combo $
	osteofracture_combo
	bonenecrosis_combo
	boneinfection_combo
	skinulcers_combo
	earlyperiodstop_combo
	earlyhysterectomy_combo
	menses_combo
	pregnancy_status_combo
	cc_diabetes_2_combo
	cc_cancer_2_combo
	cancertype_combo $
	cancer12_combo
	flare_combo
	weightloss_combo
	fatigue_combo
	fevers_combo
	oralnasalsores_combo
	rash_combo
	otherrash_combo
	blueskinspots_combo
	sunsensitivity_combo
	alopecia_combo
	swolneckgland_combo
	sob_combo
	chestpainbreath_combo
	raynauds_combo
	stomachpain_combo
	numbtingling_combo
	seizuresda_combo
	strokeda_combo
	forgetfulness_combo
	feelingdepress_combo
	unusualheadache_combo
	musclepain_combo
	muscleweakness_combo
	jointpain_combo
	jointswelling_combo
	diseaseactrate3mo_combo
	bio_sex_birth_2_combo
	current_city_combo $
	current_state_combo $
	weightloss_followup
	fatigue_followup
	fevers_followup
	sores_followup
	rash_followup
	otherrash_followup
	skinspots_followup
	sunsick_followup
	baldpatches_followup
	swollenglands_followup
	sob_followup
	chestpain_followup
	raynauds_followup
	stomachpain_followup
	numbtingling_followup
	seizures_followup
	stroke_followup
	forgetfulness_followup
	feelingdepress_followup
	headaches_followup
	musclepain_followup
	muscleweakness_followup
	jointpain_followup
	jointswelling_followup
	lupusactivity_followup
	racetreated_followup
	racenews_followup
	raceexperience_followup
	raceracism_followup
	racepoliticians_followup
	racepublic_followup
	racemedia_followup
	racethoughts_followup
	racedistressed_followup
	raceconcern_followup
	racediscrimination_followup
	raceguard_followup
	racevigilant_followup
	racefeared_followup
	weightloss_followup_two
	fatigue_followup_two
	fevers_followup_two
	sores_followup_two
	rash_followup_two
	otherrash_followup_two
	skinspots_followup_two
	sunsick_followup_two
	baldpatches_followup_two
	swollenglands_followup_two
	sob_followup_two
	chestpain_followup_two
	raynauds_followup_two
	stomachpain_followup_two
	numbtingling_followup_two
	seizures_followup_two
	stroke_followup_two
	forgetfulness_followup_two
	feelingdepress_followup_two
	headaches_followup_two
	musclepain_followup_two
	muscleweakness_followup_two
	jointpain_followup_two
	jointswelling_followup_two
	lupusactivity_followup_two
	racetreated_followup_two
	racenews_followup_two
	raceexperience_followup_two
	raceracism_followup_two
	racepoliticians_followup_two
	racepublic_followup_two
	racemedia_followup_two
	racethoughts_followup_two
	racedistressed_followup_two
	raceconcern_followup_two
	racediscrimination_f_v_0
	raceguard_followup_two
	racevigilant_followup_two
	racefeared_followup_two
	date_complete_fu1 $
	date_complete_fu2 $
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;

data redcap3;
	set redcap3;
	label record_id='Record ID';
	label redcap_event_name='Event Name';
	label race_ethn_shr_cell___1='What is your race?(CHECK ALL THAT APPLY)  (choice=American Indian or Alaska Native)';
	label race_ethn_shr_cell___2='What is your race?(CHECK ALL THAT APPLY)  (choice=Black or African American)';
	label race_ethn_shr_cell___3='What is your race?(CHECK ALL THAT APPLY)  (choice=Asian)';
	label race_ethn_shr_cell___4='What is your race?(CHECK ALL THAT APPLY)  (choice=Native Hawaiian or  Other Pacific Islander)';
	label race_ethn_shr_cell___5='What is your race?(CHECK ALL THAT APPLY)  (choice=White)';
	label race_ethn_shr_cell___6='What is your race?(CHECK ALL THAT APPLY)  (choice=Hispanic, Latino, or Spanish)';
	label race_ethn_shr_cell___7='What is your race?(CHECK ALL THAT APPLY)  (choice=Middle Eastern or North African)';
	label race_ethn_shr_cell___15='What is your race?(CHECK ALL THAT APPLY)  (choice=Some other race)';
	label race_ethn_shr_cell___98='What is your race?(CHECK ALL THAT APPLY)  (choice=Dont know)';
	label race_ethn_shr_cell___99='What is your race?(CHECK ALL THAT APPLY)  (choice=Prefer not to answer)';
	label discrim_courtesy='You are treated with less courtesy or respect than other people.';
	label discrim_service='You receive poorer service than other people at restaurants or stores';
	label discrim_smart='People act as if they think you are not smart.';
	label discrim_afraid='People act as if they are afraid of you.';
	label discrim_harassed_cell='You are threatened or harassed.';
	label dob_mdy_combo='What is your Date of Birth?';
	label baseline_complete_date='Baseline Completion Date [date_complete_baseline]';
	label diag_mon='Approximately when were you first diagnosed with lupus? (Month)';
	label diag_yr='(Year)';
	label edu_years_shr_combo='[NOTE: Advance Slide]  What is the highest level of education you have achieved outside or in the United States?  (Grades are roughly equivalent to years of school.)';
	label family_income_shr_combo='I''m going to show you a screen now.  [NOTE: Open LEAP FLASHCARDS]  Think about all of the sources of income for all family members in your household. This includes income from a job, self-employment, social security, retirement income, unemployment, child support, and alimony. Which letter shows how much your total family household income was from all of these sources in the past year BEFORE taxes? You only need to give me the letter.  [NOTE: If don''t know or prefer not to answer: This is a very important question. Your response will not be shared with anyone else and will be completely confidential. If you are unsure, please give your best guess.]';
	label exp_school_cell='At school?';
	label exp_gettingwork_cell='Getting hired or getting a job?';
	label exp_work_cell='At work?';
	label exp_housing_cell='Getting housing?';
	label exp_medicalcare_cell='Getting medical care?';
	label exp_service_cell='Getting service at a store or restaurant?';
	label exp_credit_cell='Getting credit, bank loans, or a mortgage?';
	label exp_public_cell='On the streets or in a public setting?';
	label exp_legal_cell='From the police?';
	label exp_court_cell='In court? ';
	label hi_coverage_type='What is the primary kind of health insurance or health care plan that you have now?';
	label self_reported_disability='Do you have a disability that interferes with your ability to carry out daily activities? Examples of daily activities include walking, climbing stairs, shopping, balancing a checkbook,  bathing or dressing.';
	label relat_stat_cell='Which of these describe your relationship status?';
	label current_employment_self_cell='Are you currently employed, working at a job or business, or have your own business?';
	label vicarious1_cell='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label vicarious2_cell='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label vicarious3_cell='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label vicarious4_cell='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label vicarious5_cell='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label vicarious6_cell='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label vicarious7_cell='Hear about or see racist things happen to people who are the same race as you posted on social media?';
	label vicarious8_cell='How much have you thought about these experiences or incidents?';
	label vicarious9_cell='How distressed have you felt when thinking about these experiences or incidents?';
	label vicarious10_cell='How concerned have you been about these experiences or incidents?';
	label vigilance1_cell='I avoid going to some places where I think I will be discriminated because of my race/ethnicity.';
	label vigilance2_cell='I feel that I have to be on guard in some situations because I anticipate that I will be discriminated against because of my race/ethnicity.';
	label vigilance3_cell='I feel that I have to be vigilant about the possibility I will be discriminated against because of my race/ethnicity';
	label vigilance4_cell='I fear that I will be discriminated against because of my race/ethnicity';
	label retinadamage_combo='Has an eye doctor ever told you that you had something wrong with the retina of your eye because of your lupus? (Note:  The retina is the back of your eye.)';
	label cataract_combo='Has a doctor ever told you that you had a cataract in your eye?';
	label kidneytrans_combo='Have you ever had a kidney transplant?';
	label dialysis_combo='Have you ever been on dialysis for 6 months or longer?';
	label pulmhbp_combo='Pulmonary hypertension, which is high blood pressure in the lungs? This is different from regular hypertension or high blood pressure. (Note:  Diagnosis starts with an echocardiogram, not a blood pressure cuff.)';
	label pulmfibrosis_combo='A serious condition of your lungs, such as fibrosis or interstitial lung disease? This does not include pneumonia, asthma, emphysema, or pleurisy. (Note:  also not COPD, or bronchitis.)';
	label coronary_combo='Have you ever had coronary or heart bypass surgery?';
	label cc_cvd_2_combo='Heart disease, including angina or congestive heart failure?';
	label heartattack_combo='Heart attack?';
	label multheartattack_combo='Did you ever have more than 1 heart attack at least 6 months apart?';
	label pericarditis_combo='An episode of pericarditis, which is an inflammation in the sack around the heart, that lasted 6 months or longer?';
	label fingertiploss_combo='Loss of flesh or thinning on the ends of your fingers?';
	label limbloss_combo='Loss of a finger, toe, or part of an arm or leg? (Note: not due to an accident)';
	label thrombosis_combo='Deep vein thrombosis -- DVT -- or a blood clot in your arm or leg?';
	label seizuresdd_combo='Seizures?';
	label seizuresmeds_combo='Did you ever have to take medication for seizures for at least 6 months?';
	label psychosis_combo='A psychotic episode?';
	label strokedd_combo='A stroke? (Note: This does not include TIA or transient ischemic attack.)';
	label multiplestrokes_combo='Did you ever have more than 1 stroke at least 6 months apart?';
	label paralysis_combo='Paralysis in your arms or legs that was so severe that you needed to be hospitalized? (Note:  This is transverse myelitis, a rare condition caused by inflammation of the spinal cord.)';
	label paralysisstrokemi_combo='Was this paralysis from a stroke or multiple sclerosis?';
	label esophagussurgery_combo='Esophagus?';
	label stomachsurgery_combo='Stomach?';
	label sintestinesurgery_combo='Small intestine?';
	label colonsurgery_combo='Large intestine/colon?';
	label spleensurgery_combo='Spleen?';
	label liversurgery_combo='Liver?';
	label pancreassurgery_combo='Pancreas?';
	label gallbladsurgery_combo='Gall bladder?';
	label peritonitis_combo='Has a doctor ever told you that you had peritonitis, which is an inflammation of the lining of your abdomen?';
	label otherabsurgery_combo='Other abdominal surgery (e.g. kidney, appendix, uterus or reproductive organs)';
	label absurgeryother_combo='Please specify the other abdominal surgery you received';
	label osteofracture_combo='Osteoporosis, or thin bones, that resulted in a fracture?';
	label bonenecrosis_combo='Avascular necrosis? This is when part of a bone dies.';
	label boneinfection_combo='Osteomyelitis? This is an infection in a bone.';
	label skinulcers_combo='A skin ulcer, which is an open sore on your skin, that lasted 6 months or longer? (Note: this is not an oral ulcer or a ''cold sore''.)';
	label earlyperiodstop_combo='Did your menstrual periods stop before you turned 40?';
	label earlyhysterectomy_combo='Was this due to a hysterectomy?';
	label menses_combo='Do you still get your menstrual periods?';
	label pregnancy_status_combo='Are you currently pregnant or nursing?';
	label cc_diabetes_2_combo='Diabetes?';
	label cc_cancer_2_combo='Cancer?';
	label cancertype_combo='What type of cancer? ';
	label cancer12_combo='Was this cancer diagnosed within the last 12 months? ';
	label flare_combo='In the past 3 months have you had a lupus flare? (A lupus flare is when your lupus gets worse.) ';
	label weightloss_combo='Weight loss without trying';
	label fatigue_combo='Fatigue';
	label fevers_combo='Fevers (>101?F, 38.5?C) taken by thermometer';
	label oralnasalsores_combo='Sores in mouth or nose';
	label rash_combo='Rash on cheeks (shaped like a butterfly)';
	label otherrash_combo='Other rash';
	label blueskinspots_combo=' Dark blue or purple spots you could feel on your skin';
	label sunsensitivity_combo='Rash or feeling sick after going out in the sun';
	label alopecia_combo='Bald patches on scalp, or clumps of hair on pillow';
	label swolneckgland_combo='Swollen glands (nodes) in neck';
	label sob_combo='Shortness of breath';
	label chestpainbreath_combo='Chest pain with a deep breath';
	label raynauds_combo='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_combo='Stomach or belly pain';
	label numbtingling_combo='Persistent numbness or tingling in your arms or legs';
	label seizuresda_combo='Seizures';
	label strokeda_combo='Stroke';
	label forgetfulness_combo='Forgetfulness';
	label feelingdepress_combo='Feeling depressed';
	label unusualheadache_combo='Unusual headaches';
	label musclepain_combo='Muscle pain';
	label muscleweakness_combo='Muscle weakness';
	label jointpain_combo='Pain or stiffness in joints';
	label jointswelling_combo='Swelling in joints';
	label diseaseactrate3mo_combo='[NOTE: Advance Slide]  Please rate the disease activity of your lupus in the past 3 months on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label bio_sex_birth_2_combo='What was your sex assigned at birth on your birth certificate?';
	label current_city_combo='Which City do you live in?';
	label current_state_combo='Which State or Territory do you live in?';
	label weightloss_followup='Weight loss without trying';
	label fatigue_followup='Fatigue';
	label fevers_followup='Fevers (>101F, 38.5C) taken by thermometer';
	label sores_followup='Sores in mouth or nose';
	label rash_followup='Rash on cheeks (shaped like a butterfly)';
	label otherrash_followup='Other rash';
	label skinspots_followup='Dark blue or purple spots you could feel on your skin';
	label sunsick_followup='Rash or feeling sick after going out in the sun';
	label baldpatches_followup='Bald patches on scalp, or clumps of hair on pillow';
	label swollenglands_followup='Swollen glands (nodes) in neck';
	label sob_followup='Shortness of breath';
	label chestpain_followup='Chest pain with a deep breath';
	label raynauds_followup='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_followup='Stomach or belly pain';
	label numbtingling_followup='Persistent numbness or tingling in your arms or legs';
	label seizures_followup='Seizures';
	label stroke_followup='Stroke';
	label forgetfulness_followup='Forgetfulness';
	label feelingdepress_followup='Feeling depressed';
	label headaches_followup='Unusual headaches';
	label musclepain_followup='Muscle pain';
	label muscleweakness_followup='Muscle weakness';
	label jointpain_followup='Pain or stiffness in joints';
	label jointswelling_followup='Swelling in joints';
	label lupusactivity_followup='Please rate the disease activity of your lupus in the past month on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label racetreated_followup='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label racenews_followup='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label raceexperience_followup='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label raceracism_followup='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label racepoliticians_followup='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label racepublic_followup='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label racemedia_followup='Hear about or see racist things about people who are the same race as you posted on social media?';
	label racethoughts_followup='How much do you think about these experiences or incidents?';
	label racedistressed_followup='How distressed have you felt when thinking about these experiences or incidents?';
	label raceconcern_followup='How concerned have you been about these experiences or instances?';
	label racediscrimination_followup='I avoided going to some places where I thought I would be discriminated because of my race/ethnicity.';
	label raceguard_followup='I felt that I had to be on guard in some situations because I anticipated that I would be discriminated against because of my race/ethnicity.';
	label racevigilant_followup='I felt that I had to be vigilant about the possibility I would be discriminated against because of my race/ethnicity.';
	label racefeared_followup='I feared that I would be discriminated against because of my race/ethnicity';
	label weightloss_followup_two='Weight loss without trying';
	label fatigue_followup_two='Fatigue';
	label fevers_followup_two='Fevers (>101F, 38.5C) taken by thermometer';
	label sores_followup_two='Sores in mouth or nose';
	label rash_followup_two='Rash on cheeks (shaped like a butterfly)';
	label otherrash_followup_two='Other rash';
	label skinspots_followup_two='Dark blue or purple spots you could feel on your skin';
	label sunsick_followup_two='Rash or feeling sick after going out in the sun';
	label baldpatches_followup_two='Bald patches on scalp, or clumps of hair on pillow';
	label swollenglands_followup_two='Swollen glands (nodes) in neck';
	label sob_followup_two='Shortness of breath';
	label chestpain_followup_two='Chest pain with a deep breath';
	label raynauds_followup_two='Fingers or toes turning white or very pale in the cold (Raynaud''s)';
	label stomachpain_followup_two='Stomach or belly pain';
	label numbtingling_followup_two='Persistent numbness or tingling in your arms or legs';
	label seizures_followup_two='Seizures';
	label stroke_followup_two='Stroke';
	label forgetfulness_followup_two='Forgetfulness';
	label feelingdepress_followup_two='Feeling depressed';
	label headaches_followup_two='Unusual headaches';
	label musclepain_followup_two='Muscle pain';
	label muscleweakness_followup_two='Muscle weakness';
	label jointpain_followup_two='Pain or stiffness in joints';
	label jointswelling_followup_two='Swelling in joints';
	label lupusactivity_followup_two='Please rate the disease activity of your lupus in the past month on a scale where 0 is no activity and 10 is the most activity. Your disease activity is how much your lupus has been acting up.';
	label racetreated_followup_two='Hear about or see other people of the same race/ethnicity being treated unfairly in public because of their race?';
	label racenews_followup_two='Hear about other people of the same race/ethnicity being the victims of racism in the news?';
	label raceexperience_followup_two='Hear about or see members of your family who are of the same race/ethnicity experience racism?';
	label raceracism_followup_two='Hear about or see your friends or romantic partners of the same race/ethnicity as you experience racism?';
	label racepoliticians_followup_two='Hear about politicians saying racist things about people who are the same race/ethnicity as you?';
	label racepublic_followup_two='Hear about other public figures, such as actors, entertainers, or athletes saying racist things about people who are the same race/ethnicity as you?';
	label racemedia_followup_two='Hear about or see racist things about people who are the same race as you posted on social media?';
	label racethoughts_followup_two='How much do you think about these experiences or incidents?';
	label racedistressed_followup_two='How distressed have you felt when thinking about these experiences or incidents?';
	label raceconcern_followup_two='How concerned have you been about these experiences or instances?';
	label racediscrimination_f_v_0='I avoided going to some places where I thought I would be discriminated because of my race/ethnicity.';
	label raceguard_followup_two='I felt that I had to be on guard in some situations because I anticipated that I would be discriminated against because of my race/ethnicity.';
	label racevigilant_followup_two='I felt that I had to be vigilant about the possibility I would be discriminated against because of my race/ethnicity.';
	label racefeared_followup_two='I feared that I will be discriminated against because of my race/ethnicity';
	label date_complete_fu1='Date Completed';
	label date_complete_fu2='Date Completed';
	format redcap_event_name redcap_event_name_.;
	format race_ethn_shr_cell___1 race_ethn_shr_cell___1_.;
	format race_ethn_shr_cell___2 race_ethn_shr_cell___2_.;
	format race_ethn_shr_cell___3 race_ethn_shr_cell___3_.;
	format race_ethn_shr_cell___4 race_ethn_shr_cell___4_.;
	format race_ethn_shr_cell___5 race_ethn_shr_cell___5_.;
	format race_ethn_shr_cell___6 race_ethn_shr_cell___6_.;
	format race_ethn_shr_cell___7 race_ethn_shr_cell___7_.;
	format race_ethn_shr_cell___15 race_ethn_shr_cell___15_.;
	format race_ethn_shr_cell___98 race_ethn_shr_cell___98_.;
	format race_ethn_shr_cell___99 race_ethn_shr_cell___99_.;
	format discrim_courtesy discrim_courtesy_.;
	format discrim_service discrim_service_.;
	format discrim_smart discrim_smart_.;
	format discrim_afraid discrim_afraid_.;
	format discrim_harassed_cell discrim_harassed_cell_.;
	format diag_mon diag_mon_.;
	format edu_years_shr_combo edu_years_shr_combo_.;
	format family_income_shr_combo family_income_shr_combo_.;
	format exp_school_cell exp_school_cell_.;
	format exp_gettingwork_cell exp_gettingwork_cell_.;
	format exp_work_cell exp_work_cell_.;
	format exp_housing_cell exp_housing_cell_.;
	format exp_medicalcare_cell exp_medicalcare_cell_.;
	format exp_service_cell exp_service_cell_.;
	format exp_credit_cell exp_credit_cell_.;
	format exp_public_cell exp_public_cell_.;
	format exp_legal_cell exp_legal_cell_.;
	format exp_court_cell exp_court_cell_.;
	format hi_coverage_type hi_coverage_type_.;
	format self_reported_disability self_reported_disability_.;
	format relat_stat_cell relat_stat_cell_.;
	format current_employment_self_cell current_employment_self_cell_.;
	format vicarious1_cell vicarious1_cell_.;
	format vicarious2_cell vicarious2_cell_.;
	format vicarious3_cell vicarious3_cell_.;
	format vicarious4_cell vicarious4_cell_.;
	format vicarious5_cell vicarious5_cell_.;
	format vicarious6_cell vicarious6_cell_.;
	format vicarious7_cell vicarious7_cell_.;
	format vicarious8_cell vicarious8_cell_.;
	format vicarious9_cell vicarious9_cell_.;
	format vicarious10_cell vicarious10_cell_.;
	format vigilance1_cell vigilance1_cell_.;
	format vigilance2_cell vigilance2_cell_.;
	format vigilance3_cell vigilance3_cell_.;
	format vigilance4_cell vigilance4_cell_.;
	format retinadamage_combo retinadamage_combo_.;
	format cataract_combo cataract_combo_.;
	format kidneytrans_combo kidneytrans_combo_.;
	format dialysis_combo dialysis_combo_.;
	format pulmhbp_combo pulmhbp_combo_.;
	format pulmfibrosis_combo pulmfibrosis_combo_.;
	format coronary_combo coronary_combo_.;
	format cc_cvd_2_combo cc_cvd_2_combo_.;
	format heartattack_combo heartattack_combo_.;
	format multheartattack_combo multheartattack_combo_.;
	format pericarditis_combo pericarditis_combo_.;
	format fingertiploss_combo fingertiploss_combo_.;
	format limbloss_combo limbloss_combo_.;
	format thrombosis_combo thrombosis_combo_.;
	format seizuresdd_combo seizuresdd_combo_.;
	format seizuresmeds_combo seizuresmeds_combo_.;
	format psychosis_combo psychosis_combo_.;
	format strokedd_combo strokedd_combo_.;
	format multiplestrokes_combo multiplestrokes_combo_.;
	format paralysis_combo paralysis_combo_.;
	format paralysisstrokemi_combo paralysisstrokemi_combo_.;
	format esophagussurgery_combo esophagussurgery_combo_.;
	format stomachsurgery_combo stomachsurgery_combo_.;
	format sintestinesurgery_combo sintestinesurgery_combo_.;
	format colonsurgery_combo colonsurgery_combo_.;
	format spleensurgery_combo spleensurgery_combo_.;
	format liversurgery_combo liversurgery_combo_.;
	format pancreassurgery_combo pancreassurgery_combo_.;
	format gallbladsurgery_combo gallbladsurgery_combo_.;
	format peritonitis_combo peritonitis_combo_.;
	format otherabsurgery_combo otherabsurgery_combo_.;
	format osteofracture_combo osteofracture_combo_.;
	format bonenecrosis_combo bonenecrosis_combo_.;
	format boneinfection_combo boneinfection_combo_.;
	format skinulcers_combo skinulcers_combo_.;
	format earlyperiodstop_combo earlyperiodstop_combo_.;
	format earlyhysterectomy_combo earlyhysterectomy_combo_.;
	format menses_combo menses_combo_.;
	format pregnancy_status_combo pregnancy_status_combo_.;
	format cc_diabetes_2_combo cc_diabetes_2_combo_.;
	format cc_cancer_2_combo cc_cancer_2_combo_.;
	format cancer12_combo cancer12_combo_.;
	format flare_combo flare_combo_.;
	format weightloss_combo weightloss_combo_.;
	format fatigue_combo fatigue_combo_.;
	format fevers_combo fevers_combo_.;
	format oralnasalsores_combo oralnasalsores_combo_.;
	format rash_combo rash_combo_.;
	format otherrash_combo otherrash_combo_.;
	format blueskinspots_combo blueskinspots_combo_.;
	format sunsensitivity_combo sunsensitivity_combo_.;
	format alopecia_combo alopecia_combo_.;
	format swolneckgland_combo swolneckgland_combo_.;
	format sob_combo sob_combo_.;
	format chestpainbreath_combo chestpainbreath_combo_.;
	format raynauds_combo raynauds_combo_.;
	format stomachpain_combo stomachpain_combo_.;
	format numbtingling_combo numbtingling_combo_.;
	format seizuresda_combo seizuresda_combo_.;
	format strokeda_combo strokeda_combo_.;
	format forgetfulness_combo forgetfulness_combo_.;
	format feelingdepress_combo feelingdepress_combo_.;
	format unusualheadache_combo unusualheadache_combo_.;
	format musclepain_combo musclepain_combo_.;
	format muscleweakness_combo muscleweakness_combo_.;
	format jointpain_combo jointpain_combo_.;
	format jointswelling_combo jointswelling_combo_.;
	format diseaseactrate3mo_combo diseaseactrate3mo_combo_.;
	format bio_sex_birth_2_combo bio_sex_birth_2_combo_.;
	format current_state_combo current_state_combo_.;
	format weightloss_followup weightloss_followup_.;
	format fatigue_followup fatigue_followup_.;
	format fevers_followup fevers_followup_.;
	format sores_followup sores_followup_.;
	format rash_followup rash_followup_.;
	format otherrash_followup otherrash_followup_.;
	format skinspots_followup skinspots_followup_.;
	format sunsick_followup sunsick_followup_.;
	format baldpatches_followup baldpatches_followup_.;
	format swollenglands_followup swollenglands_followup_.;
	format sob_followup sob_followup_.;
	format chestpain_followup chestpain_followup_.;
	format raynauds_followup raynauds_followup_.;
	format stomachpain_followup stomachpain_followup_.;
	format numbtingling_followup numbtingling_followup_.;
	format seizures_followup seizures_followup_.;
	format stroke_followup stroke_followup_.;
	format forgetfulness_followup forgetfulness_followup_.;
	format feelingdepress_followup feelingdepress_followup_.;
	format headaches_followup headaches_followup_.;
	format musclepain_followup musclepain_followup_.;
	format muscleweakness_followup muscleweakness_followup_.;
	format jointpain_followup jointpain_followup_.;
	format jointswelling_followup jointswelling_followup_.;
	format lupusactivity_followup lupusactivity_followup_.;
	format racetreated_followup racetreated_followup_.;
	format racenews_followup racenews_followup_.;
	format raceexperience_followup raceexperience_followup_.;
	format raceracism_followup raceracism_followup_.;
	format racepoliticians_followup racepoliticians_followup_.;
	format racepublic_followup racepublic_followup_.;
	format racemedia_followup racemedia_followup_.;
	format racethoughts_followup racethoughts_followup_.;
	format racedistressed_followup racedistressed_followup_.;
	format raceconcern_followup raceconcern_followup_.;
	format racediscrimination_followup racediscrimination_followup_.;
	format raceguard_followup raceguard_followup_.;
	format racevigilant_followup racevigilant_followup_.;
	format racefeared_followup racefeared_followup_.;
	format weightloss_followup_two weightloss_followup_two.;
	format fatigue_followup_two fatigue_followup_two.;
	format fevers_followup_two fevers_followup_two.;
	format sores_followup_two sores_followup_two.;
	format rash_followup_two rash_followup_two.;
	format otherrash_followup_two otherrash_followup_two.;
	format skinspots_followup_two skinspots_followup_two.;
	format sunsick_followup_two sunsick_followup_two.;
	format baldpatches_followup_two baldpatches_followup_two.;
	format swollenglands_followup_two swollenglands_followup_two.;
	format sob_followup_two sob_followup_two.;
	format chestpain_followup_two chestpain_followup_two.;
	format raynauds_followup_two raynauds_followup_two.;
	format stomachpain_followup_two stomachpain_followup_two.;
	format numbtingling_followup_two numbtingling_followup_two.;
	format seizures_followup_two seizures_followup_two.;
	format stroke_followup_two stroke_followup_two.;
	format forgetfulness_followup_two forgetfulness_followup_two.;
	format feelingdepress_followup_two feelingdepress_followup_two.;
	format headaches_followup_two headaches_followup_two.;
	format musclepain_followup_two musclepain_followup_two.;
	format muscleweakness_followup_two muscleweakness_followup_two.;
	format jointpain_followup_two jointpain_followup_two.;
	format jointswelling_followup_two jointswelling_followup_two.;
	format lupusactivity_followup_two lupusactivity_followup_two.;
	format racetreated_followup_two racetreated_followup_two.;
	format racenews_followup_two racenews_followup_two.;
	format raceexperience_followup_two raceexperience_followup_two.;
	format raceracism_followup_two raceracism_followup_two.;
	format racepoliticians_followup_two racepoliticians_followup_two.;
	format racepublic_followup_two racepublic_followup_two.;
	format racemedia_followup_two racemedia_followup_two.;
	format racethoughts_followup_two racethoughts_followup_two.;
	format racedistressed_followup_two racedistressed_followup_two.;
	format raceconcern_followup_two raceconcern_followup_two.;
	format racediscrimination_f_v_0 racediscrimination_f_v_0_.;
	format raceguard_followup_two raceguard_followup_two.;
	format racevigilant_followup_two racevigilant_followup_two.;
	format racefeared_followup_two racefeared_followup_two.;
run;

data merge1;
set redcap1;
drop 
weightloss_followup
fatigue_followup
fevers_followup
sores_followup
rash_followup
otherrash_followup
skinspots_followup
sunsick_followup
baldpatches_followup
swollenglands_followup
sob_followup
chestpain_followup
raynauds_followup
stomachpain_followup
numbtingling_followup
seizures_followup
stroke_followup
forgetfulness_followup
feelingdepress_followup
headaches_followup
musclepain_followup
muscleweakness_followup
jointpain_followup
jointswelling_followup
lupusactivity_followup
racetreated_followup
racenews_followup
raceexperience_followup
raceracism_followup
racepoliticians_followup
racepublic_followup
racemedia_followup
racethoughts_followup
racedistressed_followup
raceconcern_followup
racediscrimination_followup
raceguard_followup
racevigilant_followup
racefeared_followup
date_complete_fu1

weightloss_followup_two
fatigue_followup_two
fevers_followup_two
sores_followup_two
rash_followup_two
otherrash_followup_two
skinspots_followup_two
sunsick_followup_two
baldpatches_followup_two
swollenglands_followup_two
sob_followup_two
chestpain_followup_two
raynauds_followup_two
stomachpain_followup_two
numbtingling_followup_two
seizures_followup_two
stroke_followup_two
forgetfulness_followup_two
feelingdepress_followup_two
headaches_followup_two
musclepain_followup_two
muscleweakness_followup_two
jointpain_followup_two
jointswelling_followup_two
lupusactivity_followup_two
racetreated_followup_two
racenews_followup_two
raceexperience_followup_two
raceracism_followup_two
racepoliticians_followup_two
racepublic_followup_two
racemedia_followup_two
racethoughts_followup_two
racedistressed_followup_two
raceconcern_followup_two
racediscrimination_f_v_0
raceguard_followup_two
racevigilant_followup_two
racefeared_followup_two
date_complete_fu2;
run;

data merge1_a;
set merge1;
record_id_number = input (record_id, 3.);
drop record_id redcap_event_name;
rename record_id_number = record_id;
run;

data merge2;
set redcap2;
keep
record_id
weightloss_followup
fatigue_followup
fevers_followup
sores_followup
rash_followup
otherrash_followup
skinspots_followup
sunsick_followup
baldpatches_followup
swollenglands_followup
sob_followup
chestpain_followup
raynauds_followup
stomachpain_followup
numbtingling_followup
seizures_followup
stroke_followup
forgetfulness_followup
feelingdepress_followup
headaches_followup
musclepain_followup
muscleweakness_followup
jointpain_followup
jointswelling_followup
lupusactivity_followup
racetreated_followup
racenews_followup
raceexperience_followup
raceracism_followup
racepoliticians_followup
racepublic_followup
racemedia_followup
racethoughts_followup
racedistressed_followup
raceconcern_followup
racediscrimination_followup
raceguard_followup
racevigilant_followup
racefeared_followup
date_complete_fu1;
run;

data merge2_a;
set merge2;
record_id_number = input (record_id, 3.);
drop record_id redcap_event_name;
rename record_id_number = record_id;
run;

data merge3;
set redcap3;
keep
record_id
weightloss_followup_two
fatigue_followup_two
fevers_followup_two
sores_followup_two
rash_followup_two
otherrash_followup_two
skinspots_followup_two
sunsick_followup_two
baldpatches_followup_two
swollenglands_followup_two
sob_followup_two
chestpain_followup_two
raynauds_followup_two
stomachpain_followup_two
numbtingling_followup_two
seizures_followup_two
stroke_followup_two
forgetfulness_followup_two
feelingdepress_followup_two
headaches_followup_two
musclepain_followup_two
muscleweakness_followup_two
jointpain_followup_two
jointswelling_followup_two
lupusactivity_followup_two
racetreated_followup_two
racenews_followup_two
raceexperience_followup_two
raceracism_followup_two
racepoliticians_followup_two
racepublic_followup_two
racemedia_followup_two
racethoughts_followup_two
racedistressed_followup_two
raceconcern_followup_two
racediscrimination_f_v_0
raceguard_followup_two
racevigilant_followup_two
racefeared_followup_two
date_complete_fu2;
run;

data merge3_a;
set merge3;
record_id_number = input (record_id, 3.);
drop record_id redcap_event_name;
rename record_id_number = record_id;
run;

proc sort data=merge1_a;
by record_id;
run;

proc sort data=merge2_a;
by record_id;
run;

proc sort data=merge3_a;
by record_id;
run;

data lupus_long;
   set merge1_a merge2_a merge3_a;
run;

data lupus_long_clean;
  set leap_long;
  where leap_online_survey_complete NE 0;
run;

proc sort data= leap_long_clean;
by record_id;
run;

data leap_merge;
merge merge1_a merge2_a merge3_a;
by record_id;
run;



