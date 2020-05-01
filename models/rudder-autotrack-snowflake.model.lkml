  connection: "rudder-autotrack-snowflake"

# include all the views
include: "/views/**/*.view"

datagroup: rudder_autotrack_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rudder_autotrack_snowflake_default_datagroup

explore: autotrack_dau {}

explore: autotrack_mau {}

explore: autotrack_page_traffic {}

explore: autotrack_page_views {}

explore: autotrack_event_freq_by_user {}

explore : autotrack_7_day_visitor_count_moving_average {}

# explore: autotrack {}

# explore: tracks {}
