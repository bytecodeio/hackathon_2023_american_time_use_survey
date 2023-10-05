# The name of this view in Looker is "Atuswgts"
view: atuswgts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `google_drive.atuswgts` ;;

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
    type: number
    value_format_name: id
    sql: ${TABLE}.tucaseid ;;
  }

  dimension: tufnwgtp_001 {
    type: number
    sql: ${TABLE}.tufnwgtp_001 ;;
  }

  dimension: tufnwgtp_002 {
    type: number
    sql: ${TABLE}.tufnwgtp_002 ;;
  }

  dimension: tufnwgtp_003 {
    type: number
    sql: ${TABLE}.tufnwgtp_003 ;;
  }

  dimension: tufnwgtp_004 {
    type: number
    sql: ${TABLE}.tufnwgtp_004 ;;
  }

  dimension: tufnwgtp_005 {
    type: number
    sql: ${TABLE}.tufnwgtp_005 ;;
  }

  dimension: tufnwgtp_006 {
    type: number
    sql: ${TABLE}.tufnwgtp_006 ;;
  }

  dimension: tufnwgtp_007 {
    type: number
    sql: ${TABLE}.tufnwgtp_007 ;;
  }

  dimension: tufnwgtp_008 {
    type: number
    sql: ${TABLE}.tufnwgtp_008 ;;
  }

  dimension: tufnwgtp_009 {
    type: number
    sql: ${TABLE}.tufnwgtp_009 ;;
  }

  dimension: tufnwgtp_010 {
    type: number
    sql: ${TABLE}.tufnwgtp_010 ;;
  }

  dimension: tufnwgtp_011 {
    type: number
    sql: ${TABLE}.tufnwgtp_011 ;;
  }

  dimension: tufnwgtp_012 {
    type: number
    sql: ${TABLE}.tufnwgtp_012 ;;
  }

  dimension: tufnwgtp_013 {
    type: number
    sql: ${TABLE}.tufnwgtp_013 ;;
  }

  dimension: tufnwgtp_014 {
    type: number
    sql: ${TABLE}.tufnwgtp_014 ;;
  }

  dimension: tufnwgtp_015 {
    type: number
    sql: ${TABLE}.tufnwgtp_015 ;;
  }

  dimension: tufnwgtp_016 {
    type: number
    sql: ${TABLE}.tufnwgtp_016 ;;
  }

  dimension: tufnwgtp_017 {
    type: number
    sql: ${TABLE}.tufnwgtp_017 ;;
  }

  dimension: tufnwgtp_018 {
    type: number
    sql: ${TABLE}.tufnwgtp_018 ;;
  }

  dimension: tufnwgtp_019 {
    type: number
    sql: ${TABLE}.tufnwgtp_019 ;;
  }

  dimension: tufnwgtp_020 {
    type: number
    sql: ${TABLE}.tufnwgtp_020 ;;
  }

  dimension: tufnwgtp_021 {
    type: number
    sql: ${TABLE}.tufnwgtp_021 ;;
  }

  dimension: tufnwgtp_022 {
    type: number
    sql: ${TABLE}.tufnwgtp_022 ;;
  }

  dimension: tufnwgtp_023 {
    type: number
    sql: ${TABLE}.tufnwgtp_023 ;;
  }

  dimension: tufnwgtp_024 {
    type: number
    sql: ${TABLE}.tufnwgtp_024 ;;
  }

  dimension: tufnwgtp_025 {
    type: number
    sql: ${TABLE}.tufnwgtp_025 ;;
  }

  dimension: tufnwgtp_026 {
    type: number
    sql: ${TABLE}.tufnwgtp_026 ;;
  }

  dimension: tufnwgtp_027 {
    type: number
    sql: ${TABLE}.tufnwgtp_027 ;;
  }

  dimension: tufnwgtp_028 {
    type: number
    sql: ${TABLE}.tufnwgtp_028 ;;
  }

  dimension: tufnwgtp_029 {
    type: number
    sql: ${TABLE}.tufnwgtp_029 ;;
  }

  dimension: tufnwgtp_030 {
    type: number
    sql: ${TABLE}.tufnwgtp_030 ;;
  }

  dimension: tufnwgtp_031 {
    type: number
    sql: ${TABLE}.tufnwgtp_031 ;;
  }

  dimension: tufnwgtp_032 {
    type: number
    sql: ${TABLE}.tufnwgtp_032 ;;
  }

  dimension: tufnwgtp_033 {
    type: number
    sql: ${TABLE}.tufnwgtp_033 ;;
  }

  dimension: tufnwgtp_034 {
    type: number
    sql: ${TABLE}.tufnwgtp_034 ;;
  }

  dimension: tufnwgtp_035 {
    type: number
    sql: ${TABLE}.tufnwgtp_035 ;;
  }

  dimension: tufnwgtp_036 {
    type: number
    sql: ${TABLE}.tufnwgtp_036 ;;
  }

  dimension: tufnwgtp_037 {
    type: number
    sql: ${TABLE}.tufnwgtp_037 ;;
  }

  dimension: tufnwgtp_038 {
    type: number
    sql: ${TABLE}.tufnwgtp_038 ;;
  }

  dimension: tufnwgtp_039 {
    type: number
    sql: ${TABLE}.tufnwgtp_039 ;;
  }

  dimension: tufnwgtp_040 {
    type: number
    sql: ${TABLE}.tufnwgtp_040 ;;
  }

  dimension: tufnwgtp_041 {
    type: number
    sql: ${TABLE}.tufnwgtp_041 ;;
  }

  dimension: tufnwgtp_042 {
    type: number
    sql: ${TABLE}.tufnwgtp_042 ;;
  }

  dimension: tufnwgtp_043 {
    type: number
    sql: ${TABLE}.tufnwgtp_043 ;;
  }

  dimension: tufnwgtp_044 {
    type: number
    sql: ${TABLE}.tufnwgtp_044 ;;
  }

  dimension: tufnwgtp_045 {
    type: number
    sql: ${TABLE}.tufnwgtp_045 ;;
  }

  dimension: tufnwgtp_046 {
    type: number
    sql: ${TABLE}.tufnwgtp_046 ;;
  }

  dimension: tufnwgtp_047 {
    type: number
    sql: ${TABLE}.tufnwgtp_047 ;;
  }

  dimension: tufnwgtp_048 {
    type: number
    sql: ${TABLE}.tufnwgtp_048 ;;
  }

  dimension: tufnwgtp_049 {
    type: number
    sql: ${TABLE}.tufnwgtp_049 ;;
  }

  dimension: tufnwgtp_050 {
    type: number
    sql: ${TABLE}.tufnwgtp_050 ;;
  }

  dimension: tufnwgtp_051 {
    type: number
    sql: ${TABLE}.tufnwgtp_051 ;;
  }

  dimension: tufnwgtp_052 {
    type: number
    sql: ${TABLE}.tufnwgtp_052 ;;
  }

  dimension: tufnwgtp_053 {
    type: number
    sql: ${TABLE}.tufnwgtp_053 ;;
  }

  dimension: tufnwgtp_054 {
    type: number
    sql: ${TABLE}.tufnwgtp_054 ;;
  }

  dimension: tufnwgtp_055 {
    type: number
    sql: ${TABLE}.tufnwgtp_055 ;;
  }

  dimension: tufnwgtp_056 {
    type: number
    sql: ${TABLE}.tufnwgtp_056 ;;
  }

  dimension: tufnwgtp_057 {
    type: number
    sql: ${TABLE}.tufnwgtp_057 ;;
  }

  dimension: tufnwgtp_058 {
    type: number
    sql: ${TABLE}.tufnwgtp_058 ;;
  }

  dimension: tufnwgtp_059 {
    type: number
    sql: ${TABLE}.tufnwgtp_059 ;;
  }

  dimension: tufnwgtp_060 {
    type: number
    sql: ${TABLE}.tufnwgtp_060 ;;
  }

  dimension: tufnwgtp_061 {
    type: number
    sql: ${TABLE}.tufnwgtp_061 ;;
  }

  dimension: tufnwgtp_062 {
    type: number
    sql: ${TABLE}.tufnwgtp_062 ;;
  }

  dimension: tufnwgtp_063 {
    type: number
    sql: ${TABLE}.tufnwgtp_063 ;;
  }

  dimension: tufnwgtp_064 {
    type: number
    sql: ${TABLE}.tufnwgtp_064 ;;
  }

  dimension: tufnwgtp_065 {
    type: number
    sql: ${TABLE}.tufnwgtp_065 ;;
  }

  dimension: tufnwgtp_066 {
    type: number
    sql: ${TABLE}.tufnwgtp_066 ;;
  }

  dimension: tufnwgtp_067 {
    type: number
    sql: ${TABLE}.tufnwgtp_067 ;;
  }

  dimension: tufnwgtp_068 {
    type: number
    sql: ${TABLE}.tufnwgtp_068 ;;
  }

  dimension: tufnwgtp_069 {
    type: number
    sql: ${TABLE}.tufnwgtp_069 ;;
  }

  dimension: tufnwgtp_070 {
    type: number
    sql: ${TABLE}.tufnwgtp_070 ;;
  }

  dimension: tufnwgtp_071 {
    type: number
    sql: ${TABLE}.tufnwgtp_071 ;;
  }

  dimension: tufnwgtp_072 {
    type: number
    sql: ${TABLE}.tufnwgtp_072 ;;
  }

  dimension: tufnwgtp_073 {
    type: number
    sql: ${TABLE}.tufnwgtp_073 ;;
  }

  dimension: tufnwgtp_074 {
    type: number
    sql: ${TABLE}.tufnwgtp_074 ;;
  }

  dimension: tufnwgtp_075 {
    type: number
    sql: ${TABLE}.tufnwgtp_075 ;;
  }

  dimension: tufnwgtp_076 {
    type: number
    sql: ${TABLE}.tufnwgtp_076 ;;
  }

  dimension: tufnwgtp_077 {
    type: number
    sql: ${TABLE}.tufnwgtp_077 ;;
  }

  dimension: tufnwgtp_078 {
    type: number
    sql: ${TABLE}.tufnwgtp_078 ;;
  }

  dimension: tufnwgtp_079 {
    type: number
    sql: ${TABLE}.tufnwgtp_079 ;;
  }

  dimension: tufnwgtp_080 {
    type: number
    sql: ${TABLE}.tufnwgtp_080 ;;
  }

  dimension: tufnwgtp_081 {
    type: number
    sql: ${TABLE}.tufnwgtp_081 ;;
  }

  dimension: tufnwgtp_082 {
    type: number
    sql: ${TABLE}.tufnwgtp_082 ;;
  }

  dimension: tufnwgtp_083 {
    type: number
    sql: ${TABLE}.tufnwgtp_083 ;;
  }

  dimension: tufnwgtp_084 {
    type: number
    sql: ${TABLE}.tufnwgtp_084 ;;
  }

  dimension: tufnwgtp_085 {
    type: number
    sql: ${TABLE}.tufnwgtp_085 ;;
  }

  dimension: tufnwgtp_086 {
    type: number
    sql: ${TABLE}.tufnwgtp_086 ;;
  }

  dimension: tufnwgtp_087 {
    type: number
    sql: ${TABLE}.tufnwgtp_087 ;;
  }

  dimension: tufnwgtp_088 {
    type: number
    sql: ${TABLE}.tufnwgtp_088 ;;
  }

  dimension: tufnwgtp_089 {
    type: number
    sql: ${TABLE}.tufnwgtp_089 ;;
  }

  dimension: tufnwgtp_090 {
    type: number
    sql: ${TABLE}.tufnwgtp_090 ;;
  }

  dimension: tufnwgtp_091 {
    type: number
    sql: ${TABLE}.tufnwgtp_091 ;;
  }

  dimension: tufnwgtp_092 {
    type: number
    sql: ${TABLE}.tufnwgtp_092 ;;
  }

  dimension: tufnwgtp_093 {
    type: number
    sql: ${TABLE}.tufnwgtp_093 ;;
  }

  dimension: tufnwgtp_094 {
    type: number
    sql: ${TABLE}.tufnwgtp_094 ;;
  }

  dimension: tufnwgtp_095 {
    type: number
    sql: ${TABLE}.tufnwgtp_095 ;;
  }

  dimension: tufnwgtp_096 {
    type: number
    sql: ${TABLE}.tufnwgtp_096 ;;
  }

  dimension: tufnwgtp_097 {
    type: number
    sql: ${TABLE}.tufnwgtp_097 ;;
  }

  dimension: tufnwgtp_098 {
    type: number
    sql: ${TABLE}.tufnwgtp_098 ;;
  }

  dimension: tufnwgtp_099 {
    type: number
    sql: ${TABLE}.tufnwgtp_099 ;;
  }

  dimension: tufnwgtp_100 {
    type: number
    sql: ${TABLE}.tufnwgtp_100 ;;
  }

  dimension: tufnwgtp_101 {
    type: number
    sql: ${TABLE}.tufnwgtp_101 ;;
  }

  dimension: tufnwgtp_102 {
    type: number
    sql: ${TABLE}.tufnwgtp_102 ;;
  }

  dimension: tufnwgtp_103 {
    type: number
    sql: ${TABLE}.tufnwgtp_103 ;;
  }

  dimension: tufnwgtp_104 {
    type: number
    sql: ${TABLE}.tufnwgtp_104 ;;
  }

  dimension: tufnwgtp_105 {
    type: number
    sql: ${TABLE}.tufnwgtp_105 ;;
  }

  dimension: tufnwgtp_106 {
    type: number
    sql: ${TABLE}.tufnwgtp_106 ;;
  }

  dimension: tufnwgtp_107 {
    type: number
    sql: ${TABLE}.tufnwgtp_107 ;;
  }

  dimension: tufnwgtp_108 {
    type: number
    sql: ${TABLE}.tufnwgtp_108 ;;
  }

  dimension: tufnwgtp_109 {
    type: number
    sql: ${TABLE}.tufnwgtp_109 ;;
  }

  dimension: tufnwgtp_110 {
    type: number
    sql: ${TABLE}.tufnwgtp_110 ;;
  }

  dimension: tufnwgtp_111 {
    type: number
    sql: ${TABLE}.tufnwgtp_111 ;;
  }

  dimension: tufnwgtp_112 {
    type: number
    sql: ${TABLE}.tufnwgtp_112 ;;
  }

  dimension: tufnwgtp_113 {
    type: number
    sql: ${TABLE}.tufnwgtp_113 ;;
  }

  dimension: tufnwgtp_114 {
    type: number
    sql: ${TABLE}.tufnwgtp_114 ;;
  }

  dimension: tufnwgtp_115 {
    type: number
    sql: ${TABLE}.tufnwgtp_115 ;;
  }

  dimension: tufnwgtp_116 {
    type: number
    sql: ${TABLE}.tufnwgtp_116 ;;
  }

  dimension: tufnwgtp_117 {
    type: number
    sql: ${TABLE}.tufnwgtp_117 ;;
  }

  dimension: tufnwgtp_118 {
    type: number
    sql: ${TABLE}.tufnwgtp_118 ;;
  }

  dimension: tufnwgtp_119 {
    type: number
    sql: ${TABLE}.tufnwgtp_119 ;;
  }

  dimension: tufnwgtp_120 {
    type: number
    sql: ${TABLE}.tufnwgtp_120 ;;
  }

  dimension: tufnwgtp_121 {
    type: number
    sql: ${TABLE}.tufnwgtp_121 ;;
  }

  dimension: tufnwgtp_122 {
    type: number
    sql: ${TABLE}.tufnwgtp_122 ;;
  }

  dimension: tufnwgtp_123 {
    type: number
    sql: ${TABLE}.tufnwgtp_123 ;;
  }

  dimension: tufnwgtp_124 {
    type: number
    sql: ${TABLE}.tufnwgtp_124 ;;
  }

  dimension: tufnwgtp_125 {
    type: number
    sql: ${TABLE}.tufnwgtp_125 ;;
  }

  dimension: tufnwgtp_126 {
    type: number
    sql: ${TABLE}.tufnwgtp_126 ;;
  }

  dimension: tufnwgtp_127 {
    type: number
    sql: ${TABLE}.tufnwgtp_127 ;;
  }

  dimension: tufnwgtp_128 {
    type: number
    sql: ${TABLE}.tufnwgtp_128 ;;
  }

  dimension: tufnwgtp_129 {
    type: number
    sql: ${TABLE}.tufnwgtp_129 ;;
  }

  dimension: tufnwgtp_130 {
    type: number
    sql: ${TABLE}.tufnwgtp_130 ;;
  }

  dimension: tufnwgtp_131 {
    type: number
    sql: ${TABLE}.tufnwgtp_131 ;;
  }

  dimension: tufnwgtp_132 {
    type: number
    sql: ${TABLE}.tufnwgtp_132 ;;
  }

  dimension: tufnwgtp_133 {
    type: number
    sql: ${TABLE}.tufnwgtp_133 ;;
  }

  dimension: tufnwgtp_134 {
    type: number
    sql: ${TABLE}.tufnwgtp_134 ;;
  }

  dimension: tufnwgtp_135 {
    type: number
    sql: ${TABLE}.tufnwgtp_135 ;;
  }

  dimension: tufnwgtp_136 {
    type: number
    sql: ${TABLE}.tufnwgtp_136 ;;
  }

  dimension: tufnwgtp_137 {
    type: number
    sql: ${TABLE}.tufnwgtp_137 ;;
  }

  dimension: tufnwgtp_138 {
    type: number
    sql: ${TABLE}.tufnwgtp_138 ;;
  }

  dimension: tufnwgtp_139 {
    type: number
    sql: ${TABLE}.tufnwgtp_139 ;;
  }

  dimension: tufnwgtp_140 {
    type: number
    sql: ${TABLE}.tufnwgtp_140 ;;
  }

  dimension: tufnwgtp_141 {
    type: number
    sql: ${TABLE}.tufnwgtp_141 ;;
  }

  dimension: tufnwgtp_142 {
    type: number
    sql: ${TABLE}.tufnwgtp_142 ;;
  }

  dimension: tufnwgtp_143 {
    type: number
    sql: ${TABLE}.tufnwgtp_143 ;;
  }

  dimension: tufnwgtp_144 {
    type: number
    sql: ${TABLE}.tufnwgtp_144 ;;
  }

  dimension: tufnwgtp_145 {
    type: number
    sql: ${TABLE}.tufnwgtp_145 ;;
  }

  dimension: tufnwgtp_146 {
    type: number
    sql: ${TABLE}.tufnwgtp_146 ;;
  }

  dimension: tufnwgtp_147 {
    type: number
    sql: ${TABLE}.tufnwgtp_147 ;;
  }

  dimension: tufnwgtp_148 {
    type: number
    sql: ${TABLE}.tufnwgtp_148 ;;
  }

  dimension: tufnwgtp_149 {
    type: number
    sql: ${TABLE}.tufnwgtp_149 ;;
  }

  dimension: tufnwgtp_150 {
    type: number
    sql: ${TABLE}.tufnwgtp_150 ;;
  }

  dimension: tufnwgtp_151 {
    type: number
    sql: ${TABLE}.tufnwgtp_151 ;;
  }

  dimension: tufnwgtp_152 {
    type: number
    sql: ${TABLE}.tufnwgtp_152 ;;
  }

  dimension: tufnwgtp_153 {
    type: number
    sql: ${TABLE}.tufnwgtp_153 ;;
  }

  dimension: tufnwgtp_154 {
    type: number
    sql: ${TABLE}.tufnwgtp_154 ;;
  }

  dimension: tufnwgtp_155 {
    type: number
    sql: ${TABLE}.tufnwgtp_155 ;;
  }

  dimension: tufnwgtp_156 {
    type: number
    sql: ${TABLE}.tufnwgtp_156 ;;
  }

  dimension: tufnwgtp_157 {
    type: number
    sql: ${TABLE}.tufnwgtp_157 ;;
  }

  dimension: tufnwgtp_158 {
    type: number
    sql: ${TABLE}.tufnwgtp_158 ;;
  }

  dimension: tufnwgtp_159 {
    type: number
    sql: ${TABLE}.tufnwgtp_159 ;;
  }

  dimension: tufnwgtp_160 {
    type: number
    sql: ${TABLE}.tufnwgtp_160 ;;
  }
  measure: count {
    type: count
  }
}
