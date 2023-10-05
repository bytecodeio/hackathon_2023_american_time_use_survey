view: states {
  derived_table: {
    sql: SELECT 'Alabama' AS state_name,'AL' AS state_abbreviation,1 AS fips_code
            UNION ALL
            SELECT 'Alaska','AK',2
            UNION ALL
            SELECT 'Arizona','AZ',4
            UNION ALL
            SELECT 'Arkansas','AR',5
            UNION ALL
            SELECT 'California','CA',6
            UNION ALL
            SELECT 'Colorado','CO',8
            UNION ALL
            SELECT 'Connecticut','CT',9
            UNION ALL
            SELECT 'Delaware','DE',10
            UNION ALL
            SELECT 'District of Columbia','DC',11
            UNION ALL
            SELECT 'Florida','FL',12
            UNION ALL
            SELECT 'Georgia','GA',13
            UNION ALL
            SELECT 'Hawaii','HI',15
            UNION ALL
            SELECT 'Idaho','ID',16
            UNION ALL
            SELECT 'Illinois','IL',17
            UNION ALL
            SELECT 'Indiana','IN',18
            UNION ALL
            SELECT 'Iowa','IA',19
            UNION ALL
            SELECT 'Kansas','KS',20
            UNION ALL
            SELECT 'Kentucky','KY',21
            UNION ALL
            SELECT 'Louisiana','LA',22
            UNION ALL
            SELECT 'Maine','ME',23
            UNION ALL
            SELECT 'Maryland','MD',24
            UNION ALL
            SELECT 'Massachusetts','MA',25
            UNION ALL
            SELECT 'Michigan','MI',26
            UNION ALL
            SELECT 'Minnesota','MN',27
            UNION ALL
            SELECT 'Mississippi','MS',28
            UNION ALL
            SELECT 'Missouri','MO',29
            UNION ALL
            SELECT 'Montana','MT',30
            UNION ALL
            SELECT 'Nebraska','NE',31
            UNION ALL
            SELECT 'Nevada','NV',32
            UNION ALL
            SELECT 'New Hampshire','NH',33
            UNION ALL
            SELECT 'New Jersey','NJ',34
            UNION ALL
            SELECT 'New Mexico','NM',35
            UNION ALL
            SELECT 'New York','NY',36
            UNION ALL
            SELECT 'North Carolina','NC',37
            UNION ALL
            SELECT 'North Dakota','ND',38
            UNION ALL
            SELECT 'Ohio','OH',39
            UNION ALL
            SELECT 'Oklahoma','OK',40
            UNION ALL
            SELECT 'Oregon','OR',41
            UNION ALL
            SELECT 'Pennsylvania','PA',42
            UNION ALL
            SELECT 'Puerto Rico','PR',72
            UNION ALL
            SELECT 'Rhode Island','RI',44
            UNION ALL
            SELECT 'South Carolina','SC',45
            UNION ALL
            SELECT 'South Dakota','SD',46
            UNION ALL
            SELECT 'Tennessee','TN',47
            UNION ALL
            SELECT 'Texas','TX',48
            UNION ALL
            SELECT 'Utah','UT',49
            UNION ALL
            SELECT 'Vermont','VT',50
            UNION ALL
            SELECT 'Virginia','VA',51
            UNION ALL
            SELECT 'Virgin Islands','VI',78
            UNION ALL
            SELECT 'Washington','WA',53
            UNION ALL
            SELECT 'West Virginia','WV',54
            UNION ALL
            SELECT 'Wisconsin','WI',55
            UNION ALL
            SELECT 'Wyoming','WY',56 ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: state_abbreviation {
    type: string
    sql: ${TABLE}.state_abbreviation ;;
  }

  dimension: fips_code {
    type: number
    sql: ${TABLE}.fips_code ;;
  }

  set: detail {
    fields: [
      state_name,
      state_abbreviation,
      fips_code
    ]
  }
}
