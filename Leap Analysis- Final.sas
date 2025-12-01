dm'log;clear' continue;
LIBNAME abaker "C:\Users\amari\OneDrive - Tulane University\Graduate Courses\ILE\LEAP DATA\Permanent Datasets";
OPTIONS nofmterr;

/*

1 = woman, 2 = men

Variables:

Continuous: age slaq_a slaq_b slaq_c
bild_sum diag_yrs vers_avg hhinc

Categorical: race relstat insurance working
educat sex;*/

ods excel file="C:\Users\amari\OneDrive - Tulane University\Graduate Courses\ILE\Data_Analysis_Results.xlsx"
     options(sheet_interval='proc' embedded_titles='yes');


/* Formats for readability */
proc format;
  value sexf 1='Woman' 2='Man';
  value racef 1='Black' 2='White' 3='Other';
  value insf  1='Private' 2='Public' 3='Uninsured';
run;

/*===============================
  1. Descriptive Statistics
===============================*/

/* Formats for readability */
proc format;
  value sexf 1='Woman' 2='Man';
  value racef 1='Black' 2='White' 3='Other';
  value insf  1='Private' 2='Public' 3='Uninsured';
run;

/* Sex Frequency */
proc freq data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  tables sex / nocum nopercent;
  format sex sexf.;
  title "Baseline Frequency Table: Sex";
run;

/* Race Frequency */
proc freq data=abaker.leap_long_final; 
  where visit_index=1 and complete=1;
  tables race / nocum nopercent;
  format race racef.;
  title "Baseline Frequency Table: Race";
run;

/* Insurance Frequency */
proc freq data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  tables insurance / nocum nopercent;
  format insurance insf.;
  title "Insurance Status at Baseline";
run;

/* Age Descriptive */
proc univariate data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  var age;
  title "Mean and SD of Age at Baseline";
run;

/*===============================
  2. Bivariate Analysis
===============================*/
ods excel options(sheet_name="2_Bivariate" sheet_interval='proc');

/* Correlations */
proc corr data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  var slaq_a age diag_yrs hhinc vers_avg bild_sum;
  title "Correlation Analysis";
run;

/* SLAQ by Sex */
proc ttest data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  var slaq_a;
  class sex;
  title "SLAQ by Sex";
run;

/* SLAQ by Race */
proc glm data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  class race;
  model slaq_a = race;
  format race racef.;
  lsmeans race / pdiff=all adjust=tukey cl;
  title "SLAQ by Race (GLM with Tukey)";
run; quit;

/*===============================
  3. Multivariate Models
===============================*/
ods excel options(sheet_name="3_Multivariate" sheet_interval='proc');

/* Model 1: Unadjusted */
proc glm data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  class race relstat insurance working educat sex;
  model slaq_a = vers_avg;
  title "Model 1: Unadjusted Association";
run;

/* Model 2: + Demographics */
proc glm data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  class race relstat insurance working educat sex;
  model slaq_a = vers_avg race sex age relstat;
  title "Model 2: + Demographics";
run;

/* Model 3: + Socioeconomic Factors */
proc glm data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  class race relstat insurance working educat sex;
  model slaq_a = vers_avg race sex age relstat working hhinc educat / solution;
  title "Model 3: + Socioeconomic Factors";
run;

/* Model 4: Full Model */
proc glm data=abaker.leap_long_final;
  where visit_index=1 and complete=1;
  class race relstat insurance working educat sex;
  model slaq_a = vers_avg race sex age relstat working hhinc educat diag_yrs insurance bild_sum / solution;
  title "Model 4: Full Model";
run; quit;
/* ===========================
   Phase 3: Pairwise Temporal Analysis
   Objective: Determine at which temporal interval vicarious racism 
   has the greatest impact on lupus disease activity
   =========================== */
ods excel options(sheet_name="3_Pairwise_Temporal" sheet_interval='proc');

proc sort data=abaker.leap_long_final; by record_id; run;

data baseline; 
  set abaker.leap_long_final; 
  where visit_index=1; 
  keep record_id slaq_a vers_avg race sex age relstat working hhinc educat 
       diag_yrs insurance bild_sum baseline_date; 
run;
data month1;  
  set abaker.leap_long_final; 
  where visit_index=2; 
  keep record_id slaq_b vers_avg_b date_complete_fu1; 
run;
data month2;  
  set abaker.leap_long_final; 
  where visit_index=3; 
  keep record_id slaq_c vers_avg_c date_complete_fu2; 
run;

proc sort data=baseline; by record_id; run;
proc sort data=month1;  by record_id; run;
proc sort data=month2;  by record_id; run;

data wide;
  merge baseline(in=a) month1 month2;
  by record_id;
  if a;
  /* change scores */
  slaq_change_1 = slaq_b - slaq_a;  /* Baseline -> 30d */
  slaq_change_2 = slaq_c - slaq_b;  /* 30d -> 60d */
  slaq_change_3 = slaq_c - slaq_a;  /* Baseline -> 60d */

  fu1_date = datepart(input(date_complete_fu1, anydtdtm.));
  fu2_date = datepart(input(date_complete_fu2, anydtdtm.));

  time_fu1_baseline = fu1_date - baseline_date;
  time_fu2_fu1 = fu2_date - fu1_date;
  time_fu2_baseline = fu2_date - baseline_date;

  vers_fu1_baseline = vers_avg_b - vers_avg;
  vers_fu2_fu1 = vers_avg_c - vers_avg_b;
  vers_fu2_baseline = vers_avg_c - vers_avg;
run;

/* ============================================
   Phase 3: Pairwise Models for ALL Participants
   ============================================ */

/* Model 1: Baseline -> 30-day follow-up */
proc glm data=wide;
  class race (ref='3') sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_1 = vers_avg vers_avg_b time_fu1_baseline
                        race sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  title "Phase 3: Baseline -> 30d (All Participants)";
run; quit;

/* Model 2: 30-day -> 60-day follow-up */
proc glm data=wide;
  class race (ref='3') sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_2 = vers_avg_c vers_avg_b time_fu2_fu1 
                        race sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 3: 30d -> 60d (All Participants)";
run; quit;

/* Model 3: Baseline -> 60-day follow-up */
proc glm data=wide;
  class race (ref='3') sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_3 = vers_avg vers_avg_c time_fu2_baseline
                        race sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 3: Baseline -> 60d (All Participants)";
run; quit;

/* Effect Size Comparison Summary */
ods excel options(sheet_name="3_EffectSize_Comparison" sheet_interval='proc');
proc means data=wide n mean std min max;
  var slaq_change_1 slaq_change_2 slaq_change_3;
  title "Phase 3: Summary of Change Scores Across Time Intervals";
run;


/* ===========================
   Phase 4: Race-Stratified Pairwise Analysis
   Focus: Black participants who may experience higher vicarious racism exposure
   =========================== */
ods excel options(sheet_name="4_RaceStrat_Pairwise" sheet_interval='proc');

/* Black Participants - Baseline -> 30d */
proc glm data=wide;
  where race = 1;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_1 = vers_avg vers_avg_b time_fu1_baseline
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  title "Phase 4: Baseline -> 30d (Black Participants)";
run; quit;

/* Black Participants - 30d -> 60d */
proc glm data=wide;
  where race = 1;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_2 = vers_avg_c vers_avg_b time_fu2_fu1 
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 4: 30d -> 60d (Black Participants)";
run; quit;

/* Black Participants - Baseline -> 60d */
proc glm data=wide;
  where race = 1;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_3 = vers_avg vers_avg_c time_fu2_baseline
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 4: Baseline -> 60d (Black Participants)";
run; quit;

/* White Participants - Baseline -> 30d */
proc glm data=wide;
  where race = 2;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_1 = vers_avg vers_avg_b time_fu1_baseline
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  title "Phase 4: Baseline -> 30d (White Participants)";
run; quit;

/* White Participants - 30d -> 60d */
proc glm data=wide;
  where race = 2;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_2 = vers_avg_c vers_avg_b time_fu2_fu1 
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 4: 30d -> 60d (White Participants)";
run; quit;

/* White Participants - Baseline -> 60d */
proc glm data=wide;
  where race = 2;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_3 = vers_avg vers_avg_c time_fu2_baseline
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 4: Baseline -> 60d (White Participants)";
run; quit;

/* Other Race Participants - Baseline -> 30d */
proc glm data=wide;
  where race = 3;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_1 = vers_avg vers_avg_b time_fu1_baseline
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  title "Phase 4: Baseline -> 30d (Other Race Participants)";
run; quit;

/* Other Race Participants - 30d -> 60d */
proc glm data=wide;
  where race = 3;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_2 = vers_avg_c vers_avg_b time_fu2_fu1 
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Follow-up 1 Effect' vers_avg_b 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 4: 30d -> 60d (Other Race Participants)";
run; quit;

/* Other Race Participants - Baseline -> 60d */
proc glm data=wide;
  where race = 3;
  class sex (ref='2') relstat (ref='1') educat (ref='4') insurance (ref='1');
  model slaq_change_3 = vers_avg vers_avg_c time_fu2_baseline
                        sex age relstat working hhinc educat diag_yrs insurance bild_sum
                        / solution;
  estimate 'VERS Baseline Effect' vers_avg 1;
  estimate 'VERS Follow-up 2 Effect' vers_avg_c 1;
  title "Phase 4: Baseline -> 60d (Other Race Participants)";
run; quit;

/* ===========================
   Phase 5: Longitudinal Trajectory Analysis
   Three-wave analysis examining how vicarious racism exposure affects 
   disease activity trajectories over the full 60-day period
   =========================== */
ods excel options(sheet_name="5_Longitudinal_Trajectory" sheet_interval='proc');

proc sort data=abaker.leap_long_final out=leap_sorted;
  by record_id visit_index;
run;

data long_model;
    set leap_sorted;
    by record_id;

    /* Clean and convert character datetime vars */
    fu1_date_clean = strip(compress(date_complete_fu1,,'kw'));
    fu2_date_clean = strip(compress(date_complete_fu2,,'kw'));

    fu1_date = input(fu1_date_clean, anydtdtm19.);
    fu1_date_num = datepart(fu1_date);
    fu2_date = input(fu2_date_clean, anydtdtm19.);
    fu2_date_num = datepart(fu2_date);

    retain patient_baseline_date;
    if first.record_id then patient_baseline_date = .;

    if visit_index = 1 then do;
        patient_baseline_date = baseline_date;
        slaq_score = slaq_a;
        vers_score = vers_avg;
        time_days = 0;
    end;
    else if visit_index = 2 then do;
        slaq_score = slaq_b;
        vers_score = vers_avg_b;
        time_days = fu1_date_num - patient_baseline_date;
    end;
    else if visit_index = 3 then do;
        slaq_score = slaq_c;
        vers_score = vers_avg_c;
        time_days = fu2_date_num - patient_baseline_date;
    end;

    /* Protect against missing baseline or follow-up dates */
    if missing(time_days) then time_days = .;

    format patient_baseline_date fu1_date_num fu2_date_num date9.;
run;


proc print data=long_model;
    var record_id visit_index time_days slaq_score vers_score patient_baseline_date fu1_date_num fu2_date_num;
run;
/* Longitudinal Model with Full Covariates */
proc mixed data=long_model method=reml;
  class record_id visit_index race relstat insurance working educat sex;
  model slaq_score = vers_score time_days vers_score*time_days 
                     race sex age relstat working hhinc educat diag_yrs insurance bild_sum
                     / solution ddfm=kr;
  random intercept / subject=record_id;
  repeated visit_index / subject=record_id type=un r rcorr;
  title "Phase 5: Longitudinal Trajectory Model - Full Model with Covariates";
run;

/* Longitudinal Model - Unadjusted (for comparison) */
proc mixed data=long_model method=reml;
  class record_id visit_index;
  model slaq_score = vers_score time_days vers_score*time_days / solution ddfm=kr;
  random intercept / subject=record_id;
  repeated visit_index / subject=record_id type=un r rcorr;
  title "Phase 5: Longitudinal Trajectory Model - Unadjusted";
run;
/*SLAQ increases with VERS, meaning worse VERS scores predict worse SLAQ (disease activity).
No significant longitudinal change in SLAQ over time after adjusting for VERS.
No significant interaction means the VERS�SLAQ relationship doesn�t change over time.


ods excel close;

