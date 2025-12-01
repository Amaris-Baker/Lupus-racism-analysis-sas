dm'log;clear' continue;
LIBNAME abaker "C:\Users\amari\LEAP DATA";

data abaker.leap_long_demo;
  set abaker.leap_long_clean;

  by record_id;
  if first.record_id then do;

   /* Race */
    if race_ethn_shr_cell___5 = 1 and
       race_ethn_shr_cell___1 = 0 and
       race_ethn_shr_cell___2 = 0 and
       race_ethn_shr_cell___3 = 0 and
       race_ethn_shr_cell___4 = 0 and
       race_ethn_shr_cell___6 = 0 and
       race_ethn_shr_cell___7 = 0 and
       race_ethn_shr_cell___15 = 0 and
       race_ethn_shr_cell___98 = 0 and
       race_ethn_shr_cell___99 = 0 then race = 2; /* White */

    else if race_ethn_shr_cell___2 = 1 and
       race_ethn_shr_cell___1 = 0 and
       race_ethn_shr_cell___3 = 0 and
       race_ethn_shr_cell___4 = 0 and
       race_ethn_shr_cell___5 = 0 and
       race_ethn_shr_cell___6 = 0 and
       race_ethn_shr_cell___7 = 0 and
       race_ethn_shr_cell___15 = 0 and
       race_ethn_shr_cell___98 = 0 and
       race_ethn_shr_cell___99 = 0 then race = 1; /* Black */

    else race = 3; /* Other or multi-race */

    /* Age calculation */
    age = yrdif(dob_mdy_combo, baseline_date);

    /* Relationship status */
    if relat_stat_cell in (2,5) then relstat = 2;
    else if relat_stat_cell = 1 then relstat = 1;
    else if relat_stat_cell in (3,4) then relstat = 3;
    if record_id = 2 then relstat = 1;
	/* 1 = Married or Marriage-like, 2 = Single, 3 = Previously Married (Divorced, Separated, Widowed)*/ 

    /* Insurance type */
    if hi_coverage_type = 1 then insurance = 1;
    else if hi_coverage_type = 2 then insurance = 2;
    else insurance = 3;
	/* 1 = private, 2 = public, 3 = None or Unknown;*/
	*1 = HS or less
2 = some college / associate
3 = college
4 = graduate degree;

if edu_years_shr_combo in (0,1,2,3,4) then educat = 1;
if edu_years_shr_combo in (5,6) then educat = 2;
if edu_years_shr_combo in (7) then educat = 3;
if edu_years_shr_combo in (8, 9, 10) then educat = 4;

* 1 = < 25K
2 = 25-49K
3 = 50-74K
4 = 75-99K
5 = 100K+;

if . < family_income_shr_combo <=25 then hhinc = family_income_shr_combo;
if family_income_shr_combo in (1,2,3,4,5) then hhinccat = 1;
if family_income_shr_combo in (6,7,8,9,10) then hhinccat = 2;
if family_income_shr_combo in (11,12,13,14,15) then hhinccat = 3;
if family_income_shr_combo in (16,17,18,19,20) then hhinccat = 4;
if family_income_shr_combo in (21,22,23,24,25) then hhinccat = 5;
*2, 10 , 165, 175 - Missing;

if bio_sex_birth_2_combo = 1 then sex = 1;
if bio_sex_birth_2_combo = 0 then sex = 2;

 /* Employment status */
    if current_employment_self_cell = 1 then working = 1;
    else if current_employment_self_cell = 0 then working = 0;
    if record_id in (2, 288) then working = 0; */ (responded N/A);
	end;
	run;

	data abaker.leap_long_slaqa;
	set abaker.leap_long_demo;
	by record_id;
	if first.record_id then do;



*SLAQ-BASELINE: 0- No problem, 1- Mild, 2-Moderate, 3-Severe;
if weightloss_combo in (0,1,2,3) then slaq1 = weightloss_combo;
    if fatigue_combo in (0,1,2,3) then slaq2 = fatigue_combo;
    if fevers_combo in (0,1,2,3) then slaq3 = fevers_combo;
    if oralnasalsores_combo in (0,1,2,3) then slaq4 = oralnasalsores_combo;
    if rash_combo in (0,1,2,3) then slaq5 = rash_combo;
    if otherrash_combo in (0,1,2,3) then slaq6 = otherrash_combo;
    if blueskinspots_combo in (0,1,2,3) then slaq7 = blueskinspots_combo;
    if sunsensitivity_combo in (0,1,2,3) then slaq8 = sunsensitivity_combo;
    if alopecia_combo in (0,1,2,3) then slaq9 = alopecia_combo;
    if swolneckgland_combo in (0,1,2,3) then slaq10 = swolneckgland_combo;
    if sob_combo in (0,1,2,3) then slaq11 = sob_combo;
    if chestpainbreath_combo in (0,1,2,3) then slaq12 = chestpainbreath_combo;
    if raynauds_combo in (0,1,2,3) then slaq13 = raynauds_combo;
    if stomachpain_combo in (0,1,2,3) then slaq14 = stomachpain_combo;
    if numbtingling_combo in (0,1,2,3) then slaq15 = numbtingling_combo;
    if seizuresda_combo in (0,1,2,3) then slaq16 = seizuresda_combo;
    if strokeda_combo in (0,1,2,3) then slaq17 = strokeda_combo;
    if forgetfulness_combo in (0,1,2,3) then slaq18 = forgetfulness_combo;
    if feelingdepress_combo in (0,1,2,3) then slaq19 = feelingdepress_combo;
    if unusualheadache_combo in (0,1,2,3) then slaq20 = unusualheadache_combo;
    if musclepain_combo in (0,1,2,3) then slaq21 = musclepain_combo;
    if muscleweakness_combo in (0,1,2,3) then slaq22 = muscleweakness_combo;
    if jointpain_combo in (0,1,2,3) then slaq23 = jointpain_combo;
    if jointswelling_combo in (0,1,2,3) then slaq24 = jointswelling_combo;

    fpulm = max(slaq11, slaq12);
    fcort = max(slaq18, slaq19);

    array skinray(4) slaq4 slaq5 slaq8 slaq13;
    do i = 1 to 4;
      if skinray(i) > 0 then skinray(i) = 1;
    end;

    fskin = max(slaq4, slaq5, slaq8);

    array first(3) slaq19 slaq22 slaq24;
    array sec(3) slaq15 slaq21 slaq23;
    array major(3) fneuro fmusc fjoint;
    do i = 1 to 3;
  if first(i) >= 1 then major(i) = first(i);
  else major(i) = sec(i);
end;

slaq_a = sum(slaq1, slaq2, slaq3, fskin, slaq13, slaq14, fneuro,
             slaq16, fcort, slaq20, fmusc, fjoint);
end;
	run;

	data abaker.leap_long_bild;
	set abaker.leap_long_slaqa;
	by record_id;
	if first.record_id then do;

*BILD - BASELINE;
if retinadamage_combo = 1 then bild1 = 1; if retinadamage_combo = 0 then bild1 = 0;
if cataract_combo = 1 then bild2 = 1; if cataract_combo = 0 then bild2 = 0;
if psychosis_combo = 1 then bild3 = 1; if psychosis_combo = 0 then bild3 = 0;
if seizuresdd_combo = 1 and seizuresmeds_combo = 1 then bild4 = 1; if seizuresdd_combo = 0 then bild4 = 0; 
if seizuresdd_combo = 1 and seizuresmeds_combo = 0 then bild4 = 0;
if strokedd_combo = 1 then bild5 = 1; if strokedd_combo = 0 then bild5 = 0;
if multiplestrokes_combo = 1 then bild6 = 1; if strokedd_combo = 0 or multiplestrokes_combo = 0 then bild6 = 0;
if paralysis_combo = 1 and paralysisstrokemi_combo = 0 then bild7 = 1; if paralysis_combo = 0 then bild7 = 0;
if paralysis_combo = 1 and paralysisstrokemi_combo = 1 then bild7 = 0;
if kidneytrans_combo = 1 or dialysis_combo = 1 then bild8 = 3; if kidneytrans_combo = 0 and dialysis_combo = 0 then bild8 = 0;
if pulmhbp_combo = 1 then bild9 = 1; if pulmhbp_combo = 0 then bild9 = 0;
if pulmfibrosis_combo = 1 then bild10 = 0; if pulmfibrosis_combo = 0 then bild10 = 0;
if coronary_combo = 1 or cc_cvd_2_combo = 1 then bild11 = 1; if coronary_combo = 0 and cc_cvd_2_combo = 0 then bild11 = 0;
if heartattack_combo = 1 then bild12 = 1; if heartattack_combo = 0 then bild12 = 0;
if heartattack_combo = 1 and multheartattack_combo = 1 then bild13 = 1; if heartattack_combo = 0 then bild13 = 0;
if heartattack_combo = 1 and multheartattack_combo = 0 then bild13 = 0;
if pericarditis_combo = 1 then bild14 = 1; if pericarditis_combo = 0 then bild14 = 0;
if fingertiploss_combo = 1 then bild15 = 1; if fingertiploss_combo = 0 then bild15 = 0;
if limbloss_combo = 1 then bild16 = 1; if limbloss_combo = 0 then bild16 = 0;
if thrombosis_combo = 1 then bild17 = 1; if thrombosis_combo = 0 then bild17 = 0;

if bild1 = . then bild1 = 0;
if bild2 = . then bild2 = 0;
if bild3 = . then bild3 = 0;
if bild4 = . then bild4 = 0;
if bild5 = . then bild5 = 0;
if bild6 = . then bild6 = 0;
if bild7 = . then bild7 = 0;
if bild8 = . then bild8 = 0;
if bild9 = . then bild9 = 0;
if bild10 = . then bild10 = 0;
if bild11 = . then bild11 = 0;
if bild12 = . then bild12 = 0;
if bild13 = . then bild13 = 0;
if bild14 = . then bild14 = 0;
if bild15 = . then bild15 = 0;
if bild16 = . then bild16 = 0;
if bild17 = . then bild17 = 0;

if esophagussurgery_combo = 1 then surgery1 = 1; if esophagussurgery_combo = 0 then surgery1 = 0;
if stomachsurgery_combo = 1 then sugery2 = 1; if stomachsurgery_combo = 0 then surgery2 = 0;
if sintestinesurgery_combo = 1 then surgery3 = 1; if sintestinesurgery_combo = 0 then surgery3 = 0;
if colonsurgery_combo = 1 then surgery4 = 1; if colonsurgery_combo = 0 then surgery4 = 0;
if spleensurgery_combo = 1 then surgery5 = 1; if spleensurgery_combo = 0 then surgery5 = 0;
if liversurgery_combo = 1 then surgery6 = 1; if liversurgery_combo = 0 then surgery6 = 0;
if pancreassurgery_combo = 1 then surgery7 = 1; if pancreassurgery_combo = 0 then surgery7 = 0;
if gallbladsurgery_combo = 1 then surgery8 = 1; if gallbladsurgery_combo = 0 then surgery8 = 0;
if otherabsurgery_combo = 1 then surgery9 = 1; if otherabsurgery_combo = 0 then surgery9 = 0;

if surgery1 = . then surgery1 = 0;
if surgery2 = . then surgery2 = 0;
if surgery3 = . then surgery3 = 0;
if surgery4 = . then surgery4 = 0;
if surgery5 = . then surgery5 = 0;
if surgery6 = . then surgery6 = 0;
if surgery7 = . then surgery7 = 0;
if surgery8 = . then surgery8 = 0;
if surgery9 = . then surgery9 = 0;

surgery_total = surgery1 + surgery2 + surgery3 + surgery4 + surgery5 + surgery6 + 
surgery7 + surgery8 + surgery9;

if surgery_total = 1 then bild18 = 1; if surgery_total >= 2 then bild18 = 2; if surgery_total = 0 then bild18 = 0;
if osteofracture_combo = 1 then bild19 = 1; if osteofracture_combo = 0 then bild19 = 0;
if bonenecrosis_combo = 1 then bild20 = 1; if bonenecrosis_combo = 0 then bild20 = 0;
if boneinfection_combo = 1 then bild21 = 1; if boneinfection_combo = 0 then bild21 = 0;
if skinulcers_combo = 1 then bild22 = 1; if skinulcers_combo = 0 then bild22 = 0;
if earlyperiodstop_combo = 1 and earlyhysterectomy_combo = 0 then bild23 = 1;
	if earlyperiodstop_combo = 1 and earlyhysterectomy_combo = 1 then bild23 = 0;
	if earlyperiodstop_combo = 0 then bild23 = 0;
	if menses_combo = 0 and pregnancy_status_combo = 0 then bild23 = 1;
	if menses_combo = 0 and pregnancy_status_combo = 1 then bild23 = 0;
	if menses_combo = 1 then bild23 = 0;
	if bio_sex_birth_2_combo = 0 then bild23 = 0;
if cc_diabetes_2_combo = 1 then bild24 = 1; if cc_diabetes_2_combo = 0 then bild24 = 0;
if cc_cancer_2_combo = 1 then bild25 = 1; if cc_cancer_2_combo = 0 then bild25 = 0;
if cancertype_combo = 'breast and cervical' then bild25 = 2;
if cancertype_combo = 'Thyroid throat cancer' then bild25 = 2;
if cancertype_combo = 'breast, skin, uterine' then bild25 = 2;

if bild18 = . then bild18 = 0;
if bild19 = . then bild19 = 0;
if bild20 = . then bild20 = 0;
if bild21 = . then bild21 = 0;
if bild22 = . then bild22 = 0;
if bild23 = . then bild23 = 0;
if bild24 = . then bild24 = 0;
if bild25 = . then bild25 = 0;

bild_sum = bild1 + bild2 + bild3 + bild4 + bild5 + bild6 + bild7 + bild8 + bild9 + bild10 + 
bild11 + bild12 + bild13 + bild14 + bild15 + bild16 + bild17 + bild18 + bild19 + bild20 +
bild21 + bild22 + bild23 + bild24 + bild25;

if bild_sum = 0 then bildcat = 1;
if bild_sum = 1 then bildcat = 2;
if bild_sum = 2 then bildcat = 3;
if bild_sum = 3 then bildcat = 4;
if bild_sum = 4 then bildcat = 5;
if bild_sum = 5 then bildcat = 6;
if bild_sum >=6 then bildcat = 7;
end;
run;

data abaker.leap_long_vers;
set abaker.leap_long_bild;
by record_id;

if first.record_id then do;

*Years of diagnosis;
if diag_mon = 13 then diag_mon_r = 6; else diag_mon_r=diag_mon;
diag_day = 15;
diag_date = mdy (diag_mon_r, diag_day, diag_yr);
format diag_date mmddyy10.;
diag_yrs = yrdif(diag_date, baseline_date);

/* Vers - Baseline
0- Never 
1- Less than once a year 
2- A few times a year 
3- About once a month 
4- a few times a month 
5- at least once a week 6- almost everyday
*/
if vicarious1_cell in (1,2,3,4,5,6,7) then vers1 = vicarious1_cell-1;
if vicarious2_cell in (1,2,3,4,5,6,7) then vers2 = vicarious2_cell-1;
if vicarious3_cell in (1,2,3,4,5,6,7) then vers3 = vicarious3_cell-1;
if vicarious4_cell in (1,2,3,4,5,6,7) then vers4 = vicarious4_cell-1;
if vicarious5_cell in (1,2,3,4,5,6,7) then vers5 = vicarious5_cell-1;
if vicarious6_cell in (1,2,3,4,5,6,7) then vers6 = vicarious6_cell-1;
if vicarious7_cell in (1,2,3,4,5,6,7) then vers7 = vicarious7_cell-1;

/*Record_id 257 397 DK straight line;
Vers1: DK record_id 46, 161, 257, 283,397;
Vers2: DK record_id 225 257 389 393 397 ;
Vers3: DK record_id 86, 194, 211, 226,257, 260, 397 ;
Vers4: DK record_id  23 59 194 209 257 382 393 397 409 414;
Vers5: DK record_id 23 45 46 109 257 393 397 ;
Vers6: DK record_id 23 30 68 163 185 211 257 260 294 393 397 410 ;
Vers7: DK record_id  32 86 163 257 393 397 410*/

if record_id = 30 then vers1 = 4;
if record_id = 108 then vers1 = 1;
if record_id = 161 then vers2 = 0;
if record_id= 54  then vers2= 1;
if record_id = 81 then vers2 =6;
if record_id = 141 then vers3 = 1;
if record_id = 366 then vers3 = 4;
if record_id = 389 then vers3= 2;
if record_id = 30 then vers4 = 6;
if record_id = 99 then vers4 = 0;
if record_id = 331 then vers4 = 6;
if record_id = 339 then vers4 =0 ;
if record_id = 389 then vers4 = 1;
if record_id = 30 then vers5 = 2;
if record_id = 99 then vers5 = 0 ;
if record_id = 86 then vers5 = 1;
if record_id = 218 then vers5 = 0;
if record_id = 316 then vers5 = 1;
if record_id = 99 then vers6 = 0 ;
if record_id = 339 then vers6 = 0 ;
if record_id = 45 then vers6= 0;
if record_id = 296 then vers6 = 0;
if record_id = 385 then vers6 = 1;
if record_id = 99 then vers7 = 0;
if record_id = 46 then vers7 = 4;
if record_id = 373 then vers7 = 2;

vers_avg = mean  (of vers1 - vers7); 
end;
run;
data abaker.leap_long_baseline;
  set abaker.leap_long_vers;
  by record_id;
  retain visit_index;

  if first.record_id then visit_index = 1;
  else visit_index + 1;
if not first.record_id then do;
   race = .;
    age = .;
    relstat = .;
    insurance = .;
    working = .;
    slaq_a = .;
    fpulm = .;
    fcort = .;
    fskin = .;
    fneuro = .;
    fmusc = .;
    fjoint = .;
    bild_sum = .;
    bildcat = .;
    diag_yrs = .;
    vers_avg = .;

    array clear_slaq[24] slaq1-slaq24;
    do i = 1 to 24;
      clear_slaq[i] = .;
	  end;
    array clear_bild[25] bild1-bild25;
    do i = 1 to 25;
      clear_bild[i] = .;
	  end;

    array clear_surg[9] surgery1-surgery9;
    do i = 1 to 9;
      clear_surg[i] = .;
	  end;

    array clear_vers[7] vers1-vers7;
    do i = 1 to 7;
      clear_vers[i] = .;
	end;
	end;

if visit_index= 2 then do;
*SLAQ-ONEMONTH: 0- No problem, 1- Mild, 2-Moderate, 3-Severe;
if weightloss_followup in (0,1,2,3) then slaq_b1 = weightloss_followup;
if fatigue_followup in (0,1,2,3) then slaq_b2 = fatigue_followup;
if fevers_followup in (0,1,2,3) then slaq_b3 = fevers_followup;
if sores_followup in (0,1,2,3) then slaq_b4 = sores_followup;
if rash_followup in (0,1,2,3) then slaq_b5 = rash_followup;
if otherrash_followup in (0,1,2,3) then slaq_b6 = otherrash_followup;
if skinspots_followup in (0,1,2,3) then slaq_b7 = skinspots_followup;
if sunsick_followup in (0,1,2,3) then slaq_b8 = sunsick_followup;
if baldpatches_followup in (0,1,2,3) then slaq_b9 = baldpatches_followup;
if swollenglands_followup in (0,1,2,3) then slaq_b10 = swollenglands_followup;
if sob_followup in (0,1,2,3) then slaq_b11 = sob_followup;
if chestpain_followup in (0,1,2,3) then slaq_b12 = chestpain_followup;
if raynauds_followup in (0,1,2,3) then slaq_b13 = raynauds_followup;
if stomachpain_followup in (0,1,2,3) then slaq_b14 = stomachpain_followup;
if numbtingling_followup in (0,1,2,3) then slaq_b15 = numbtingling_followup;
if seizures_followup in (0,1,2,3) then slaq_b16 = seizures_followup;
if stroke_followup in (0,1,2,3) then slaq_b17 = stroke_followup;
if forgetfulness_followup in (0,1,2,3) then slaq_b18 = forgetfulness_followup;
if feelingdepress_followup in (0,1,2,3) then slaq_b19 = feelingdepress_followup;
if headaches_followup in (0,1,2,3) then slaq_b20 = headaches_followup;
if musclepain_followup in (0,1,2,3) then slaq_b21 = musclepain_followup;
if muscleweakness_followup in (0,1,2,3) then slaq_b22 = muscleweakness_followup;
if jointpain_followup in (0,1,2,3) then slaq_b23 = jointpain_followup;
if jointswelling_followup in (0,1,2,3) then slaq_b24 = jointswelling_followup;

if record_id = 91 then slaq_b1 = 1;
if record_id = 188 then slaq_b1 = 0;
if record_id = 95 then slaq_b3 = 1;
if record_id = 143 then slaq_b3 = 1;
if record_id = 179 then slaq_b3 = 0; *missing;
if record_id = 211 then slaq_b3 = 0; *missing;
if record_id = 215 then slaq_b3 = 0; *missing;
if record_id = 371 then slaq_b3 = 0;
if record_id = 97 then slaq_b4 = 0; *missing;
if record_id = 109 then slaq_b5 = 0; *missing;
if record_id = 23 then slaq_b7 = 0; *missing;
if record_id = 48 then slaq_b10 = 0;
if record_id = 239 then slaq_b13 = 0; *missing;
if record_id = 364 then slaq_b13 = 0;
if record_id = 323 then slaq_b16 = 0; *missing;
if record_id = 323 then slaq_b17 = 0; *missing;
if record_id = 312 then slaq_b24 = 2;
if record_id = 386 then slaq_b24 = 0; *missing;

fpulm_b = max(slaq_b11, slaq_b12);
fcort_b = max(slaq_b18, slaq_b19);

array skinray_b(4) slaq_b4 slaq_b5 slaq_b8 slaq_b13;
do i = 1 to 4;
if skinray_b(i) > 0 then skinray_b(i) = 1;
end;

fskin_b = max(slaq_b4, slaq_b5, slaq_b8);
array first_b(3) slaq_b19 slaq_b22 slaq_b24;
array sec_b(3) slaq_b15 slaq_b21 slaq_b23;
array major_b(3) fneuro_b fmusc_b fjoint_b;
do i = 1 to 3;
if first_b(i) >= 1 then major_b(i) = first_b(i);
else major_b(i) = sec_b(i);
end;

slaq_b = sum(slaq_b1, slaq_b2, slaq_b3, fskin_b, slaq_b13, slaq_b14, fneuro_b,
slaq_b16, fcort_b, slaq_b20, fmusc_b, fjoint_b);
end;
run;

data abaker.leap_long_versb;
set abaker.leap_long_baseline;
if visit_index = 2 then do;

/* Vers_b - One Month
0- Never
1- About Once
2- A few Times
3- At Least Once A week
4- Almost Everyday */

if racetreated_followup in (0,1,2,3,4) then vers_b1 = racetreated_followup;
if racenews_followup in (0,1,2,3,4) then vers_b2 = racenews_followup;
if raceexperience_followup in (0,1,2,3,4) then vers_b3 = raceexperience_followup;
if raceracism_followup in (0,1,2,3,4) then vers_b4 = raceracism_followup;
if racepoliticians_followup in (0,1,2,3,4) then vers_b5 = racepoliticians_followup;
if racepublic_followup in (0,1,2,3,4) then vers_b6 = racepublic_followup;
if racemedia_followup in (0,1,2,3,4) then vers_b7 = racemedia_followup;

*/
Vers_b1:DK record_id 161,225,260,280,288,315,401 (7)
Vers_b2:DK record_id 161,260,267,280,288,315,331,401 (8)
Vers_b3:DK record_id 95,130,161,225,280,288,294,296,401 (9)
Vers_b4:DK record_id 130,161,264,280,288,401 (6)
Vers_b5:DK record_id 257,280,288,401 (4)
Vers_b6:DK record_id 200,255,257,280,288,294,401 (7)
Vers_b7:DK record_id 18,32,225,257,260,280,288,401(8);

if record_id = 18  then vers_b1= 1 ;
if record_id = 123 then vers_b1= 1;
if record_id = 260 then vers_b2= 0 ;
if record_id = 62 then vers_b3= 0 ;
if record_id = 18 then vers_b4= 2;
if record_id = 353 then vers_b5= 2 ;
if record_id = 267 then vers_b6= 1 ;
if record_id = 91  then vers_b7= 2 ;
if record_id = 199 then vers_b7= 2 ;
if record_id = 267 then vers_b7= 1 ;

vers_avg_b = mean(of vers_b1-vers_b7);
end;
run;

data abaker.leap_long_slaqc;
set abaker.leap_long_versb;
if visit_index= 3 then do;
*SLAQ - TWOMONTH: 0- No problem, 1- Mild, 2-Moderate, 3-Severe;
if weightloss_followup_two in (0,1,2,3) then slaq_c1 = weightloss_followup_two;
if fatigue_followup_two in (0,1,2,3) then slaq_c2 = fatigue_followup_two;
if fevers_followup_two in (0,1,2,3) then slaq_c3 = fevers_followup_two;
if sores_followup_two in (0,1,2,3) then slaq_c4 = sores_followup_two;
if rash_followup_two in (0,1,2,3) then slaq_c5 = rash_followup_two;
if otherrash_followup_two in (0,1,2,3) then slaq_c6 = otherrash_followup_two;
if skinspots_followup_two in (0,1,2,3) then slaq_c7 = skinspots_followup_two;
if sunsick_followup_two in (0,1,2,3) then slaq_c8 = sunsick_followup_two;
if baldpatches_followup_two in (0,1,2,3) then slaq_c9 = baldpatches_followup_two;
if swollenglands_followup_two in (0,1,2,3) then slaq_c10 = swollenglands_followup_two;
if sob_followup_two in (0,1,2,3) then slaq_c11 = sob_followup_two;
if chestpain_followup_two in (0,1,2,3) then slaq_c12 = chestpain_followup_two;
if raynauds_followup_two in (0,1,2,3) then slaq_c13 = raynauds_followup_two;
if stomachpain_followup_two in (0,1,2,3) then slaq_c14 = stomachpain_followup_two;
if numbtingling_followup_two in (0,1,2,3) then slaq_c15 = numbtingling_followup_two;
if seizures_followup_two in (0,1,2,3) then slaq_c16 = seizures_followup_two;
if stroke_followup_two in (0,1,2,3) then slaq_c17 = stroke_followup_two;
if forgetfulness_followup_two in (0,1,2,3) then slaq_c18 = forgetfulness_followup_two;
if feelingdepress_followup_two in (0,1,2,3) then slaq_c19 = feelingdepress_followup_two;
if headaches_followup_two in (0,1,2,3) then slaq_c20 = headaches_followup_two;
if musclepain_followup_two in (0,1,2,3) then slaq_c21 = musclepain_followup_two;
if muscleweakness_followup_two in (0,1,2,3) then slaq_c22 = muscleweakness_followup_two;
if jointpain_followup_two in (0,1,2,3) then slaq_c23 = jointpain_followup_two;
if jointswelling_followup_two in (0,1,2,3) then slaq_c24 = jointswelling_followup_two;

if record_id = 149 then slaq_c1 = 0;
if record_id = 312 then slaq_c1 = 0; *missing;
if record_id = 211 then slaq_c1 = 0; *missing;
if record_id = 281 then slaq_c1 = 0;
if record_id = 179 then slaq_c3 = 0;
if record_id = 273 then slaq_c3 = 0; *missing;
if record_id = 312 then slaq_c3 = 0; *missing;
if record_id = 372 then slaq_c3 = 0; *missing;
if record_id = 109 then slaq_c5 = 0; *missing;
if record_id = 312 then slaq_c5 = 0; *missing;
if record_id = 399 then slaq_c7 = 0; *missing;
if record_id = 252 then slaq_c10 = 0; *missing;
if record_id = 294 then slaq_c10 = 0; *missing;
if record_id = 312 then slaq_c10 = 0; *missing;
if record_id = 229 then slaq_c12 = 2;
if record_id = 409 then slaq_c12 = 0; *missing;
if record_id = 273 then slaq_c13 = 0;
if record_id = 312 then slaq_c13 = 0; *missing;
if record_id = 273 then slaq_c16 = 2;
if record_id = 273 then slaq_c17 = 0; *missing;
if record_id = 399 then slaq_c17 = 0; *missing;
if record_id = 386 then slaq_c22 = 1;
   
fpulm_c = max(slaq_c11, slaq_c12);
fcort_c = max(slaq_c18, slaq_c19);

array skinray_c(4) slaq_c4 slaq_c5 slaq_c8 slaq_c13;
do i = 1 to 4;
if skinray_c(i) > 0 then skinray_c(i) = 1;
end;

fskin_c = max(slaq_c4, slaq_c5, slaq_c8);
array first_c(3) slaq_c19 slaq_c22 slaq_c24;
array sec_c(3) slaq_c15 slaq_c21 slaq_c23;
array major_c(3) fneuro_c fmusc_c fjoint_c;
do i = 1 to 3;
if first_c(i) >= 1 then major_c(i) = first_c(i);
else major_c(i) = sec_c(i);
end;

slaq_c = sum(slaq_c1, slaq_c2, slaq_c3, fskin_c, slaq_c13, slaq_c14, fneuro_c,
slaq_c16, fcort_c, slaq_c20, fmusc_c, fjoint_c);
end;
run;

data abaker.leap_long_final;
    set abaker.leap_long_slaqc;

    if visit_index = 3 then do;
        /* Vers_c - Two Month
           0- Never
           1- About Once
           2- A few Times
           3- At Least Once A week
           4- Almost Everyday */
        
        if racetreated_followup_two in (0,1,2,3,4) then vers_c1 = racetreated_followup_two;
        if racenews_followup_two     in (0,1,2,3,4) then vers_c2 = racenews_followup_two;
        if raceexperience_followup_two in (0,1,2,3,4) then vers_c3 = raceexperience_followup_two;
        if raceracism_followup_two   in (0,1,2,3,4) then vers_c4 = raceracism_followup_two;
        if racepoliticians_followup_two in (0,1,2,3,4) then vers_c5 = racepoliticians_followup_two;
        if racepublic_followup_two   in (0,1,2,3,4) then vers_c6 = racepublic_followup_two;
        if racemedia_followup_two    in (0,1,2,3,4) then vers_c7 = racemedia_followup_two;

        /* Manual corrections */
        if record_id = 45  then vers_c1 = 0 ;
        if record_id = 20  then vers_c2 = 3 ;
        if record_id = 95  then vers_c3 = 0 ;
        if record_id = 254 then vers_c3 = 0 ;
        if record_id = 332 then vers_c3 = 1 ;
        if record_id = 399 then vers_c3 = 0 ;
        if record_id = 163 then vers_c5 = 0 ;
        if record_id = 17  then vers_c6 = 3 ;
        if record_id = 45  then vers_c6 = 0 ;
        if record_id = 129 then vers_c7 = 1 ;
        if record_id = 315 then vers_c7 = 3 ;
        if record_id = 399 then vers_c7 = 4 ;

        vers_avg_c = mean (of vers_c1-vers_c7);
    end;  

    if visit_index = 1 then do;
        if age > . and slaq_a > . and bild_sum > . and diag_yrs > . 
           and vers_avg > . and hhinc > . and race > . 
           and relstat > . and insurance > . and working > . 
           and educat > . and sex > . then complete = 1;

        if vers_avg > . then do;
            if vers_avg <= 2 then vers_cat = 1;
            else if vers_avg <= 3 then vers_cat = 2;
            else if vers_avg <= 4 then vers_cat = 3;
            else if vers_avg > 4 then vers_cat = 4;
        end;
        else vers_cat = 5;
    end;
run;



