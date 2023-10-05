# The name of this view in Looker is "Fivetran Audit"
view: fivetran_audit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.fivetran_audit` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension_group: done {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.done ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Message" in Explore.

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension_group: progress {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.progress ;;
  }

  dimension: rows_updated_or_inserted {
    type: number
    sql: ${TABLE}.rows_updated_or_inserted ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rows_updated_or_inserted {
    type: sum
    sql: ${rows_updated_or_inserted} ;;  }
  measure: average_rows_updated_or_inserted {
    type: average
    sql: ${rows_updated_or_inserted} ;;  }

  dimension: schema {
    type: string
    sql: ${TABLE}.schema ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}.table ;;
  }

  dimension: update_id {
    type: string
    sql: ${TABLE}.update_id ;;
  }

  dimension_group: update_started {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.update_started ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
