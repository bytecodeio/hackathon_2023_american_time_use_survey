# The name of this view in Looker is "Atussum"
view: atussum {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.atussum` ;;

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


  dimension: tucaseid {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: gemetsta {
    type: number
    sql: ${TABLE}.gemetsta ;;
  }

  dimension: gtmetsta {
    type: number
    sql: ${TABLE}.gtmetsta ;;
  }

  dimension: peeduca {
    type: number
    sql: ${TABLE}.peeduca ;;
  }

  dimension: pehspnon {
    type: number
    sql: ${TABLE}.pehspnon ;;
  }

  dimension: ptdtrace {
    type: number
    sql: ${TABLE}.ptdtrace ;;
  }

  dimension: t_010101 {
    type: number
    sql: ${TABLE}.t_010101 ;;
  }

  dimension: t_010102 {
    type: number
    sql: ${TABLE}.t_010102 ;;
  }

  dimension: t_010199 {
    type: number
    sql: ${TABLE}.t_010199 ;;
  }

  dimension: t_010201 {
    type: number
    sql: ${TABLE}.t_010201 ;;
  }

  dimension: t_010299 {
    type: number
    sql: ${TABLE}.t_010299 ;;
  }

  dimension: t_010301 {
    type: number
    sql: ${TABLE}.t_010301 ;;
  }

  dimension: t_010399 {
    type: number
    sql: ${TABLE}.t_010399 ;;
  }

  dimension: t_010401 {
    type: number
    sql: ${TABLE}.t_010401 ;;
  }

  dimension: t_010499 {
    type: number
    sql: ${TABLE}.t_010499 ;;
  }

  dimension: t_010501 {
    type: number
    sql: ${TABLE}.t_010501 ;;
  }

  dimension: t_010599 {
    type: number
    sql: ${TABLE}.t_010599 ;;
  }

  dimension: t_019999 {
    type: number
    sql: ${TABLE}.t_019999 ;;
  }

  dimension: t_020101 {
    type: number
    sql: ${TABLE}.t_020101 ;;
  }

  dimension: t_020102 {
    type: number
    sql: ${TABLE}.t_020102 ;;
  }

  dimension: t_020103 {
    type: number
    sql: ${TABLE}.t_020103 ;;
  }

  dimension: t_020104 {
    type: number
    sql: ${TABLE}.t_020104 ;;
  }

  dimension: t_020199 {
    type: number
    sql: ${TABLE}.t_020199 ;;
  }

  dimension: t_020201 {
    type: number
    sql: ${TABLE}.t_020201 ;;
  }

  dimension: t_020202 {
    type: number
    sql: ${TABLE}.t_020202 ;;
  }

  dimension: t_020203 {
    type: number
    sql: ${TABLE}.t_020203 ;;
  }

  dimension: t_020299 {
    type: number
    sql: ${TABLE}.t_020299 ;;
  }

  dimension: t_020301 {
    type: number
    sql: ${TABLE}.t_020301 ;;
  }

  dimension: t_020302 {
    type: number
    sql: ${TABLE}.t_020302 ;;
  }

  dimension: t_020303 {
    type: number
    sql: ${TABLE}.t_020303 ;;
  }

  dimension: t_020399 {
    type: number
    sql: ${TABLE}.t_020399 ;;
  }

  dimension: t_020401 {
    type: number
    sql: ${TABLE}.t_020401 ;;
  }

  dimension: t_020402 {
    type: number
    sql: ${TABLE}.t_020402 ;;
  }

  dimension: t_020499 {
    type: number
    sql: ${TABLE}.t_020499 ;;
  }

  dimension: t_020501 {
    type: number
    sql: ${TABLE}.t_020501 ;;
  }

  dimension: t_020502 {
    type: number
    sql: ${TABLE}.t_020502 ;;
  }

  dimension: t_020599 {
    type: number
    sql: ${TABLE}.t_020599 ;;
  }

  dimension: t_020681 {
    type: number
    sql: ${TABLE}.t_020681 ;;
  }

  dimension: t_020699 {
    type: number
    sql: ${TABLE}.t_020699 ;;
  }

  dimension: t_020701 {
    type: number
    sql: ${TABLE}.t_020701 ;;
  }

  dimension: t_020799 {
    type: number
    sql: ${TABLE}.t_020799 ;;
  }

  dimension: t_020801 {
    type: number
    sql: ${TABLE}.t_020801 ;;
  }

  dimension: t_020899 {
    type: number
    sql: ${TABLE}.t_020899 ;;
  }

  dimension: t_020901 {
    type: number
    sql: ${TABLE}.t_020901 ;;
  }

  dimension: t_020902 {
    type: number
    sql: ${TABLE}.t_020902 ;;
  }

  dimension: t_020903 {
    type: number
    sql: ${TABLE}.t_020903 ;;
  }

  dimension: t_020904 {
    type: number
    sql: ${TABLE}.t_020904 ;;
  }

  dimension: t_020905 {
    type: number
    sql: ${TABLE}.t_020905 ;;
  }

  dimension: t_020999 {
    type: number
    sql: ${TABLE}.t_020999 ;;
  }

  dimension: t_029999 {
    type: number
    sql: ${TABLE}.t_029999 ;;
  }

  dimension: t_030101 {
    type: number
    sql: ${TABLE}.t_030101 ;;
  }

  dimension: t_030102 {
    type: number
    sql: ${TABLE}.t_030102 ;;
  }

  dimension: t_030103 {
    type: number
    sql: ${TABLE}.t_030103 ;;
  }

  dimension: t_030104 {
    type: number
    sql: ${TABLE}.t_030104 ;;
  }

  dimension: t_030105 {
    type: number
    sql: ${TABLE}.t_030105 ;;
  }

  dimension: t_030108 {
    type: number
    sql: ${TABLE}.t_030108 ;;
  }

  dimension: t_030109 {
    type: number
    sql: ${TABLE}.t_030109 ;;
  }

  dimension: t_030110 {
    type: number
    sql: ${TABLE}.t_030110 ;;
  }

  dimension: t_030111 {
    type: number
    sql: ${TABLE}.t_030111 ;;
  }

  dimension: t_030112 {
    type: number
    sql: ${TABLE}.t_030112 ;;
  }

  dimension: t_030186 {
    type: number
    sql: ${TABLE}.t_030186 ;;
  }

  dimension: t_030199 {
    type: number
    sql: ${TABLE}.t_030199 ;;
  }

  dimension: t_030201 {
    type: number
    sql: ${TABLE}.t_030201 ;;
  }

  dimension: t_030202 {
    type: number
    sql: ${TABLE}.t_030202 ;;
  }

  dimension: t_030203 {
    type: number
    sql: ${TABLE}.t_030203 ;;
  }

  dimension: t_030204 {
    type: number
    sql: ${TABLE}.t_030204 ;;
  }

  dimension: t_030299 {
    type: number
    sql: ${TABLE}.t_030299 ;;
  }

  dimension: t_030301 {
    type: number
    sql: ${TABLE}.t_030301 ;;
  }

  dimension: t_030302 {
    type: number
    sql: ${TABLE}.t_030302 ;;
  }

  dimension: t_030303 {
    type: number
    sql: ${TABLE}.t_030303 ;;
  }

  dimension: t_030399 {
    type: number
    sql: ${TABLE}.t_030399 ;;
  }

  dimension: t_030401 {
    type: number
    sql: ${TABLE}.t_030401 ;;
  }

  dimension: t_030402 {
    type: number
    sql: ${TABLE}.t_030402 ;;
  }

  dimension: t_030403 {
    type: number
    sql: ${TABLE}.t_030403 ;;
  }

  dimension: t_030404 {
    type: number
    sql: ${TABLE}.t_030404 ;;
  }

  dimension: t_030405 {
    type: number
    sql: ${TABLE}.t_030405 ;;
  }

  dimension: t_030499 {
    type: number
    sql: ${TABLE}.t_030499 ;;
  }

  dimension: t_030501 {
    type: number
    sql: ${TABLE}.t_030501 ;;
  }

  dimension: t_030502 {
    type: number
    sql: ${TABLE}.t_030502 ;;
  }

  dimension: t_030503 {
    type: number
    sql: ${TABLE}.t_030503 ;;
  }

  dimension: t_030504 {
    type: number
    sql: ${TABLE}.t_030504 ;;
  }

  dimension: t_030599 {
    type: number
    sql: ${TABLE}.t_030599 ;;
  }

  dimension: t_039999 {
    type: number
    sql: ${TABLE}.t_039999 ;;
  }

  dimension: t_040101 {
    type: number
    sql: ${TABLE}.t_040101 ;;
  }

  dimension: t_040102 {
    type: number
    sql: ${TABLE}.t_040102 ;;
  }

  dimension: t_040103 {
    type: number
    sql: ${TABLE}.t_040103 ;;
  }

  dimension: t_040104 {
    type: number
    sql: ${TABLE}.t_040104 ;;
  }

  dimension: t_040105 {
    type: number
    sql: ${TABLE}.t_040105 ;;
  }

  dimension: t_040108 {
    type: number
    sql: ${TABLE}.t_040108 ;;
  }

  dimension: t_040109 {
    type: number
    sql: ${TABLE}.t_040109 ;;
  }

  dimension: t_040110 {
    type: number
    sql: ${TABLE}.t_040110 ;;
  }

  dimension: t_040111 {
    type: number
    sql: ${TABLE}.t_040111 ;;
  }

  dimension: t_040112 {
    type: number
    sql: ${TABLE}.t_040112 ;;
  }

  dimension: t_040186 {
    type: number
    sql: ${TABLE}.t_040186 ;;
  }

  dimension: t_040199 {
    type: number
    sql: ${TABLE}.t_040199 ;;
  }

  dimension: t_040201 {
    type: number
    sql: ${TABLE}.t_040201 ;;
  }

  dimension: t_040202 {
    type: number
    sql: ${TABLE}.t_040202 ;;
  }

  dimension: t_040203 {
    type: number
    sql: ${TABLE}.t_040203 ;;
  }

  dimension: t_040204 {
    type: number
    sql: ${TABLE}.t_040204 ;;
  }

  dimension: t_040299 {
    type: number
    sql: ${TABLE}.t_040299 ;;
  }

  dimension: t_040301 {
    type: number
    sql: ${TABLE}.t_040301 ;;
  }

  dimension: t_040302 {
    type: number
    sql: ${TABLE}.t_040302 ;;
  }

  dimension: t_040303 {
    type: number
    sql: ${TABLE}.t_040303 ;;
  }

  dimension: t_040399 {
    type: number
    sql: ${TABLE}.t_040399 ;;
  }

  dimension: t_040401 {
    type: number
    sql: ${TABLE}.t_040401 ;;
  }

  dimension: t_040402 {
    type: number
    sql: ${TABLE}.t_040402 ;;
  }

  dimension: t_040403 {
    type: number
    sql: ${TABLE}.t_040403 ;;
  }

  dimension: t_040404 {
    type: number
    sql: ${TABLE}.t_040404 ;;
  }

  dimension: t_040405 {
    type: number
    sql: ${TABLE}.t_040405 ;;
  }

  dimension: t_040499 {
    type: number
    sql: ${TABLE}.t_040499 ;;
  }

  dimension: t_040501 {
    type: number
    sql: ${TABLE}.t_040501 ;;
  }

  dimension: t_040502 {
    type: number
    sql: ${TABLE}.t_040502 ;;
  }

  dimension: t_040503 {
    type: number
    sql: ${TABLE}.t_040503 ;;
  }

  dimension: t_040504 {
    type: number
    sql: ${TABLE}.t_040504 ;;
  }

  dimension: t_040505 {
    type: number
    sql: ${TABLE}.t_040505 ;;
  }

  dimension: t_040506 {
    type: number
    sql: ${TABLE}.t_040506 ;;
  }

  dimension: t_040507 {
    type: number
    sql: ${TABLE}.t_040507 ;;
  }

  dimension: t_040508 {
    type: number
    sql: ${TABLE}.t_040508 ;;
  }

  dimension: t_040599 {
    type: number
    sql: ${TABLE}.t_040599 ;;
  }

  dimension: t_049999 {
    type: number
    sql: ${TABLE}.t_049999 ;;
  }

  dimension: t_050101 {
    type: number
    sql: ${TABLE}.t_050101 ;;
  }

  dimension: t_050102 {
    type: number
    sql: ${TABLE}.t_050102 ;;
  }

  dimension: t_050103 {
    type: number
    sql: ${TABLE}.t_050103 ;;
  }

  dimension: t_050189 {
    type: number
    sql: ${TABLE}.t_050189 ;;
  }

  dimension: t_050201 {
    type: number
    sql: ${TABLE}.t_050201 ;;
  }

  dimension: t_050202 {
    type: number
    sql: ${TABLE}.t_050202 ;;
  }

  dimension: t_050203 {
    type: number
    sql: ${TABLE}.t_050203 ;;
  }

  dimension: t_050204 {
    type: number
    sql: ${TABLE}.t_050204 ;;
  }

  dimension: t_050289 {
    type: number
    sql: ${TABLE}.t_050289 ;;
  }

  dimension: t_050301 {
    type: number
    sql: ${TABLE}.t_050301 ;;
  }

  dimension: t_050302 {
    type: number
    sql: ${TABLE}.t_050302 ;;
  }

  dimension: t_050303 {
    type: number
    sql: ${TABLE}.t_050303 ;;
  }

  dimension: t_050304 {
    type: number
    sql: ${TABLE}.t_050304 ;;
  }

  dimension: t_050389 {
    type: number
    sql: ${TABLE}.t_050389 ;;
  }

  dimension: t_050403 {
    type: number
    sql: ${TABLE}.t_050403 ;;
  }

  dimension: t_050404 {
    type: number
    sql: ${TABLE}.t_050404 ;;
  }

  dimension: t_050405 {
    type: number
    sql: ${TABLE}.t_050405 ;;
  }

  dimension: t_050481 {
    type: number
    sql: ${TABLE}.t_050481 ;;
  }

  dimension: t_050499 {
    type: number
    sql: ${TABLE}.t_050499 ;;
  }

  dimension: t_059999 {
    type: number
    sql: ${TABLE}.t_059999 ;;
  }

  dimension: t_060101 {
    type: number
    sql: ${TABLE}.t_060101 ;;
  }

  dimension: t_060102 {
    type: number
    sql: ${TABLE}.t_060102 ;;
  }

  dimension: t_060103 {
    type: number
    sql: ${TABLE}.t_060103 ;;
  }

  dimension: t_060104 {
    type: number
    sql: ${TABLE}.t_060104 ;;
  }

  dimension: t_060199 {
    type: number
    sql: ${TABLE}.t_060199 ;;
  }

  dimension: t_060201 {
    type: number
    sql: ${TABLE}.t_060201 ;;
  }

  dimension: t_060202 {
    type: number
    sql: ${TABLE}.t_060202 ;;
  }

  dimension: t_060203 {
    type: number
    sql: ${TABLE}.t_060203 ;;
  }

  dimension: t_060289 {
    type: number
    sql: ${TABLE}.t_060289 ;;
  }

  dimension: t_060301 {
    type: number
    sql: ${TABLE}.t_060301 ;;
  }

  dimension: t_060302 {
    type: number
    sql: ${TABLE}.t_060302 ;;
  }

  dimension: t_060303 {
    type: number
    sql: ${TABLE}.t_060303 ;;
  }

  dimension: t_060399 {
    type: number
    sql: ${TABLE}.t_060399 ;;
  }

  dimension: t_060401 {
    type: number
    sql: ${TABLE}.t_060401 ;;
  }

  dimension: t_060402 {
    type: number
    sql: ${TABLE}.t_060402 ;;
  }

  dimension: t_060403 {
    type: number
    sql: ${TABLE}.t_060403 ;;
  }

  dimension: t_060499 {
    type: number
    sql: ${TABLE}.t_060499 ;;
  }

  dimension: t_069999 {
    type: number
    sql: ${TABLE}.t_069999 ;;
  }

  dimension: t_070101 {
    type: number
    sql: ${TABLE}.t_070101 ;;
  }

  dimension: t_070102 {
    type: number
    sql: ${TABLE}.t_070102 ;;
  }

  dimension: t_070103 {
    type: number
    sql: ${TABLE}.t_070103 ;;
  }

  dimension: t_070104 {
    type: number
    sql: ${TABLE}.t_070104 ;;
  }

  dimension: t_070105 {
    type: number
    sql: ${TABLE}.t_070105 ;;
  }

  dimension: t_070199 {
    type: number
    sql: ${TABLE}.t_070199 ;;
  }

  dimension: t_070201 {
    type: number
    sql: ${TABLE}.t_070201 ;;
  }

  dimension: t_070299 {
    type: number
    sql: ${TABLE}.t_070299 ;;
  }

  dimension: t_070301 {
    type: number
    sql: ${TABLE}.t_070301 ;;
  }

  dimension: t_070399 {
    type: number
    sql: ${TABLE}.t_070399 ;;
  }

  dimension: t_079999 {
    type: number
    sql: ${TABLE}.t_079999 ;;
  }

  dimension: t_080101 {
    type: number
    sql: ${TABLE}.t_080101 ;;
  }

  dimension: t_080102 {
    type: number
    sql: ${TABLE}.t_080102 ;;
  }

  dimension: t_080199 {
    type: number
    sql: ${TABLE}.t_080199 ;;
  }

  dimension: t_080201 {
    type: number
    sql: ${TABLE}.t_080201 ;;
  }

  dimension: t_080202 {
    type: number
    sql: ${TABLE}.t_080202 ;;
  }

  dimension: t_080203 {
    type: number
    sql: ${TABLE}.t_080203 ;;
  }

  dimension: t_080299 {
    type: number
    sql: ${TABLE}.t_080299 ;;
  }

  dimension: t_080301 {
    type: number
    sql: ${TABLE}.t_080301 ;;
  }

  dimension: t_080302 {
    type: number
    sql: ${TABLE}.t_080302 ;;
  }

  dimension: t_080399 {
    type: number
    sql: ${TABLE}.t_080399 ;;
  }

  dimension: t_080401 {
    type: number
    sql: ${TABLE}.t_080401 ;;
  }

  dimension: t_080402 {
    type: number
    sql: ${TABLE}.t_080402 ;;
  }

  dimension: t_080403 {
    type: number
    sql: ${TABLE}.t_080403 ;;
  }

  dimension: t_080499 {
    type: number
    sql: ${TABLE}.t_080499 ;;
  }

  dimension: t_080501 {
    type: number
    sql: ${TABLE}.t_080501 ;;
  }

  dimension: t_080502 {
    type: number
    sql: ${TABLE}.t_080502 ;;
  }

  dimension: t_080599 {
    type: number
    sql: ${TABLE}.t_080599 ;;
  }

  dimension: t_080601 {
    type: number
    sql: ${TABLE}.t_080601 ;;
  }

  dimension: t_080602 {
    type: number
    sql: ${TABLE}.t_080602 ;;
  }

  dimension: t_080699 {
    type: number
    sql: ${TABLE}.t_080699 ;;
  }

  dimension: t_080701 {
    type: number
    sql: ${TABLE}.t_080701 ;;
  }

  dimension: t_080702 {
    type: number
    sql: ${TABLE}.t_080702 ;;
  }

  dimension: t_080799 {
    type: number
    sql: ${TABLE}.t_080799 ;;
  }

  dimension: t_080801 {
    type: number
    sql: ${TABLE}.t_080801 ;;
  }

  dimension: t_080899 {
    type: number
    sql: ${TABLE}.t_080899 ;;
  }

  dimension: t_089999 {
    type: number
    sql: ${TABLE}.t_089999 ;;
  }

  dimension: t_090101 {
    type: number
    sql: ${TABLE}.t_090101 ;;
  }

  dimension: t_090102 {
    type: number
    sql: ${TABLE}.t_090102 ;;
  }

  dimension: t_090103 {
    type: number
    sql: ${TABLE}.t_090103 ;;
  }

  dimension: t_090104 {
    type: number
    sql: ${TABLE}.t_090104 ;;
  }

  dimension: t_090199 {
    type: number
    sql: ${TABLE}.t_090199 ;;
  }

  dimension: t_090201 {
    type: number
    sql: ${TABLE}.t_090201 ;;
  }

  dimension: t_090202 {
    type: number
    sql: ${TABLE}.t_090202 ;;
  }

  dimension: t_090299 {
    type: number
    sql: ${TABLE}.t_090299 ;;
  }

  dimension: t_090301 {
    type: number
    sql: ${TABLE}.t_090301 ;;
  }

  dimension: t_090302 {
    type: number
    sql: ${TABLE}.t_090302 ;;
  }

  dimension: t_090399 {
    type: number
    sql: ${TABLE}.t_090399 ;;
  }

  dimension: t_090401 {
    type: number
    sql: ${TABLE}.t_090401 ;;
  }

  dimension: t_090402 {
    type: number
    sql: ${TABLE}.t_090402 ;;
  }

  dimension: t_090499 {
    type: number
    sql: ${TABLE}.t_090499 ;;
  }

  dimension: t_090501 {
    type: number
    sql: ${TABLE}.t_090501 ;;
  }

  dimension: t_090502 {
    type: number
    sql: ${TABLE}.t_090502 ;;
  }

  dimension: t_090599 {
    type: number
    sql: ${TABLE}.t_090599 ;;
  }

  dimension: t_099999 {
    type: number
    sql: ${TABLE}.t_099999 ;;
  }

  dimension: t_100101 {
    type: number
    sql: ${TABLE}.t_100101 ;;
  }

  dimension: t_100102 {
    type: number
    sql: ${TABLE}.t_100102 ;;
  }

  dimension: t_100103 {
    type: number
    sql: ${TABLE}.t_100103 ;;
  }

  dimension: t_100199 {
    type: number
    sql: ${TABLE}.t_100199 ;;
  }

  dimension: t_100201 {
    type: number
    sql: ${TABLE}.t_100201 ;;
  }

  dimension: t_100299 {
    type: number
    sql: ${TABLE}.t_100299 ;;
  }

  dimension: t_100381 {
    type: number
    sql: ${TABLE}.t_100381 ;;
  }

  dimension: t_100383 {
    type: number
    sql: ${TABLE}.t_100383 ;;
  }

  dimension: t_100399 {
    type: number
    sql: ${TABLE}.t_100399 ;;
  }

  dimension: t_100401 {
    type: number
    sql: ${TABLE}.t_100401 ;;
  }

  dimension: t_100499 {
    type: number
    sql: ${TABLE}.t_100499 ;;
  }

  dimension: t_109999 {
    type: number
    sql: ${TABLE}.t_109999 ;;
  }

  dimension: t_110101 {
    type: number
    sql: ${TABLE}.t_110101 ;;
  }

  dimension: t_110199 {
    type: number
    sql: ${TABLE}.t_110199 ;;
  }

  dimension: t_110281 {
    type: number
    sql: ${TABLE}.t_110281 ;;
  }

  dimension: t_110289 {
    type: number
    sql: ${TABLE}.t_110289 ;;
  }

  dimension: t_119999 {
    type: number
    sql: ${TABLE}.t_119999 ;;
  }

  dimension: t_120101 {
    type: number
    sql: ${TABLE}.t_120101 ;;
  }

  dimension: t_120199 {
    type: number
    sql: ${TABLE}.t_120199 ;;
  }

  dimension: t_120201 {
    type: number
    sql: ${TABLE}.t_120201 ;;
  }

  dimension: t_120202 {
    type: number
    sql: ${TABLE}.t_120202 ;;
  }

  dimension: t_120299 {
    type: number
    sql: ${TABLE}.t_120299 ;;
  }

  dimension: t_120301 {
    type: number
    sql: ${TABLE}.t_120301 ;;
  }

  dimension: t_120302 {
    type: number
    sql: ${TABLE}.t_120302 ;;
  }

  dimension: t_120303 {
    type: number
    sql: ${TABLE}.t_120303 ;;
  }

  dimension: t_120304 {
    type: number
    sql: ${TABLE}.t_120304 ;;
  }

  dimension: t_120305 {
    type: number
    sql: ${TABLE}.t_120305 ;;
  }

  dimension: t_120306 {
    type: number
    sql: ${TABLE}.t_120306 ;;
  }

  dimension: t_120307 {
    type: number
    sql: ${TABLE}.t_120307 ;;
  }

  dimension: t_120308 {
    type: number
    sql: ${TABLE}.t_120308 ;;
  }

  dimension: t_120309 {
    type: number
    sql: ${TABLE}.t_120309 ;;
  }

  dimension: t_120310 {
    type: number
    sql: ${TABLE}.t_120310 ;;
  }

  dimension: t_120311 {
    type: number
    sql: ${TABLE}.t_120311 ;;
  }

  dimension: t_120312 {
    type: number
    sql: ${TABLE}.t_120312 ;;
  }

  dimension: t_120313 {
    type: number
    sql: ${TABLE}.t_120313 ;;
  }

  dimension: t_120399 {
    type: number
    sql: ${TABLE}.t_120399 ;;
  }

  dimension: t_120401 {
    type: number
    sql: ${TABLE}.t_120401 ;;
  }

  dimension: t_120402 {
    type: number
    sql: ${TABLE}.t_120402 ;;
  }

  dimension: t_120403 {
    type: number
    sql: ${TABLE}.t_120403 ;;
  }

  dimension: t_120404 {
    type: number
    sql: ${TABLE}.t_120404 ;;
  }

  dimension: t_120405 {
    type: number
    sql: ${TABLE}.t_120405 ;;
  }

  dimension: t_120499 {
    type: number
    sql: ${TABLE}.t_120499 ;;
  }

  dimension: t_120501 {
    type: number
    sql: ${TABLE}.t_120501 ;;
  }

  dimension: t_120502 {
    type: number
    sql: ${TABLE}.t_120502 ;;
  }

  dimension: t_120503 {
    type: number
    sql: ${TABLE}.t_120503 ;;
  }

  dimension: t_120504 {
    type: number
    sql: ${TABLE}.t_120504 ;;
  }

  dimension: t_120599 {
    type: number
    sql: ${TABLE}.t_120599 ;;
  }

  dimension: t_129999 {
    type: number
    sql: ${TABLE}.t_129999 ;;
  }

  dimension: t_130101 {
    type: number
    sql: ${TABLE}.t_130101 ;;
  }

  dimension: t_130102 {
    type: number
    sql: ${TABLE}.t_130102 ;;
  }

  dimension: t_130103 {
    type: number
    sql: ${TABLE}.t_130103 ;;
  }

  dimension: t_130104 {
    type: number
    sql: ${TABLE}.t_130104 ;;
  }

  dimension: t_130105 {
    type: number
    sql: ${TABLE}.t_130105 ;;
  }

  dimension: t_130106 {
    type: number
    sql: ${TABLE}.t_130106 ;;
  }

  dimension: t_130107 {
    type: number
    sql: ${TABLE}.t_130107 ;;
  }

  dimension: t_130108 {
    type: number
    sql: ${TABLE}.t_130108 ;;
  }

  dimension: t_130109 {
    type: number
    sql: ${TABLE}.t_130109 ;;
  }

  dimension: t_130110 {
    type: number
    sql: ${TABLE}.t_130110 ;;
  }

  dimension: t_130111 {
    type: number
    sql: ${TABLE}.t_130111 ;;
  }

  dimension: t_130112 {
    type: number
    sql: ${TABLE}.t_130112 ;;
  }

  dimension: t_130113 {
    type: number
    sql: ${TABLE}.t_130113 ;;
  }

  dimension: t_130114 {
    type: number
    sql: ${TABLE}.t_130114 ;;
  }

  dimension: t_130115 {
    type: number
    sql: ${TABLE}.t_130115 ;;
  }

  dimension: t_130116 {
    type: number
    sql: ${TABLE}.t_130116 ;;
  }

  dimension: t_130117 {
    type: number
    sql: ${TABLE}.t_130117 ;;
  }

  dimension: t_130118 {
    type: number
    sql: ${TABLE}.t_130118 ;;
  }

  dimension: t_130119 {
    type: number
    sql: ${TABLE}.t_130119 ;;
  }

  dimension: t_130120 {
    type: number
    sql: ${TABLE}.t_130120 ;;
  }

  dimension: t_130121 {
    type: number
    sql: ${TABLE}.t_130121 ;;
  }

  dimension: t_130122 {
    type: number
    sql: ${TABLE}.t_130122 ;;
  }

  dimension: t_130123 {
    type: number
    sql: ${TABLE}.t_130123 ;;
  }

  dimension: t_130124 {
    type: number
    sql: ${TABLE}.t_130124 ;;
  }

  dimension: t_130125 {
    type: number
    sql: ${TABLE}.t_130125 ;;
  }

  dimension: t_130126 {
    type: number
    sql: ${TABLE}.t_130126 ;;
  }

  dimension: t_130127 {
    type: number
    sql: ${TABLE}.t_130127 ;;
  }

  dimension: t_130128 {
    type: number
    sql: ${TABLE}.t_130128 ;;
  }

  dimension: t_130129 {
    type: number
    sql: ${TABLE}.t_130129 ;;
  }

  dimension: t_130130 {
    type: number
    sql: ${TABLE}.t_130130 ;;
  }

  dimension: t_130131 {
    type: number
    sql: ${TABLE}.t_130131 ;;
  }

  dimension: t_130132 {
    type: number
    sql: ${TABLE}.t_130132 ;;
  }

  dimension: t_130133 {
    type: number
    sql: ${TABLE}.t_130133 ;;
  }

  dimension: t_130134 {
    type: number
    sql: ${TABLE}.t_130134 ;;
  }

  dimension: t_130135 {
    type: number
    sql: ${TABLE}.t_130135 ;;
  }

  dimension: t_130136 {
    type: number
    sql: ${TABLE}.t_130136 ;;
  }

  dimension: t_130199 {
    type: number
    sql: ${TABLE}.t_130199 ;;
  }

  dimension: t_130201 {
    type: number
    sql: ${TABLE}.t_130201 ;;
  }

  dimension: t_130202 {
    type: number
    sql: ${TABLE}.t_130202 ;;
  }

  dimension: t_130203 {
    type: number
    sql: ${TABLE}.t_130203 ;;
  }

  dimension: t_130204 {
    type: number
    sql: ${TABLE}.t_130204 ;;
  }

  dimension: t_130205 {
    type: number
    sql: ${TABLE}.t_130205 ;;
  }

  dimension: t_130206 {
    type: number
    sql: ${TABLE}.t_130206 ;;
  }

  dimension: t_130207 {
    type: number
    sql: ${TABLE}.t_130207 ;;
  }

  dimension: t_130208 {
    type: number
    sql: ${TABLE}.t_130208 ;;
  }

  dimension: t_130209 {
    type: number
    sql: ${TABLE}.t_130209 ;;
  }

  dimension: t_130210 {
    type: number
    sql: ${TABLE}.t_130210 ;;
  }

  dimension: t_130211 {
    type: number
    sql: ${TABLE}.t_130211 ;;
  }

  dimension: t_130212 {
    type: number
    sql: ${TABLE}.t_130212 ;;
  }

  dimension: t_130213 {
    type: number
    sql: ${TABLE}.t_130213 ;;
  }

  dimension: t_130214 {
    type: number
    sql: ${TABLE}.t_130214 ;;
  }

  dimension: t_130215 {
    type: number
    sql: ${TABLE}.t_130215 ;;
  }

  dimension: t_130216 {
    type: number
    sql: ${TABLE}.t_130216 ;;
  }

  dimension: t_130217 {
    type: number
    sql: ${TABLE}.t_130217 ;;
  }

  dimension: t_130218 {
    type: number
    sql: ${TABLE}.t_130218 ;;
  }

  dimension: t_130219 {
    type: number
    sql: ${TABLE}.t_130219 ;;
  }

  dimension: t_130220 {
    type: number
    sql: ${TABLE}.t_130220 ;;
  }

  dimension: t_130221 {
    type: number
    sql: ${TABLE}.t_130221 ;;
  }

  dimension: t_130222 {
    type: number
    sql: ${TABLE}.t_130222 ;;
  }

  dimension: t_130223 {
    type: number
    sql: ${TABLE}.t_130223 ;;
  }

  dimension: t_130224 {
    type: number
    sql: ${TABLE}.t_130224 ;;
  }

  dimension: t_130225 {
    type: number
    sql: ${TABLE}.t_130225 ;;
  }

  dimension: t_130226 {
    type: number
    sql: ${TABLE}.t_130226 ;;
  }

  dimension: t_130227 {
    type: number
    sql: ${TABLE}.t_130227 ;;
  }

  dimension: t_130228 {
    type: number
    sql: ${TABLE}.t_130228 ;;
  }

  dimension: t_130229 {
    type: number
    sql: ${TABLE}.t_130229 ;;
  }

  dimension: t_130230 {
    type: number
    sql: ${TABLE}.t_130230 ;;
  }

  dimension: t_130231 {
    type: number
    sql: ${TABLE}.t_130231 ;;
  }

  dimension: t_130232 {
    type: number
    sql: ${TABLE}.t_130232 ;;
  }

  dimension: t_130299 {
    type: number
    sql: ${TABLE}.t_130299 ;;
  }

  dimension: t_130301 {
    type: number
    sql: ${TABLE}.t_130301 ;;
  }

  dimension: t_130302 {
    type: number
    sql: ${TABLE}.t_130302 ;;
  }

  dimension: t_130399 {
    type: number
    sql: ${TABLE}.t_130399 ;;
  }

  dimension: t_130401 {
    type: number
    sql: ${TABLE}.t_130401 ;;
  }

  dimension: t_130402 {
    type: number
    sql: ${TABLE}.t_130402 ;;
  }

  dimension: t_130499 {
    type: number
    sql: ${TABLE}.t_130499 ;;
  }

  dimension: t_139999 {
    type: number
    sql: ${TABLE}.t_139999 ;;
  }

  dimension: t_140101 {
    type: number
    sql: ${TABLE}.t_140101 ;;
  }

  dimension: t_140102 {
    type: number
    sql: ${TABLE}.t_140102 ;;
  }

  dimension: t_140103 {
    type: number
    sql: ${TABLE}.t_140103 ;;
  }

  dimension: t_140104 {
    type: number
    sql: ${TABLE}.t_140104 ;;
  }

  dimension: t_140105 {
    type: number
    sql: ${TABLE}.t_140105 ;;
  }

  dimension: t_149999 {
    type: number
    sql: ${TABLE}.t_149999 ;;
  }

  dimension: t_150101 {
    type: number
    sql: ${TABLE}.t_150101 ;;
  }

  dimension: t_150102 {
    type: number
    sql: ${TABLE}.t_150102 ;;
  }

  dimension: t_150103 {
    type: number
    sql: ${TABLE}.t_150103 ;;
  }

  dimension: t_150104 {
    type: number
    sql: ${TABLE}.t_150104 ;;
  }

  dimension: t_150105 {
    type: number
    sql: ${TABLE}.t_150105 ;;
  }

  dimension: t_150106 {
    type: number
    sql: ${TABLE}.t_150106 ;;
  }

  dimension: t_150199 {
    type: number
    sql: ${TABLE}.t_150199 ;;
  }

  dimension: t_150201 {
    type: number
    sql: ${TABLE}.t_150201 ;;
  }

  dimension: t_150202 {
    type: number
    sql: ${TABLE}.t_150202 ;;
  }

  dimension: t_150203 {
    type: number
    sql: ${TABLE}.t_150203 ;;
  }

  dimension: t_150204 {
    type: number
    sql: ${TABLE}.t_150204 ;;
  }

  dimension: t_150299 {
    type: number
    sql: ${TABLE}.t_150299 ;;
  }

  dimension: t_150301 {
    type: number
    sql: ${TABLE}.t_150301 ;;
  }

  dimension: t_150302 {
    type: number
    sql: ${TABLE}.t_150302 ;;
  }

  dimension: t_150399 {
    type: number
    sql: ${TABLE}.t_150399 ;;
  }

  dimension: t_150401 {
    type: number
    sql: ${TABLE}.t_150401 ;;
  }

  dimension: t_150402 {
    type: number
    sql: ${TABLE}.t_150402 ;;
  }

  dimension: t_150499 {
    type: number
    sql: ${TABLE}.t_150499 ;;
  }

  dimension: t_150501 {
    type: number
    sql: ${TABLE}.t_150501 ;;
  }

  dimension: t_150599 {
    type: number
    sql: ${TABLE}.t_150599 ;;
  }

  dimension: t_150601 {
    type: number
    sql: ${TABLE}.t_150601 ;;
  }

  dimension: t_150602 {
    type: number
    sql: ${TABLE}.t_150602 ;;
  }

  dimension: t_150699 {
    type: number
    sql: ${TABLE}.t_150699 ;;
  }

  dimension: t_159989 {
    type: number
    sql: ${TABLE}.t_159989 ;;
  }

  dimension: t_160101 {
    type: number
    sql: ${TABLE}.t_160101 ;;
  }

  dimension: t_160102 {
    type: number
    sql: ${TABLE}.t_160102 ;;
  }

  dimension: t_160103 {
    type: number
    sql: ${TABLE}.t_160103 ;;
  }

  dimension: t_160104 {
    type: number
    sql: ${TABLE}.t_160104 ;;
  }

  dimension: t_160105 {
    type: number
    sql: ${TABLE}.t_160105 ;;
  }

  dimension: t_160106 {
    type: number
    sql: ${TABLE}.t_160106 ;;
  }

  dimension: t_160107 {
    type: number
    sql: ${TABLE}.t_160107 ;;
  }

  dimension: t_160108 {
    type: number
    sql: ${TABLE}.t_160108 ;;
  }

  dimension: t_169989 {
    type: number
    sql: ${TABLE}.t_169989 ;;
  }

  dimension: t_180101 {
    type: number
    sql: ${TABLE}.t_180101 ;;
  }

  dimension: t_180199 {
    type: number
    sql: ${TABLE}.t_180199 ;;
  }

  dimension: t_180280 {
    type: number
    sql: ${TABLE}.t_180280 ;;
  }

  dimension: t_180381 {
    type: number
    sql: ${TABLE}.t_180381 ;;
  }

  dimension: t_180382 {
    type: number
    sql: ${TABLE}.t_180382 ;;
  }

  dimension: t_180399 {
    type: number
    sql: ${TABLE}.t_180399 ;;
  }

  dimension: t_180481 {
    type: number
    sql: ${TABLE}.t_180481 ;;
  }

  dimension: t_180482 {
    type: number
    sql: ${TABLE}.t_180482 ;;
  }

  dimension: t_180499 {
    type: number
    sql: ${TABLE}.t_180499 ;;
  }

  dimension: t_180501 {
    type: number
    sql: ${TABLE}.t_180501 ;;
  }

  dimension: t_180502 {
    type: number
    sql: ${TABLE}.t_180502 ;;
  }

  dimension: t_180589 {
    type: number
    sql: ${TABLE}.t_180589 ;;
  }

  dimension: t_180601 {
    type: number
    sql: ${TABLE}.t_180601 ;;
  }

  dimension: t_180682 {
    type: number
    sql: ${TABLE}.t_180682 ;;
  }

  dimension: t_180699 {
    type: number
    sql: ${TABLE}.t_180699 ;;
  }

  dimension: t_180701 {
    type: number
    sql: ${TABLE}.t_180701 ;;
  }

  dimension: t_180782 {
    type: number
    sql: ${TABLE}.t_180782 ;;
  }

  dimension: t_180801 {
    type: number
    sql: ${TABLE}.t_180801 ;;
  }

  dimension: t_180802 {
    type: number
    sql: ${TABLE}.t_180802 ;;
  }

  dimension: t_180803 {
    type: number
    sql: ${TABLE}.t_180803 ;;
  }

  dimension: t_180804 {
    type: number
    sql: ${TABLE}.t_180804 ;;
  }

  dimension: t_180805 {
    type: number
    sql: ${TABLE}.t_180805 ;;
  }

  dimension: t_180806 {
    type: number
    sql: ${TABLE}.t_180806 ;;
  }

  dimension: t_180807 {
    type: number
    sql: ${TABLE}.t_180807 ;;
  }

  dimension: t_180899 {
    type: number
    sql: ${TABLE}.t_180899 ;;
  }

  dimension: t_180901 {
    type: number
    sql: ${TABLE}.t_180901 ;;
  }

  dimension: t_180902 {
    type: number
    sql: ${TABLE}.t_180902 ;;
  }

  dimension: t_180903 {
    type: number
    sql: ${TABLE}.t_180903 ;;
  }

  dimension: t_180904 {
    type: number
    sql: ${TABLE}.t_180904 ;;
  }

  dimension: t_180905 {
    type: number
    sql: ${TABLE}.t_180905 ;;
  }

  dimension: t_180999 {
    type: number
    sql: ${TABLE}.t_180999 ;;
  }

  dimension: t_181002 {
    type: number
    sql: ${TABLE}.t_181002 ;;
  }

  dimension: t_181081 {
    type: number
    sql: ${TABLE}.t_181081 ;;
  }

  dimension: t_181099 {
    type: number
    sql: ${TABLE}.t_181099 ;;
  }

  dimension: t_181101 {
    type: number
    sql: ${TABLE}.t_181101 ;;
  }

  dimension: t_181199 {
    type: number
    sql: ${TABLE}.t_181199 ;;
  }

  dimension: t_181201 {
    type: number
    sql: ${TABLE}.t_181201 ;;
  }

  dimension: t_181202 {
    type: number
    sql: ${TABLE}.t_181202 ;;
  }

  dimension: t_181204 {
    type: number
    sql: ${TABLE}.t_181204 ;;
  }

  dimension: t_181283 {
    type: number
    sql: ${TABLE}.t_181283 ;;
  }

  dimension: t_181299 {
    type: number
    sql: ${TABLE}.t_181299 ;;
  }

  dimension: t_181301 {
    type: number
    sql: ${TABLE}.t_181301 ;;
  }

  dimension: t_181302 {
    type: number
    sql: ${TABLE}.t_181302 ;;
  }

  dimension: t_181399 {
    type: number
    sql: ${TABLE}.t_181399 ;;
  }

  dimension: t_181401 {
    type: number
    sql: ${TABLE}.t_181401 ;;
  }

  dimension: t_181499 {
    type: number
    sql: ${TABLE}.t_181499 ;;
  }

  dimension: t_181501 {
    type: number
    sql: ${TABLE}.t_181501 ;;
  }

  dimension: t_181599 {
    type: number
    sql: ${TABLE}.t_181599 ;;
  }

  dimension: t_181601 {
    type: number
    sql: ${TABLE}.t_181601 ;;
  }

  dimension: t_181699 {
    type: number
    sql: ${TABLE}.t_181699 ;;
  }

  dimension: t_181801 {
    type: number
    sql: ${TABLE}.t_181801 ;;
  }

  dimension: t_181899 {
    type: number
    sql: ${TABLE}.t_181899 ;;
  }

  dimension: t_189999 {
    type: number
    sql: ${TABLE}.t_189999 ;;
  }

  dimension: t_500101 {
    type: number
    sql: ${TABLE}.t_500101 ;;
  }

  dimension: t_500103 {
    type: number
    sql: ${TABLE}.t_500103 ;;
  }

  dimension: t_500104 {
    type: number
    sql: ${TABLE}.t_500104 ;;
  }

  dimension: t_500105 {
    type: number
    sql: ${TABLE}.t_500105 ;;
  }

  dimension: t_500106 {
    type: number
    sql: ${TABLE}.t_500106 ;;
  }

  dimension: t_500107 {
    type: number
    sql: ${TABLE}.t_500107 ;;
  }

  dimension: t_509989 {
    type: number
    sql: ${TABLE}.t_509989 ;;
  }

  dimension: teage {
    type: number
    sql: ${TABLE}.teage ;;
  }

  dimension: tehruslt {
    type: number
    sql: ${TABLE}.tehruslt ;;
  }

  dimension: telfs {
    type: number
    sql: ${TABLE}.telfs ;;
  }

  dimension: temjot {
    type: number
    sql: ${TABLE}.temjot ;;
  }

  dimension: teschenr {
    type: number
    sql: ${TABLE}.teschenr ;;
  }

  dimension: teschlvl {
    type: number
    sql: ${TABLE}.teschlvl ;;
  }

  dimension: tesex {
    type: number
    sql: ${TABLE}.tesex ;;
  }

  dimension: tespempnot {
    type: number
    sql: ${TABLE}.tespempnot ;;
  }

  dimension: trchildnum {
    type: number
    sql: ${TABLE}.trchildnum ;;
  }

  dimension: trdpftpt {
    type: number
    sql: ${TABLE}.trdpftpt ;;
  }

  dimension: trernwa {
    type: number
    sql: ${TABLE}.trernwa ;;
  }

  dimension: trholiday {
    type: number
    sql: ${TABLE}.trholiday ;;
  }

  dimension: trspftpt {
    type: number
    sql: ${TABLE}.trspftpt ;;
  }

  dimension: trsppres {
    type: number
    sql: ${TABLE}.trsppres ;;
  }

  dimension: tryhhchild {
    type: number
    sql: ${TABLE}.tryhhchild ;;
  }

  dimension: tudiaryday {
    type: number
    sql: ${TABLE}.tudiaryday ;;
  }

  dimension: tufnwgtp {
    type: number
    sql: ${TABLE}.tufnwgtp ;;
  }

  dimension: tuyear {
    type: number
    sql: ${TABLE}.tuyear ;;
  }
  measure: count {
    type: count
  }


  measure: avg_sleep_hours {
    type: average
    sql: ${t_010101}/60 ;;
    value_format_name: decimal_1
  }

  measure: avg_sleep_minutes {
    type: average
    sql: ${t_010101} ;;
  }

  measure: min_sleep_hours {
    type: min
    sql: ${t_010101}/60 ;;
    value_format_name: decimal_1
  }

  measure: min_sleep_minutes {
    type: min
    sql: ${t_010101} ;;
  }

  measure: max_sleep_hours {
    type: max
    sql: ${t_010101}/60 ;;
    value_format_name: decimal_1
  }

  measure: max_sleep_minutes {
    type: max
    sql: ${t_010101} ;;
  }

  measure: avg_health_related_self_care_hours {
    type: average
    sql: ${t_010301}/60 ;;
    value_format_name: decimal_1
  }

  measure: min_health_related_self_care_hours {
    type: min
    sql: ${t_010301}/60 ;;
    value_format_name: decimal_1
  }

  measure: max_health_related_self_care_hours {
    type: max
    sql: ${t_010301}/60 ;;
    value_format_name: decimal_1
  }

}
