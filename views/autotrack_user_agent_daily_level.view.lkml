view: autotrack_user_agent_daily_level {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:
          select
            context_useragent
            , cast(sent_at as date) as day
          from
            pages
          ;;
  }

  dimension: user_agent {
    type:  string
    sql: ${TABLE}.context_useragent ;;
  }

  dimension: day {
    type: date
    sql: ${TABLE}.day ;;
  }

  measure: request_count {
    type: count
  }

}
