# Define the database connection to be used for this model.
connection: "hackathon_americantime"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hackathon_2023_american_time_use_survey_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hackathon_2023_american_time_use_survey_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hackathon 2023 American Time Use Survey"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: atusact {}

explore: atussum {}

explore: atusrostec {}

explore: atuscps {
  sql_always_where: ${tulineno} = 1 ;;
  join: atussum {
    type: left_outer
    relationship: many_to_one
    sql_on: ${atuscps.tucaseid} = ${atussum.tucaseid} ;;
  }

  join: states {
    type: left_outer
    relationship: many_to_one
    sql_on: ${atuscps.gestfips} = ${states.fips_code} ;;
  }
}

explore: atuswho {}

explore: atusresp {}

explore: atuswgts {}

explore: atusrost {}

explore: codes {}

explore: fivetran_audit {}
