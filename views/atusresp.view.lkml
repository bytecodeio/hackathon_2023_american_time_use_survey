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
    sql: ${TABLE}.teabsrsn ;;
  }

  dimension: teern {
    type: number
    sql: ${TABLE}.teern ;;
  }

  dimension: teernh_1_o {
    type: number
    sql: ${TABLE}.teernh_1_o ;;
  }

  dimension: teernh_2 {
    type: number
    sql: ${TABLE}.teernh_2 ;;
  }

  dimension: teernhro {
    type: number
    sql: ${TABLE}.teernhro ;;
  }

  dimension: teernhry {
    type: number
    sql: ${TABLE}.teernhry ;;
  }

  dimension: teernper {
    type: number
    sql: ${TABLE}.teernper ;;
  }

  dimension: teernrt {
    type: number
    sql: ${TABLE}.teernrt ;;
  }

  dimension: teernuot {
    type: number
    sql: ${TABLE}.teernuot ;;
  }

  dimension: teernwkp {
    type: number
    sql: ${TABLE}.teernwkp ;;
  }

  dimension: tehrftpt {
    type: number
    sql: ${TABLE}.tehrftpt ;;
  }

  dimension: tehrusl_1 {
    type: number
    sql: ${TABLE}.tehrusl_1 ;;
  }

  dimension: tehrusl_2 {
    type: number
    sql: ${TABLE}.tehrusl_2 ;;
  }

  dimension: tehruslt {
    type: number
    sql: ${TABLE}.tehruslt ;;
  }

  dimension: teio_1_cow {
    type: number
    sql: ${TABLE}.teio_1_cow ;;
  }

  dimension: teio_1_icd {
    type: number
    sql: ${TABLE}.teio_1_icd ;;
  }

  dimension: teio_1_ocd {
    type: number
    sql: ${TABLE}.teio_1_ocd ;;
  }

  dimension: telayavl {
    type: number
    sql: ${TABLE}.telayavl ;;
  }

  dimension: telaylk {
    type: number
    sql: ${TABLE}.telaylk ;;
  }

  dimension: telfs {
    type: number
    sql: ${TABLE}.telfs ;;
  }

  dimension: telkavl {
    type: number
    sql: ${TABLE}.telkavl ;;
  }

  dimension: telkm_1 {
    type: number
    sql: ${TABLE}.telkm_1 ;;
  }

  dimension: temjot {
    type: number
    sql: ${TABLE}.temjot ;;
  }

  dimension: teret_1 {
    type: number
    sql: ${TABLE}.teret_1 ;;
  }

  dimension: teschenr {
    type: number
    sql: ${TABLE}.teschenr ;;
  }

  dimension: teschft {
    type: number
    sql: ${TABLE}.teschft ;;
  }

  dimension: teschlvl {
    type: number
    sql: ${TABLE}.teschlvl ;;
  }

  dimension: tespempnot {
    type: number
    sql: ${TABLE}.tespempnot ;;
  }

  dimension: tespuhrs {
    type: number
    sql: ${TABLE}.tespuhrs ;;
  }

  dimension: trchildnum {
    type: number
    sql: ${TABLE}.trchildnum ;;
  }

  dimension: trdpftpt {
    type: number
    sql: ${TABLE}.trdpftpt ;;
  }

  dimension: trdtind_1 {
    type: number
    sql: ${TABLE}.trdtind_1 ;;
  }

  dimension: trdtocc_1 {
    type: number
    sql: ${TABLE}.trdtocc_1 ;;
  }

  dimension: tremodr {
    type: number
    sql: ${TABLE}.tremodr ;;
  }

  dimension: trernhly {
    type: number
    sql: ${TABLE}.trernhly ;;
  }

  dimension: trernupd {
    type: number
    sql: ${TABLE}.trernupd ;;
  }

  dimension: trernwa {
    type: number
    sql: ${TABLE}.trernwa ;;
  }

  dimension: trhernal {
    type: number
    sql: ${TABLE}.trhernal ;;
  }

  dimension: trhhchild {
    type: number
    sql: ${TABLE}.trhhchild ;;
  }

  dimension: trholiday {
    type: number
    sql: ${TABLE}.trholiday ;;
  }

  dimension: trimind_1 {
    type: number
    sql: ${TABLE}.trimind_1 ;;
  }

  dimension: trlvmodr {
    type: number
    sql: ${TABLE}.trlvmodr ;;
  }

  dimension: trmjind_1 {
    type: number
    sql: ${TABLE}.trmjind_1 ;;
  }

  dimension: trmjocc_1 {
    type: number
    sql: ${TABLE}.trmjocc_1 ;;
  }

  dimension: trmjocgr {
    type: number
    sql: ${TABLE}.trmjocgr ;;
  }

  dimension: trnhhchild {
    type: number
    sql: ${TABLE}.trnhhchild ;;
  }

  dimension: trnumhou {
    type: number
    sql: ${TABLE}.trnumhou ;;
  }

  dimension: trohhchild {
    type: number
    sql: ${TABLE}.trohhchild ;;
  }

  dimension: trspftpt {
    type: number
    sql: ${TABLE}.trspftpt ;;
  }

  dimension: trsppres {
    type: number
    sql: ${TABLE}.trsppres ;;
  }

  dimension: trtalone {
    type: number
    sql: ${TABLE}.trtalone ;;
  }

  dimension: trtalone_wk {
    type: number
    sql: ${TABLE}.trtalone_wk ;;
  }

  dimension: trtcc {
    type: number
    sql: ${TABLE}.trtcc ;;
  }

  dimension: trtccc {
    type: number
    sql: ${TABLE}.trtccc ;;
  }

  dimension: trtccc_wk {
    type: number
    sql: ${TABLE}.trtccc_wk ;;
  }

  dimension: trtcctot {
    type: number
    sql: ${TABLE}.trtcctot ;;
  }

  dimension: trtchild {
    type: number
    sql: ${TABLE}.trtchild ;;
  }

  dimension: trtcoc {
    type: number
    sql: ${TABLE}.trtcoc ;;
  }

  dimension: trtec {
    type: number
    sql: ${TABLE}.trtec ;;
  }

  dimension: trtfamily {
    type: number
    sql: ${TABLE}.trtfamily ;;
  }

  dimension: trtfriend {
    type: number
    sql: ${TABLE}.trtfriend ;;
  }

  dimension: trthh {
    type: number
    sql: ${TABLE}.trthh ;;
  }

  dimension: trthhfamily {
    type: number
    sql: ${TABLE}.trthhfamily ;;
  }

  dimension: trtnochild {
    type: number
    sql: ${TABLE}.trtnochild ;;
  }

  dimension: trtnohh {
    type: number
    sql: ${TABLE}.trtnohh ;;
  }

  dimension: trto {
    type: number
    sql: ${TABLE}.trto ;;
  }

  dimension: trtohh {
    type: number
    sql: ${TABLE}.trtohh ;;
  }

  dimension: trtohhchild {
    type: number
    sql: ${TABLE}.trtohhchild ;;
  }

  dimension: trtonhh {
    type: number
    sql: ${TABLE}.trtonhh ;;
  }

  dimension: trtonhhchild {
    type: number
    sql: ${TABLE}.trtonhhchild ;;
  }

  dimension: trtsponly {
    type: number
    sql: ${TABLE}.trtsponly ;;
  }

  dimension: trtspouse {
    type: number
    sql: ${TABLE}.trtspouse ;;
  }

  dimension: trtunmpart {
    type: number
    sql: ${TABLE}.trtunmpart ;;
  }

  dimension: trwbmodr {
    type: number
    sql: ${TABLE}.trwbmodr ;;
  }

  dimension: trwernal {
    type: number
    sql: ${TABLE}.trwernal ;;
  }

  dimension: tryhhchild {
    type: number
    sql: ${TABLE}.tryhhchild ;;
  }

  dimension: tthr {
    type: number
    sql: ${TABLE}.tthr ;;
  }

  dimension: ttot {
    type: number
    sql: ${TABLE}.ttot ;;
  }

  dimension: ttwk {
    type: number
    sql: ${TABLE}.ttwk ;;
  }

  dimension: tuabsot {
    type: number
    sql: ${TABLE}.tuabsot ;;
  }

  dimension: tubus {
    type: number
    sql: ${TABLE}.tubus ;;
  }

  dimension: tubus_1 {
    type: number
    sql: ${TABLE}.tubus_1 ;;
  }

  dimension: tubus_2_ot {
    type: number
    sql: ${TABLE}.tubus_2_ot ;;
  }

  dimension: tubusl_1 {
    type: number
    sql: ${TABLE}.tubusl_1 ;;
  }

  dimension: tubusl_2 {
    type: number
    sql: ${TABLE}.tubusl_2 ;;
  }

  dimension: tubusl_3 {
    type: number
    sql: ${TABLE}.tubusl_3 ;;
  }

  dimension: tubusl_4 {
    type: number
    sql: ${TABLE}.tubusl_4 ;;
  }

  dimension: tucaseid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: tucc_2 {
    type: string
    sql: ${TABLE}.tucc_2 ;;
  }

  dimension: tucc_4 {
    type: string
    sql: ${TABLE}.tucc_4 ;;
  }

  dimension: tucc_9 {
    type: number
    sql: ${TABLE}.tucc_9 ;;
  }

  dimension: tudiarydate {
    type: number
    sql: ${TABLE}.tudiarydate ;;
  }

  dimension: tudiaryday {
    type: number
    sql: ${TABLE}.tudiaryday ;;
  }

  dimension: tudis {
    type: number
    sql: ${TABLE}.tudis ;;
  }

  dimension: tudis_1 {
    type: number
    sql: ${TABLE}.tudis_1 ;;
  }

  dimension: tudis_2 {
    type: number
    sql: ${TABLE}.tudis_2 ;;
  }

  dimension: tuecytd {
    type: number
    sql: ${TABLE}.tuecytd ;;
  }

  dimension: tuelder {
    type: number
    sql: ${TABLE}.tuelder ;;
  }

  dimension: tuelfreq {
    type: number
    sql: ${TABLE}.tuelfreq ;;
  }

  dimension: tuelnum {
    type: number
    sql: ${TABLE}.tuelnum ;;
  }

  dimension: tufnwgtp {
    type: number
    sql: ${TABLE}.tufnwgtp ;;
  }

  dimension: tufwk {
    type: number
    sql: ${TABLE}.tufwk ;;
  }

  dimension: tuio_1_mfg {
    type: number
    sql: ${TABLE}.tuio_1_mfg ;;
  }

  dimension: tuiodp_1 {
    type: number
    sql: ${TABLE}.tuiodp_1 ;;
  }

  dimension: tuiodp_2 {
    type: number
    sql: ${TABLE}.tuiodp_2 ;;
  }

  dimension: tuiodp_3 {
    type: number
    sql: ${TABLE}.tuiodp_3 ;;
  }

  dimension: tulay {
    type: number
    sql: ${TABLE}.tulay ;;
  }

  dimension: tulay_6_m {
    type: number
    sql: ${TABLE}.tulay_6_m ;;
  }

  dimension: tulayavr {
    type: number
    sql: ${TABLE}.tulayavr ;;
  }

  dimension: tulaydt {
    type: number
    sql: ${TABLE}.tulaydt ;;
  }

  dimension: tulineno {
    type: number
    sql: ${TABLE}.tulineno ;;
  }

  dimension: tulk {
    type: number
    sql: ${TABLE}.tulk ;;
  }

  dimension: tulkavr {
    type: number
    sql: ${TABLE}.tulkavr ;;
  }

  dimension: tulkdk_1 {
    type: number
    sql: ${TABLE}.tulkdk_1 ;;
  }

  dimension: tulkdk_2 {
    type: number
    sql: ${TABLE}.tulkdk_2 ;;
  }

  dimension: tulkdk_3 {
    type: number
    sql: ${TABLE}.tulkdk_3 ;;
  }

  dimension: tulkdk_4 {
    type: number
    sql: ${TABLE}.tulkdk_4 ;;
  }

  dimension: tulkm_2 {
    type: number
    sql: ${TABLE}.tulkm_2 ;;
  }

  dimension: tulkm_3 {
    type: number
    sql: ${TABLE}.tulkm_3 ;;
  }

  dimension: tulkm_4 {
    type: number
    sql: ${TABLE}.tulkm_4 ;;
  }

  dimension: tulkm_5 {
    type: number
    sql: ${TABLE}.tulkm_5 ;;
  }

  dimension: tulkm_6 {
    type: number
    sql: ${TABLE}.tulkm_6 ;;
  }

  dimension: tulkps_1 {
    type: number
    sql: ${TABLE}.tulkps_1 ;;
  }

  dimension: tulkps_2 {
    type: number
    sql: ${TABLE}.tulkps_2 ;;
  }

  dimension: tulkps_3 {
    type: number
    sql: ${TABLE}.tulkps_3 ;;
  }

  dimension: tulkps_4 {
    type: number
    sql: ${TABLE}.tulkps_4 ;;
  }

  dimension: tumonth {
    type: number
    sql: ${TABLE}.tumonth ;;
  }

  dimension: turetot {
    type: number
    sql: ${TABLE}.turetot ;;
  }

  dimension: tuspabs {
    type: number
    sql: ${TABLE}.tuspabs ;;
  }

  dimension: tuspusft {
    type: number
    sql: ${TABLE}.tuspusft ;;
  }

  dimension: tuspwk {
    type: number
    sql: ${TABLE}.tuspwk ;;
  }

  dimension: tuyear {
    type: number
    sql: ${TABLE}.tuyear ;;
  }
  measure: count {
    type: count
  }
}
