connection: "rudder-webapp-snowflake"

# include all the views
include: "/views/**/*.view"

datagroup: rudder_webapp_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "6 hours"
}

persist_with: rudder_webapp_snowflake_default_datagroup

explore: webapp_dau {}

explore: webapp_mau {}

explore: webapp_page_traffic {}

explore: webapp_page_views {}

explore: webapp_view_freq_by_user {}

explore: webapp_7_day_visitor_count_moving_average {}

explore: webapp_user_agent_daily_level {}

explore: webapp_utm_source {}

explore: webapp_utm_campaign {}

explore: webapp_signup_by_referrer {}

explore: webapp_signup_by_type {}

explore: webapp_user_page_statistics {}

explore: webapp_user_event_statistics {}

explore: webapp_signups_by_github_utm {}

explore: tracks {
  join: user_signed_up {
    type: inner
    sql_on: ${tracks.user_id} = ${user_signed_up.user_id} ;;
    relationship: many_to_one
  }
}

explore: all_unique_events {}

explore: pages {}

explore: webapp_page_views_by_month {}

explore: webapp_page_views_by_user {}

explore: webapp_monthly_count_by_event {}

explore: tracks_flow {}

explore: test_view_for_action_hub {}

explore: user_signed_up {}
