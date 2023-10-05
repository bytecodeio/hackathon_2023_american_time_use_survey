# The name of this view in Looker is "Atusact"
view: atusact {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.atusact` ;;

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

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${tucaseid},${tuactivity_n} ;;
  }

  dimension: tewhere {
    type: number
    sql: ${TABLE}.tewhere ;;
  }

  dimension: tr_03_cc_57 {
    type: number
    sql: ${TABLE}.tr_03_cc_57 ;;
  }

  dimension: trcodep {
    type: number
    sql: ${TABLE}.trcodep ;;
  }

  dimension: trtcc_ln {
    description: "Total time spent during activity providing secondary child care for household and own nonhousehold children &lt; 13 (in minutes)"
    type: number
    sql: ${TABLE}.trtcc_ln ;;
  }

  dimension: trtcctot_ln {
    description: "Total time spent during activity providing secondary childcare for all children < 13"
    type: number
    sql: ${TABLE}.trtcctot_ln ;;
  }

  dimension: trtcoc_ln {
    description: "Total time spent during activity providing secondary child care for nonown, nonhousehold children &lt;13 (in minutes)"
       type: number
    sql: ${TABLE}.trtcoc_ln ;;
  }

  dimension: trtec_ln {
    type: number
    sql: ${TABLE}.trtec_ln ;;
  }

  dimension: trthh_ln {
    type: number
    sql: ${TABLE}.trthh_ln ;;
  }

  dimension: trtier_1_p {
    type: number
    sql: ${TABLE}.trtier_1_p ;;
  }

  dimension: trtier_2_p {
    type: number
    sql: ${TABLE}.trtier_2_p ;;
  }

  dimension: trtnohh_ln {
    type: number
    sql: ${TABLE}.trtnohh_ln ;;
  }

  dimension: trto_ln {
    type: number
    sql: ${TABLE}.trto_ln ;;
  }

  dimension: trtohh_ln {
    type: number
    sql: ${TABLE}.trtohh_ln ;;
  }

  dimension: trtonhh_ln {
    type: number
    sql: ${TABLE}.trtonhh_ln ;;
  }

  dimension: trwbelig {
    type: number
    sql: ${TABLE}.trwbelig ;;
  }

  dimension: tuactdur {
    type: number
    sql: ${TABLE}.tuactdur ;;
  }

  dimension: tuactdur_24 {
    description: "Duration of activity in minutes (last activity truncated at 4:00 a.m.). Allowable max and min values are 1440 and 1 respectively"
    type: number
    sql: ${TABLE}.tuactdur_24 ;;
  }

  dimension: tuactivity_n {
    description: "Activity line number. Used in Activity File, Who File, EH Activity File"
    type: number
    sql: ${TABLE}.tuactivity_n ;;
  }

  dimension: tucaseid {
    description: "ATUS Case ID (14-digit identifier)"
    type: number
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: tucc_5 {
    description: "Was at least one of your own household children < 13"
    type: number
    sql: ${TABLE}.tucc_5 ;;
  }

  dimension: tucc_5_b {
    description: "Was at least one of your non-own household children < 13"
    type: number
    sql: ${TABLE}.tucc_5_b ;;
  }

  dimension: tucc_7 {
    type: number
    sql: ${TABLE}.tucc_7 ;;
  }

  dimension: tucc_8 {
    type: number
    sql: ${TABLE}.tucc_8 ;;
  }

  dimension: tucumdur {
    type: number
    sql: ${TABLE}.tucumdur ;;
  }

  dimension: tucumdur_24 {
    type: number
    sql: ${TABLE}.tucumdur_24 ;;
  }

  dimension: tudurstop {
    type: number
    sql: ${TABLE}.tudurstop ;;
  }

  dimension: tuec_24 {
    type: number
    sql: ${TABLE}.tuec_24 ;;
  }

  dimension: tustarttim {
    description: "Activity start time. Valid values range 00:00:00 - 24:00:00."
    type: string
    sql: ${TABLE}.tustarttim ;;
  }

  dimension: tustoptime {
    type: string
    sql: ${TABLE}.tustoptime ;;
  }
  measure: count {
    type: count
  }
}
