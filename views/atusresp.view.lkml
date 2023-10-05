# The name of this view in Looker is "Atusresp"
view: atusresp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.atusresp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Line" in Explore.

  dimension: _line {
    type: number
    sql: ${TABLE}._line ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__line {
    type: sum
    sql: ${_line} ;;  }
  measure: average__line {
    type: average
    sql: ${_line} ;;  }

  dimension: teabsrsn {
    type: number
    label: "Absence Reason"
    description: "what was the main reason you were absent from your job last week?"
    sql: ${TABLE}.teabsrsn ;;
  }

  dimension: teern {
    type: number
    label: "Earnings"
    description: "total weekly overtime earnings (2 implied decimals)"
    sql: ${TABLE}.teern ;;
  }

  dimension: teernh_1_o {
    type: number
    label: "Earnings Hourly Pay Rate 1"
    description: "excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)"
    sql: ${TABLE}.teernh_1_o ;;
  }

  dimension: teernh_2 {
    type: number
    label: "Earnings Hourly Pay Rate 2"
    description: "excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)"
    sql: ${TABLE}.teernh_2 ;;
  }

  dimension: teernhro {
    type: number
    label: "Earnings Hours Per Week"
    description: "how many hours do you usually work per week at this rate?"
    sql: ${TABLE}.teernhro ;;
  }

  dimension: teernhry {
    type: number
    label: "Earnings Hourly Status"
    description: "hourly/non-hourly status"
    sql: ${TABLE}.teernhry ;;
  }

  dimension: teernper {
    type: number
    label: "Earnings Report Type"
    description: "for your main job, what is the easiest way for you to report your total earnings before taxes or other deductions: hourly, weekly, annually, or some other way?"
    sql: ${TABLE}.teernper ;;
  }

  dimension: teernrt {
    type: number
    label: "Is Hourly"
    description: "even though you told me it is easier to report your earnings another way, are you paid at an hourly rate on this job?"
    sql: ${TABLE}.teernrt ;;
  }

  dimension: teernuot {
    type: number
    label: "Has Additional Pay"
    description: "do you usually receive overtime pay, tips, or commissions at your main job?"
    sql: ${TABLE}.teernuot ;;
  }

  dimension: teernwkp {
    type: number
    label: "Paid Weeks"
    description: "how many weeks a year do you get paid?"
    sql: ${TABLE}.teernwkp ;;
  }

  dimension: tehrftpt {
    type: number
    label: "More Than 35 Hrs"
    description: "do you usually work more than 35 hours per week at your job(s)/family business?"
    sql: ${TABLE}.tehrftpt ;;
  }

  dimension: tehrusl_1 {
    type: number
    label: "Main Job Hours Per Week"
    description: "how many hours per week do you usually work at your main job?"
    sql: ${TABLE}.tehrusl_1 ;;
  }

  dimension: tehrusl_2 {
    type: number
    label: "Other Job Hours Per Week"
    description: "how many hours per week do you usually work at your other job(s)?"
    sql: ${TABLE}.tehrusl_2 ;;
  }

  dimension: tehruslt {
    type: number
    label: "Total Hours Worked Per Week"
    description: "total hours usually worked per week (sum of TEHRUSL1 and TEHRUSL2)"
    sql: ${TABLE}.tehruslt ;;
  }

  dimension: teio_1_cow {
    type: number
    label: "Worker Code"
    description: "individual class of worker code (main job) "
    sql: ${TABLE}.teio_1_cow ;;
  }

  dimension: teio_1_icd {
    type: number
    label: "Industry Code"
    description: "industry code (main job)"
    sql: ${TABLE}.teio_1_icd ;;
  }

  dimension: teio_1_ocd {
    type: number
    label: "Occupation Code"
    description: "occupation code (main job) "
    sql: ${TABLE}.teio_1_ocd ;;
  }

  dimension: telayavl {
    type: number
    label: "Could Return To Work"
    description: "could you have returned to work in the last seven days if you had been recalled?"
    sql: ${TABLE}.telayavl ;;
  }

  dimension: telaylk {
    type: number
    label: "Is Looking For Work"
    description: "even though you expect to be called back to work, have you been looking for work during the last four weeks?"
    sql: ${TABLE}.telaylk ;;
  }

  dimension: telfs {
    type: number
    label: "Labor Force Status"
    description: "are you in the labor force?"
    sql: ${TABLE}.telfs ;;
  }

  dimension: telkavl {
    type: number
    label: "Can Start Job If Offered"
    description: "could you have started a job in the last seven days if one had been offered?"
    sql: ${TABLE}.telkavl ;;
  }

  dimension: telkm_1 {
    type: number
    label: "Find Work First Method"
    description: "what are all of the things you have done to find work during the last 4 weeks? (first method)
"
    sql: ${TABLE}.telkm_1 ;;
  }

  dimension: temjot {
    type: number
    label: "More Than One Job in Seven Days"
    description: "in the last seven days did you have more than one job?"
    sql: ${TABLE}.temjot ;;
  }

  dimension: teret_1 {
    type: number
    label: "Job Type"
    description: "do you currently want a job, either full or part time?"
    sql: ${TABLE}.teret_1 ;;
  }

  dimension: teschenr {
    type: number
    label: "Enrollment Status"
    description: "are you enrolled in high school, college, or university?"
    sql: ${TABLE}.teschenr ;;
  }

  dimension: teschft {
    type: number
    label: "Enrollment Type"
    description: "are you enrolled as a full-time or part-time student?"
    sql: ${TABLE}.teschft ;;
  }

  dimension: teschlvl {
    type: number
    label: "Enrollment Level"
    description: "would that be high school, college, or university?"
    sql: ${TABLE}.teschlvl ;;
  }

  dimension: tespempnot {
    type: number
    label: "Partner Employment Status"
    description: "employment status of spouse or unmarried partner"
    sql: ${TABLE}.tespempnot ;;
  }

  dimension: tespuhrs {
    type: number
    label: "Partner Hours of Work Per Week"
    description: "usual hours of work per week of spouse or unmarried partner"
    sql: ${TABLE}.tespuhrs ;;
  }

  dimension: trchildnum {
    type: number
    label: "Number of Children in Household"
    description: "Number of household children < 18"
    sql: ${TABLE}.trchildnum ;;
  }

  dimension: trdpftpt {
    type: number
    label: "Respondent Employment Status"
    description: "Full time or part time employment status of respondent"
    sql: ${TABLE}.trdpftpt ;;
  }

  dimension: trdtind_1 {
    type: number
    label: "Detailed Industry Recode"
    description: "Detailed industry recode (main job) "
    sql: ${TABLE}.trdtind_1 ;;
  }

  dimension: trdtocc_1 {
    type: number
    label: "Detailed Occupation Recode"
    description: "Detailed occupation recode (main job)"
    sql: ${TABLE}.trdtocc_1 ;;
  }

  dimension: tremodr {
    type: number
    label: "Responded to Eating and Health Module"
    description: "Responded or did not respond to Health Module"
    sql: ${TABLE}.tremodr ;;
  }

  dimension: trernhly {
    type: number
    label: "Earnings Hourly"
    description: "Hourly earnings at main job (2 implied decimals)"
    sql: ${TABLE}.trernhly ;;
  }

  dimension: trernupd {
    type: number
    label: "Earnings Updated Flag"
    description: "Earnings update flag"
    sql: ${TABLE}.trernupd ;;
  }

  dimension: trernwa {
    type: number
    label: "Earnings Weekly"
    description: "Weekly earnings at main job (2 implied decimals) "
    sql: ${TABLE}.trernwa ;;
  }

  dimension: trhernal {
    type: number
    label: "Allocation Flag"
    description: "allocation flag"
    sql: ${TABLE}.trhernal ;;
  }

  dimension: trhhchild {
    type: number
    label: "Is Child Present"
    description: "Presence of household children < 18"
    sql: ${TABLE}.trhhchild ;;
  }

  dimension: trholiday {
    type: number
    label: "Is Diary Holiday"
    description: "Flag to indicate if diary day was a holiday"
    sql: ${TABLE}.trholiday ;;
  }

  dimension: trimind_1 {
    type: number
    label: "Intermediate Industry Recode"
    description: "Intermediate industry recode (main job)"
    sql: ${TABLE}.trimind_1 ;;
  }

  dimension: trlvmodr {
    type: number
    label: "Is Leave Module Complete"
    description: ""
    sql: ${TABLE}.trlvmodr ;;
  }

  dimension: trmjind_1 {
    type: number
    label: "Major Industry Recode"
    description: "Major industry recode (main job) "
    sql: ${TABLE}.trmjind_1 ;;
  }

  dimension: trmjocc_1 {
    type: number
    label: "Major Occupation Recode"
    description: "Major occupation recode (main job) "
    sql: ${TABLE}.trmjocc_1 ;;
  }

  dimension: trmjocgr {
    type: number
    label: "Major Occupation Category"
    description: "Major occupation category (main job) "
    sql: ${TABLE}.trmjocgr ;;
  }

  dimension: trnhhchild {
    type: number
    label: "Is Own Non-Household Child Present"
    description: "Presence of own non-household child < 18"
    sql: ${TABLE}.trnhhchild ;;
  }

  dimension: trnumhou {
    type: number
    label: "Number of People Living in Household"
    description: "Number of people living in respondent's household"
    sql: ${TABLE}.trnumhou ;;
  }

  dimension: trohhchild {
    type: number
    label: "Is Own Household Child Present"
    description: "Presence of own household children < 18"
    sql: ${TABLE}.trohhchild ;;
  }

  dimension: trspftpt {
    type: number
    label: "Partner Employment Status Type"
    description: "Full time or part time employment status of spouse or unmarried partner"
    sql: ${TABLE}.trspftpt ;;
  }

  dimension: trsppres {
    type: number
    label: "Is Partner Present"
    description: "Presence of the respondent's spouse or unmarried partner in the household"
    sql: ${TABLE}.trsppres ;;
  }

  dimension: trtalone {
    type: number
    label: "Respondent Non-Work Alone Time"
    description: "Total nonwork-related time respondent spent alone (in minutes) "
    sql: ${TABLE}.trtalone ;;
  }

  dimension: trtalone_wk {
    type: number
    label: "Respondent Work and Non-Work Alone Time"
    description: "Total work- and nonwork-related time respondent spent alone (in minutes)"
    sql: ${TABLE}.trtalone_wk ;;
  }

  dimension: trtcc {
    type: number
    label: "Secondary Childcare Total Time"
    description: "Total time spent during diary day providing secondary childcare for household and own nonhousehold children < 13 (in minutes)"
    sql: ${TABLE}.trtcc ;;
  }

  dimension: trtccc {
    type: number
    label: "Nonwork-Related Total Time"
    description: "Total nonwork-related time respondent spent with customers, clients, and co-workers (in minutes)"
    sql: ${TABLE}.trtccc ;;
  }

  dimension: trtccc_wk {
    type: number
    label: "Work and Nonwork Total Time"
    description: "Total work- and nonwork-related time respondent spent with customers, clients, and coworkers (in minutes)"
    sql: ${TABLE}.trtccc_wk ;;
  }

  dimension: trtcctot {
    type: number
    label: "Secondary NonOwn NonHousehold Childcare Total Time"
    description: "Total time spent during diary day providing secondary childcare for nonown, nonhousehold children < 13 (in minutes)"
    sql: ${TABLE}.trtcctot ;;
  }

  dimension: trtchild {
    type: number
    label: "Nonwork Time Spent with Children Total Time"
    description: "Total nonwork-related time respondent spent with household or nonhousehold children < 18 (in minutes)"
    sql: ${TABLE}.trtchild ;;
  }

  dimension: trtcoc {
    type: number
    label: "Secondary NonOwn NonHousehold Childcare Total Time 2"
    description: "Total time spent during diary day providing secondary childcare for nonown, nonhousehold children < 13 (in minutes)"
    sql: ${TABLE}.trtcoc ;;
  }

  dimension: trtec {
    type: number
    label: "Eldcare Total Time"
    description: "Total time spent providing eldercare (in minutes)"
    sql: ${TABLE}.trtec ;;
  }

  dimension: trtfamily {
    type: number
    label: "Nonwork Family Total Time"
    description: "Total nonwork-related time respondent spent with family members (in minutes)"
    sql: ${TABLE}.trtfamily ;;
  }

  dimension: trtfriend {
    type: number
    label: "Nonwork Friend Total Time"
    description: "Total nonwork-related time respondent spent with friends (in minutes)"
    sql: ${TABLE}.trtfriend ;;
  }

  dimension: trthh {
    type: number
    label: "Secondary Own Household Childcare Total Time"
    description: "Total time spent during diary day providing secondary childcare for household children < 13 (in minutes)"
    sql: ${TABLE}.trthh ;;
  }

  dimension: trthhfamily {
    type: number
    label: "Nonwork Household Family Total Time"
    description: "Total nonwork-related time respondent spent with household family members (in minutes)"
    sql: ${TABLE}.trthhfamily ;;
  }

  dimension: trtnochild {
    type: number
    label: "Nonwork NonOwn Children Total Time"
    description: "Total nonwork-related time respondent spent with nonown children < 18 (in minutes)"
    sql: ${TABLE}.trtnochild ;;
  }

  dimension: trtnohh {
    type: number
    label: "Secondary Childcare NonOwn Household Total Time"
    description: "Total time spent during diary day providing secondary childcare for nonown household children < 13 (in minutes)"
    sql: ${TABLE}.trtnohh ;;
  }

  dimension: trto {
    type: number
    label: "Secondary Own Childcare Total Time"
    description: "Total time spent during diary day providing secondary childcare for own children < 13 (in minutes)"
    sql: ${TABLE}.trto ;;
  }

  dimension: trtohh {
    type: number
    label: "Secondary Own Household Childcare Total Time 2"
    description: "Total time spent during diary day providing secondary childcare for own household children < 13 (in minutes)"
    sql: ${TABLE}.trtohh ;;
  }

  dimension: trtohhchild {
    type: number
    label: "Nonwork Own Household Children Total Time"
    description: "Total nonwork-related time respondent spent with own household children < 18 (in minutes)"
    sql: ${TABLE}.trtohhchild ;;
  }

  dimension: trtonhh {
    type: number
    label: "Secondary Childcare Own Nonhousehold Total Time"
    description: "Total time spent during diary day providing secondary childcare for own nonhousehold children < 13 (in minutes)"
    sql: ${TABLE}.trtonhh ;;
  }

  dimension: trtonhhchild {
    type: number
    label: "Nonwork Own Nonhousehold Total Time"
    description: "Total nonwork-related time respondent spent with own nonhousehold children < 18 (in minutes)"
    sql: ${TABLE}.trtonhhchild ;;
  }

  dimension: trtsponly {
    type: number
    label: "Nonwork Spouse Only Total Time"
    description: "Total nonwork-related time respondent spent with spouse only (in minutes)"
    sql: ${TABLE}.trtsponly ;;
  }

  dimension: trtspouse {
    type: number
    label: "Nonwork Spouse and Others Total Time "
    description: "Total nonwork-related time respondent spent with spouse (others may be present) (in minutes)"
    sql: ${TABLE}.trtspouse ;;
  }

  dimension: trtunmpart {
    type: number
    label: "Nonwork Partner and Others Total Time"
    description: "Total nonwork-related time respondent spent with unmarried partner (others may be present) (in minutes)"
    sql: ${TABLE}.trtunmpart ;;
  }

  dimension: trwbmodr {
    type: number
    label: "Responded Well-Being Module"
    description: "Well-being Module respondent"
    sql: ${TABLE}.trwbmodr ;;
  }

  dimension: trwernal {
    type: number
    label: "TRERNWA Allocation Flag"
    description: "TRERNWA: allocation flag"
    sql: ${TABLE}.trwernal ;;
  }

  dimension: tryhhchild {
    type: number
    label: "Youngest Household Child Age"
    description: "Age of youngest household child < 18"
    sql: ${TABLE}.tryhhchild ;;
  }

  dimension: tthr {
    type: number
    label: "Hourly pay topcode flag"
    description: "Hourly pay topcode flag"
    sql: ${TABLE}.tthr ;;
  }

  dimension: ttot {
    type: number
    label: "Overtime amount topcode flag "
    description: "Overtime amount topcode flag "
    sql: ${TABLE}.ttot ;;
  }

  dimension: ttwk {
    type: number
    label: "Weekly earnings topcode flag"
    description: "Weekly earnings topcode flag"
    sql: ${TABLE}.ttwk ;;
  }

  dimension: tuabsot {
    type: number
    label: "Employed In Last 7 Days"
    description: "In the last seven days, did you have a job either full or part time?"
    sql: ${TABLE}.tuabsot ;;
  }

  dimension: tubus {
    type: number
    label: "Own Business or Farm"
    description: "Does anyone in the household own a business or a farm?"
    sql: ${TABLE}.tubus ;;
  }

  dimension: tubus_1 {
    type: number
    label: "Unpaid Work in Last 7 Days"
    description: "In the last seven days, did you do any unpaid work in the family business or farm?"
    sql: ${TABLE}.tubus_1 ;;
  }

  dimension: tubus_2_ot {
    type: number
    label: "Receives Profit From Business"
    description: "Do you receive payments or profits from the business?"
    sql: ${TABLE}.tubus_2_ot ;;
  }

  dimension: tubusl_1 {
    type: number
    label: "Business or Farm Owner Line No"
    description: "TULINENO of farm or business owner (first owner) "
    sql: ${TABLE}.tubusl_1 ;;
  }

  dimension: tubusl_2 {
    type: number
    label: "Secondary Business or Farm Owner Line No"
    description: "TULINENO of farm or business owner (second owner)"
    sql: ${TABLE}.tubusl_2 ;;
  }

  dimension: tubusl_3 {
    type: number
    label: "Third Business or Farm Owner Line No"
    description: "TULINENO of farm or business owner (third owner)"
    sql: ${TABLE}.tubusl_3 ;;
  }

  dimension: tubusl_4 {
    type: number
    label: "Fourth Business or Farm Owner Line No"
    description: "TULINENO of farm or business owner (fourth owner) "
    sql: ${TABLE}.tubusl_4 ;;
  }

  dimension: tucaseid {
    type: number
    label: "Case ID"
    description: "ATUS Case ID (14-digit identifier) "
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: tucc_2 {
    type: string
    label: "Household Child Wake Up Time"
    description: "Time first household child < 13 woke up"
    sql: ${TABLE}.tucc_2 ;;
  }

  dimension: tucc_4 {
    type: string
    label: "Household Child Bed Time"
    description: "Time last household child < 13 went to bed "
    sql: ${TABLE}.tucc_4 ;;
  }

  dimension: tucc_9 {
    type: number
    label: "Are NonOwn NonHousehold Children Related To Respondent"
    description: "Are the non-own, non-household children you cared for in TUCC8 related to you?"
    sql: ${TABLE}.tucc_9 ;;
  }

  dimension: tudiarydate {
    type: number
    label: "Diary Date"
    description: "Date of diary day (date about which the respondent was interviewed)"
    sql: ${TABLE}.tudiarydate ;;
  }

  dimension: tudiaryday {
    type: number
    label: "Diary Day"
    description: "Day of the week of diary day (day of the week about which the respondent was interviewed)"
    sql: ${TABLE}.tudiaryday ;;
  }

  dimension: tudis {
    type: number
    label: "Disability Status"
    description: "Last time we spoke to someone in this household you were reported to have a disability. Does your disability prevent you from doing any kind of work for the next six months?"
    sql: ${TABLE}.tudis ;;
  }

  dimension: tudis_1 {
    type: number
    label: "Does Disability Prevent Work For Next Six Months"
    description: "Does your disability prevent you from accepting any kind of work during the next six months?"
    sql: ${TABLE}.tudis_1 ;;
  }

  dimension: tudis_2 {
    type: number
    label: "Has Disability That Prevents Work For Next Six Months"
    description: "Do you have a disability that prevents you from accepting any kind of work during the next six months?"
    sql: ${TABLE}.tudis_2 ;;
  }

  dimension: tuecytd {
    type: number
    label: "Provided Previous Day Eldercare"
    description: "Did you provide any eldercare or assistance yesterday?"
    sql: ${TABLE}.tuecytd ;;
  }

  dimension: tuelder {
    type: number
    label: "Provided Assistance To Elderly Due To Aging"
    description: "Not including financial assistance or help you provided as part of your paid job, since the first of [REF_MONTH], have you provided any care of assistance for an adult who needed help because of a condition related to aging? "
    sql: ${TABLE}.tuelder ;;
  }

  dimension: tuelfreq {
    type: number
    label: "Elderly Assistance Duration"
    description: "How often did you provide this care?"
    sql: ${TABLE}.tuelfreq ;;
  }

  dimension: tuelnum {
    type: number
    label: "Elderly Assistance Total Events"
    description: "Since the first of [REF_MONTH], how many people have you provided this care to?"
    sql: ${TABLE}.tuelnum ;;
  }

  dimension: tufnwgtp {
    type: number
    label: "ATUS Final Weight"
    description: "ATUS final weight"
    sql: ${TABLE}.tufnwgtp ;;
  }

  dimension: tufwk {
    type: number
    label: "Paid Work Last Seven Days"
    description: "In the last seven days did you do any work for pay or profit?"
    sql: ${TABLE}.tufwk ;;
  }

  dimension: tuio_1_mfg {
    type: number
    label: "Trade or Manufacturing"
    description: "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else? (main job)"
    sql: ${TABLE}.tuio_1_mfg ;;
  }

  dimension: tuiodp_1 {
    type: number
    label: "Last Employer Reported flag"
    description: "Last time we spoke to someone in this household, you were reported to work for (employer's name). Do you still work for (employer's name)? (main job)"
    sql: ${TABLE}.tuiodp_1 ;;
  }

  dimension: tuiodp_2 {
    type: number
    label: "Job Activities Change flag"
    description: "Have the usual activities and duties of your job changed since (month of CPS interview)? (main job)"
    sql: ${TABLE}.tuiodp_2 ;;
  }

  dimension: tuiodp_3 {
    type: number
    label: "Last Job Reported Confirmation flag"
    description: "Last time we spoke to someone in this household, you were reported as (occupation) and your usual duties were (activities). Is this an accurate description of your current job? (main job)"
    sql: ${TABLE}.tuiodp_3 ;;
  }

  dimension: tulay {
    type: number
    label: "Lay Off in Last Seven Days"
    description: "During the last seven days were you on layoff from your job?"
    sql: ${TABLE}.tulay ;;
  }

  dimension: tulay_6_m {
    type: number
    label: "Recalled To Work in Six Months"
    description: "Have you been given any indication that you will be recalled to work within the next 6 months?"
    sql: ${TABLE}.tulay_6_m ;;
  }

  dimension: tulayavr {
    type: number
    label: "Reason for Not Starting Job in Last Week"
    description: "Why could you not have started a job in the last week?"
    sql: ${TABLE}.tulayavr ;;
  }

  dimension: tulaydt {
    type: number
    label: "Return from Layoff Date flag"
    description: "Has your employer given you a date to return to work? (to layoff job)"
    sql: ${TABLE}.tulaydt ;;
  }

  dimension: tulineno {
    type: number
    label: "ATUS person line number"
    description: "ATUS person line number"
    sql: ${TABLE}.tulineno ;;
  }

  dimension: tulk {
    type: number
    label: "Searched Job in Last Four Weeks"
    description: "Have you been doing anything to find work during the last four weeks?"
    sql: ${TABLE}.tulk ;;
  }

  dimension: tulkavr {
    type: number
    label: "Reason for Not Starting Job Last Week"
    description: "Why could you not have started a job last week?"
    sql: ${TABLE}.tulkavr ;;
  }

  dimension: tulkdk_1 {
    type: number
    label: "Job Search Status First Method"
    description: "You said you have been trying to find work. How did you go about looking? (first method)"
    sql: ${TABLE}.tulkdk_1 ;;
  }

  dimension: tulkdk_2 {
    type: number
    label: "Job Search Status Second Method"
    description: "You said you have been trying to find work. How did you go about looking? (second method)"
    sql: ${TABLE}.tulkdk_2 ;;
  }

  dimension: tulkdk_3 {
    type: number
    label: "Job Search Status Third Method"
    description: "You said you have been trying to find work. How did you go about looking? (third method)"
    sql: ${TABLE}.tulkdk_3 ;;
  }

  dimension: tulkm_2 {
    type: number
    label: ""
    description: "What are all of the things you have done to find work during the last 4 weeks? (second method)"
    sql: ${TABLE}.tulkm_2 ;;
  }

  measure: count {
    type: count
  }
}
