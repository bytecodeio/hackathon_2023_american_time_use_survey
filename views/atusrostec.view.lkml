# The name of this view in Looker is "Atusrostec"
view: atusrostec {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.atusrostec` ;;

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

  dimension: teage_ec {
    type: number
    sql: ${TABLE}.teage_ec ;;
  }

  dimension: teeldur {
    type: number
    sql: ${TABLE}.teeldur ;;
  }

  dimension: teelwho {
    type: number
    sql: ${TABLE}.teelwho ;;
  }

  dimension: teelyrs {
    type: number
    sql: ${TABLE}.teelyrs ;;
  }

  dimension: trelhh {
    type: number
    sql: ${TABLE}.trelhh ;;
  }

  dimension: tucaseid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: tueclno {
    type: number
    sql: ${TABLE}.tueclno ;;
  }

  dimension: tulineno {
    type: number
    sql: ${TABLE}.tulineno ;;
  }
  measure: count {
    type: count
  }
}
