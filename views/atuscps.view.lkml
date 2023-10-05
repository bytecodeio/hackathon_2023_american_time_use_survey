# The name of this view in Looker is "Atuscps"
view: atuscps {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.atuscps` ;;

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

  dimension: gediv {
    type: number
    sql: ${TABLE}.gediv ;;
  }

  dimension: gemetsta {
    type: number
    sql: ${TABLE}.gemetsta ;;
  }

  dimension: gepseucl {
    type: number
    sql: ${TABLE}.gepseucl ;;
  }

  dimension: gepseust {
    type: number
    sql: ${TABLE}.gepseust ;;
  }

  dimension: gereg {
    type: number
    sql: ${TABLE}.gereg ;;
  }

  dimension: gestfips {
    type: number
    sql: ${TABLE}.gestfips ;;
  }

  dimension: gtmetsta {
    type: number
    sql: ${TABLE}.gtmetsta ;;
  }

  dimension: hefaminc {
    type: number
    sql: ${TABLE}.hefaminc ;;
  }

  dimension: hehousut {
    type: number
    sql: ${TABLE}.hehousut ;;
  }

  dimension: hephoneo {
    type: number
    sql: ${TABLE}.hephoneo ;;
  }

  dimension: hetelavl {
    type: number
    sql: ${TABLE}.hetelavl ;;
  }

  dimension: hetelhhd {
    type: number
    sql: ${TABLE}.hetelhhd ;;
  }

  dimension: hetenure {
    type: number
    sql: ${TABLE}.hetenure ;;
  }

  dimension: hrhhid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hrhhid ;;
  }

  dimension: hrhhid_2 {
    type: number
    sql: ${TABLE}.hrhhid_2 ;;
  }

  dimension: hrhtype {
    type: number
    sql: ${TABLE}.hrhtype ;;
  }

  dimension: hrintsta {
    type: number
    sql: ${TABLE}.hrintsta ;;
  }

  dimension: hrlonglk {
    type: number
    sql: ${TABLE}.hrlonglk ;;
  }

  dimension: hrmis {
    type: number
    sql: ${TABLE}.hrmis ;;
  }

  dimension: hrmonth {
    type: number
    sql: ${TABLE}.hrmonth ;;
  }

  dimension: hrnumhou {
    type: number
    sql: ${TABLE}.hrnumhou ;;
  }

  dimension: hrsample {
    type: string
    sql: ${TABLE}.hrsample ;;
  }

  dimension: hrsersuf {
    type: string
    sql: ${TABLE}.hrsersuf ;;
  }

  dimension: hryear_4 {
    type: number
    sql: ${TABLE}.hryear_4 ;;
  }

  dimension: hubus {
    type: number
    sql: ${TABLE}.hubus ;;
  }

  dimension: hubusl_1 {
    type: number
    sql: ${TABLE}.hubusl_1 ;;
  }

  dimension: hubusl_2 {
    type: number
    sql: ${TABLE}.hubusl_2 ;;
  }

  dimension: hubusl_3 {
    type: number
    sql: ${TABLE}.hubusl_3 ;;
  }

  dimension: hubusl_4 {
    type: number
    sql: ${TABLE}.hubusl_4 ;;
  }

  dimension: hufaminc {
    type: number
    sql: ${TABLE}.hufaminc ;;
  }

  dimension: hufinal {
    type: number
    sql: ${TABLE}.hufinal ;;
  }

  dimension: huhhnum {
    type: number
    sql: ${TABLE}.huhhnum ;;
  }

  dimension: huinttyp {
    type: number
    sql: ${TABLE}.huinttyp ;;
  }

  dimension: huprscnt {
    type: number
    sql: ${TABLE}.huprscnt ;;
  }

  dimension: hurespli {
    type: number
    sql: ${TABLE}.hurespli ;;
  }

  dimension: huspnish {
    type: number
    sql: ${TABLE}.huspnish ;;
  }

  dimension: hxfaminc {
    type: number
    sql: ${TABLE}.hxfaminc ;;
  }

  dimension: peabspdo {
    type: number
    sql: ${TABLE}.peabspdo ;;
  }

  dimension: peabsrsn {
    type: number
    sql: ${TABLE}.peabsrsn ;;
  }

  dimension: peafever {
    type: number
    sql: ${TABLE}.peafever ;;
  }

  dimension: peafnow {
    type: number
    sql: ${TABLE}.peafnow ;;
  }

  dimension: peafwhen {
    type: number
    sql: ${TABLE}.peafwhen ;;
  }

  dimension: peafwhn_1 {
    type: number
    sql: ${TABLE}.peafwhn_1 ;;
  }

  dimension: peafwhn_2 {
    type: number
    sql: ${TABLE}.peafwhn_2 ;;
  }

  dimension: peafwhn_3 {
    type: number
    sql: ${TABLE}.peafwhn_3 ;;
  }

  dimension: peafwhn_4 {
    type: number
    sql: ${TABLE}.peafwhn_4 ;;
  }

  dimension: pecohab {
    type: number
    sql: ${TABLE}.pecohab ;;
  }

  dimension: pecyc {
    type: number
    sql: ${TABLE}.pecyc ;;
  }

  dimension: pedadtyp {
    type: number
    sql: ${TABLE}.pedadtyp ;;
  }

  dimension: pedipged {
    type: number
    sql: ${TABLE}.pedipged ;;
  }

  dimension: pedisdrs {
    type: number
    sql: ${TABLE}.pedisdrs ;;
  }

  dimension: pedisear {
    type: number
    sql: ${TABLE}.pedisear ;;
  }

  dimension: pediseye {
    type: number
    sql: ${TABLE}.pediseye ;;
  }

  dimension: pedisout {
    type: number
    sql: ${TABLE}.pedisout ;;
  }

  dimension: pedisphy {
    type: number
    sql: ${TABLE}.pedisphy ;;
  }

  dimension: pedisrem {
    type: number
    sql: ${TABLE}.pedisrem ;;
  }

  dimension: pedw_4_wk {
    type: number
    sql: ${TABLE}.pedw_4_wk ;;
  }

  dimension: pedwavl {
    type: number
    sql: ${TABLE}.pedwavl ;;
  }

  dimension: pedwavr {
    type: number
    sql: ${TABLE}.pedwavr ;;
  }

  dimension: pedwlko {
    type: number
    sql: ${TABLE}.pedwlko ;;
  }

  dimension: pedwlkwk {
    type: number
    sql: ${TABLE}.pedwlkwk ;;
  }

  dimension: pedwrsn {
    type: number
    sql: ${TABLE}.pedwrsn ;;
  }

  dimension: pedwwk {
    type: number
    sql: ${TABLE}.pedwwk ;;
  }

  dimension: pedwwnto {
    type: number
    sql: ${TABLE}.pedwwnto ;;
  }

  dimension: peeduca {
    type: number
    sql: ${TABLE}.peeduca ;;
  }

  dimension: peern {
    type: number
    sql: ${TABLE}.peern ;;
  }

  dimension: peerncov {
    type: number
    sql: ${TABLE}.peerncov ;;
  }

  dimension: peernh_1_o {
    type: number
    sql: ${TABLE}.peernh_1_o ;;
  }

  dimension: peernh_2 {
    type: number
    sql: ${TABLE}.peernh_2 ;;
  }

  dimension: peernhro {
    type: number
    sql: ${TABLE}.peernhro ;;
  }

  dimension: peernhry {
    type: number
    sql: ${TABLE}.peernhry ;;
  }

  dimension: peernlab {
    type: number
    sql: ${TABLE}.peernlab ;;
  }

  dimension: peernper {
    type: number
    sql: ${TABLE}.peernper ;;
  }

  dimension: peernrt {
    type: number
    sql: ${TABLE}.peernrt ;;
  }

  dimension: peernuot {
    type: number
    sql: ${TABLE}.peernuot ;;
  }

  dimension: peernwkp {
    type: number
    sql: ${TABLE}.peernwkp ;;
  }

  dimension: pefntvty {
    type: number
    sql: ${TABLE}.pefntvty ;;
  }

  dimension: pegr_6_cor {
    type: number
    sql: ${TABLE}.pegr_6_cor ;;
  }

  dimension: pegrprof {
    type: number
    sql: ${TABLE}.pegrprof ;;
  }

  dimension: pehgcomp {
    type: number
    sql: ${TABLE}.pehgcomp ;;
  }

  dimension: pehract_1 {
    type: number
    sql: ${TABLE}.pehract_1 ;;
  }

  dimension: pehract_2 {
    type: number
    sql: ${TABLE}.pehract_2 ;;
  }

  dimension: pehractt {
    type: number
    sql: ${TABLE}.pehractt ;;
  }

  dimension: pehravl {
    type: number
    sql: ${TABLE}.pehravl ;;
  }

  dimension: pehrftpt {
    type: number
    sql: ${TABLE}.pehrftpt ;;
  }

  dimension: pehrrsn_1 {
    type: number
    sql: ${TABLE}.pehrrsn_1 ;;
  }

  dimension: pehrrsn_2 {
    type: number
    sql: ${TABLE}.pehrrsn_2 ;;
  }

  dimension: pehrrsn_3 {
    type: number
    sql: ${TABLE}.pehrrsn_3 ;;
  }

  dimension: pehrusl_1 {
    type: number
    sql: ${TABLE}.pehrusl_1 ;;
  }

  dimension: pehrusl_2 {
    type: number
    sql: ${TABLE}.pehrusl_2 ;;
  }

  dimension: pehruslt {
    type: number
    sql: ${TABLE}.pehruslt ;;
  }

  dimension: pehrwant {
    type: number
    sql: ${TABLE}.pehrwant ;;
  }

  dimension: pehspnon {
    type: number
    sql: ${TABLE}.pehspnon ;;
  }

  dimension: peio_1_cow {
    type: number
    sql: ${TABLE}.peio_1_cow ;;
  }

  dimension: peio_1_icd {
    type: number
    sql: ${TABLE}.peio_1_icd ;;
  }

  dimension: peio_1_ocd {
    type: number
    sql: ${TABLE}.peio_1_ocd ;;
  }

  dimension: peio_2_cow {
    type: number
    sql: ${TABLE}.peio_2_cow ;;
  }

  dimension: peio_2_icd {
    type: number
    sql: ${TABLE}.peio_2_icd ;;
  }

  dimension: peio_2_ocd {
    type: number
    sql: ${TABLE}.peio_2_ocd ;;
  }

  dimension: pejhrsn {
    type: number
    sql: ${TABLE}.pejhrsn ;;
  }

  dimension: pejhwant {
    type: number
    sql: ${TABLE}.pejhwant ;;
  }

  dimension: pejhwko {
    type: number
    sql: ${TABLE}.pejhwko ;;
  }

  dimension: pelayavl {
    type: number
    sql: ${TABLE}.pelayavl ;;
  }

  dimension: pelaydur {
    type: number
    sql: ${TABLE}.pelaydur ;;
  }

  dimension: pelayfto {
    type: number
    sql: ${TABLE}.pelayfto ;;
  }

  dimension: pelaylk {
    type: number
    sql: ${TABLE}.pelaylk ;;
  }

  dimension: pelkavl {
    type: number
    sql: ${TABLE}.pelkavl ;;
  }

  dimension: pelkdur {
    type: number
    sql: ${TABLE}.pelkdur ;;
  }

  dimension: pelkfto {
    type: number
    sql: ${TABLE}.pelkfto ;;
  }

  dimension: pelkll_1_o {
    type: number
    sql: ${TABLE}.pelkll_1_o ;;
  }

  dimension: pelkll_2_o {
    type: number
    sql: ${TABLE}.pelkll_2_o ;;
  }

  dimension: pelklwo {
    type: number
    sql: ${TABLE}.pelklwo ;;
  }

  dimension: pelkm_1 {
    type: number
    sql: ${TABLE}.pelkm_1 ;;
  }

  dimension: pelndad {
    type: number
    sql: ${TABLE}.pelndad ;;
  }

  dimension: pelnmom {
    type: number
    sql: ${TABLE}.pelnmom ;;
  }

  dimension: pemaritl {
    type: number
    sql: ${TABLE}.pemaritl ;;
  }

  dimension: pemjnum {
    type: number
    sql: ${TABLE}.pemjnum ;;
  }

  dimension: pemjot {
    type: number
    sql: ${TABLE}.pemjot ;;
  }

  dimension: pemlr {
    type: number
    sql: ${TABLE}.pemlr ;;
  }

  dimension: pemntvty {
    type: number
    sql: ${TABLE}.pemntvty ;;
  }

  dimension: pemomtyp {
    type: number
    sql: ${TABLE}.pemomtyp ;;
  }

  dimension: pems_123 {
    type: number
    sql: ${TABLE}.pems_123 ;;
  }

  dimension: penatvty {
    type: number
    sql: ${TABLE}.penatvty ;;
  }

  dimension: penlfact {
    type: number
    sql: ${TABLE}.penlfact ;;
  }

  dimension: penlfjh {
    type: number
    sql: ${TABLE}.penlfjh ;;
  }

  dimension: penlfret {
    type: number
    sql: ${TABLE}.penlfret ;;
  }

  dimension: peparent {
    type: number
    sql: ${TABLE}.peparent ;;
  }

  dimension: pepdemp_1 {
    type: number
    sql: ${TABLE}.pepdemp_1 ;;
  }

  dimension: pepdemp_2 {
    type: number
    sql: ${TABLE}.pepdemp_2 ;;
  }

  dimension: peret_1 {
    type: number
    sql: ${TABLE}.peret_1 ;;
  }

  dimension: perrp {
    type: number
    sql: ${TABLE}.perrp ;;
  }

  dimension: peschenr {
    type: number
    sql: ${TABLE}.peschenr ;;
  }

  dimension: peschft {
    type: number
    sql: ${TABLE}.peschft ;;
  }

  dimension: peschlvl {
    type: number
    sql: ${TABLE}.peschlvl ;;
  }

  dimension: pesex {
    type: number
    sql: ${TABLE}.pesex ;;
  }

  dimension: pespouse {
    type: number
    sql: ${TABLE}.pespouse ;;
  }

  dimension: prabsrea {
    type: number
    sql: ${TABLE}.prabsrea ;;
  }

  dimension: pragna {
    type: number
    sql: ${TABLE}.pragna ;;
  }

  dimension: prcitshp {
    type: number
    sql: ${TABLE}.prcitshp ;;
  }

  dimension: prcivlf {
    type: number
    sql: ${TABLE}.prcivlf ;;
  }

  dimension: prcow_1 {
    type: number
    sql: ${TABLE}.prcow_1 ;;
  }

  dimension: prcow_2 {
    type: number
    sql: ${TABLE}.prcow_2 ;;
  }

  dimension: prcowpg {
    type: number
    sql: ${TABLE}.prcowpg ;;
  }

  dimension: prdasian {
    type: number
    sql: ${TABLE}.prdasian ;;
  }

  dimension: prdisc {
    type: number
    sql: ${TABLE}.prdisc ;;
  }

  dimension: prdisflg {
    type: number
    sql: ${TABLE}.prdisflg ;;
  }

  dimension: prdtcow_1 {
    type: number
    sql: ${TABLE}.prdtcow_1 ;;
  }

  dimension: prdtcow_2 {
    type: number
    sql: ${TABLE}.prdtcow_2 ;;
  }

  dimension: prdthsp {
    type: number
    sql: ${TABLE}.prdthsp ;;
  }

  dimension: prdtind_1 {
    type: number
    sql: ${TABLE}.prdtind_1 ;;
  }

  dimension: prdtind_2 {
    type: number
    sql: ${TABLE}.prdtind_2 ;;
  }

  dimension: prdtocc_1 {
    type: number
    sql: ${TABLE}.prdtocc_1 ;;
  }

  dimension: prdtocc_2 {
    type: number
    sql: ${TABLE}.prdtocc_2 ;;
  }

  dimension: premp {
    type: number
    sql: ${TABLE}.premp ;;
  }

  dimension: premphrs {
    type: number
    sql: ${TABLE}.premphrs ;;
  }

  dimension: prempnot {
    type: number
    sql: ${TABLE}.prempnot ;;
  }

  dimension: prerelg {
    type: number
    sql: ${TABLE}.prerelg ;;
  }

  dimension: prernhly {
    type: number
    sql: ${TABLE}.prernhly ;;
  }

  dimension: prernwa {
    type: number
    sql: ${TABLE}.prernwa ;;
  }

  dimension: prexplf {
    type: number
    sql: ${TABLE}.prexplf ;;
  }

  dimension: prfamnum {
    type: number
    sql: ${TABLE}.prfamnum ;;
  }

  dimension: prfamrel {
    type: number
    sql: ${TABLE}.prfamrel ;;
  }

  dimension: prfamtyp {
    type: number
    sql: ${TABLE}.prfamtyp ;;
  }

  dimension: prftlf {
    type: number
    sql: ${TABLE}.prftlf ;;
  }

  dimension: prhernal {
    type: number
    sql: ${TABLE}.prhernal ;;
  }

  dimension: prhrusl {
    type: number
    sql: ${TABLE}.prhrusl ;;
  }

  dimension: primind_1 {
    type: number
    sql: ${TABLE}.primind_1 ;;
  }

  dimension: primind_2 {
    type: number
    sql: ${TABLE}.primind_2 ;;
  }

  dimension: prinuyer {
    type: number
    sql: ${TABLE}.prinuyer ;;
  }

  dimension: prioelg {
    type: number
    sql: ${TABLE}.prioelg ;;
  }

  dimension: prjobsea {
    type: number
    sql: ${TABLE}.prjobsea ;;
  }

  dimension: prmarsta {
    type: number
    sql: ${TABLE}.prmarsta ;;
  }

  dimension: prmjind_1 {
    type: number
    sql: ${TABLE}.prmjind_1 ;;
  }

  dimension: prmjind_2 {
    type: number
    sql: ${TABLE}.prmjind_2 ;;
  }

  dimension: prmjocc_1 {
    type: number
    sql: ${TABLE}.prmjocc_1 ;;
  }

  dimension: prmjocc_2 {
    type: number
    sql: ${TABLE}.prmjocc_2 ;;
  }

  dimension: prmjocgr {
    type: number
    sql: ${TABLE}.prmjocgr ;;
  }

  dimension: prnagpws {
    type: number
    sql: ${TABLE}.prnagpws ;;
  }

  dimension: prnagws {
    type: number
    sql: ${TABLE}.prnagws ;;
  }

  dimension: prnlfsch {
    type: number
    sql: ${TABLE}.prnlfsch ;;
  }

  dimension: prnmchld {
    type: number
    sql: ${TABLE}.prnmchld ;;
  }

  dimension: prpertyp {
    type: number
    sql: ${TABLE}.prpertyp ;;
  }

  dimension: prpthrs {
    type: number
    sql: ${TABLE}.prpthrs ;;
  }

  dimension: prptrea {
    type: number
    sql: ${TABLE}.prptrea ;;
  }

  dimension: prsjmj {
    type: number
    sql: ${TABLE}.prsjmj ;;
  }

  dimension: prtage {
    type: number
    sql: ${TABLE}.prtage ;;
  }

  dimension: prunedur {
    type: number
    sql: ${TABLE}.prunedur ;;
  }

  dimension: pruntype {
    type: number
    sql: ${TABLE}.pruntype ;;
  }

  dimension: prwernal {
    type: number
    sql: ${TABLE}.prwernal ;;
  }

  dimension: prwksch {
    type: number
    sql: ${TABLE}.prwksch ;;
  }

  dimension: prwkstat {
    type: number
    sql: ${TABLE}.prwkstat ;;
  }

  dimension: prwntjob {
    type: number
    sql: ${TABLE}.prwntjob ;;
  }

  dimension: ptdtrace {
    type: number
    sql: ${TABLE}.ptdtrace ;;
  }

  dimension: pthr {
    type: number
    sql: ${TABLE}.pthr ;;
  }

  dimension: ptnmemp_1 {
    type: number
    sql: ${TABLE}.ptnmemp_1 ;;
  }

  dimension: ptnmemp_2 {
    type: number
    sql: ${TABLE}.ptnmemp_2 ;;
  }

  dimension: ptot {
    type: number
    sql: ${TABLE}.ptot ;;
  }

  dimension: ptwk {
    type: number
    sql: ${TABLE}.ptwk ;;
  }

  dimension: puabsot {
    type: number
    sql: ${TABLE}.puabsot ;;
  }

  dimension: puafever {
    type: number
    sql: ${TABLE}.puafever ;;
  }

  dimension: pubus_1 {
    type: number
    sql: ${TABLE}.pubus_1 ;;
  }

  dimension: pubus_2_ot {
    type: number
    sql: ${TABLE}.pubus_2_ot ;;
  }

  dimension: pudis {
    type: number
    sql: ${TABLE}.pudis ;;
  }

  dimension: pudis_1 {
    type: number
    sql: ${TABLE}.pudis_1 ;;
  }

  dimension: pudis_2 {
    type: number
    sql: ${TABLE}.pudis_2 ;;
  }

  dimension: puhroff_1 {
    type: number
    sql: ${TABLE}.puhroff_1 ;;
  }

  dimension: puhroff_2 {
    type: number
    sql: ${TABLE}.puhroff_2 ;;
  }

  dimension: puhrot_1 {
    type: number
    sql: ${TABLE}.puhrot_1 ;;
  }

  dimension: puhrot_2 {
    type: number
    sql: ${TABLE}.puhrot_2 ;;
  }

  dimension: pujhdp_1_o {
    type: number
    sql: ${TABLE}.pujhdp_1_o ;;
  }

  dimension: pulay {
    type: number
    sql: ${TABLE}.pulay ;;
  }

  dimension: pulay_6_m {
    type: number
    sql: ${TABLE}.pulay_6_m ;;
  }

  dimension: pulayavr {
    type: number
    sql: ${TABLE}.pulayavr ;;
  }

  dimension: pulaydt {
    type: number
    sql: ${TABLE}.pulaydt ;;
  }

  dimension: pulineno {
    type: number
    sql: ${TABLE}.pulineno ;;
  }

  dimension: pulk {
    type: number
    sql: ${TABLE}.pulk ;;
  }

  dimension: pulkavr {
    type: number
    sql: ${TABLE}.pulkavr ;;
  }

  dimension: pulkdk_1 {
    type: number
    sql: ${TABLE}.pulkdk_1 ;;
  }

  dimension: pulkdk_2 {
    type: number
    sql: ${TABLE}.pulkdk_2 ;;
  }

  dimension: pulkdk_3 {
    type: number
    sql: ${TABLE}.pulkdk_3 ;;
  }

  dimension: pulkdk_4 {
    type: number
    sql: ${TABLE}.pulkdk_4 ;;
  }

  dimension: pulkm_2 {
    type: number
    sql: ${TABLE}.pulkm_2 ;;
  }

  dimension: pulkm_3 {
    type: number
    sql: ${TABLE}.pulkm_3 ;;
  }

  dimension: pulkm_4 {
    type: number
    sql: ${TABLE}.pulkm_4 ;;
  }

  dimension: pulkm_5 {
    type: number
    sql: ${TABLE}.pulkm_5 ;;
  }

  dimension: pulkm_6 {
    type: number
    sql: ${TABLE}.pulkm_6 ;;
  }

  dimension: pulkps_1 {
    type: number
    sql: ${TABLE}.pulkps_1 ;;
  }

  dimension: pulkps_2 {
    type: number
    sql: ${TABLE}.pulkps_2 ;;
  }

  dimension: pulkps_3 {
    type: number
    sql: ${TABLE}.pulkps_3 ;;
  }

  dimension: pulkps_4 {
    type: number
    sql: ${TABLE}.pulkps_4 ;;
  }

  dimension: pupelig {
    type: number
    sql: ${TABLE}.pupelig ;;
  }

  dimension: puretot {
    type: number
    sql: ${TABLE}.puretot ;;
  }

  dimension: puslfprx {
    type: number
    sql: ${TABLE}.puslfprx ;;
  }

  dimension: puwk {
    type: number
    sql: ${TABLE}.puwk ;;
  }

  dimension: tratusr {
    type: number
    sql: ${TABLE}.tratusr ;;
  }

  dimension: tubwgt {
    type: number
    sql: ${TABLE}.tubwgt ;;
  }

  dimension: tucaseid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: tulineno {
    type: number
    sql: ${TABLE}.tulineno ;;
  }
  measure: count {
    type: count
  }
}
