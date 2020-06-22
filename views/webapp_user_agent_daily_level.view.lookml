view: webapp_user_agent_daily_level {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:
          select
            case
              when contains(context_useragent,'Mac') then 'MacOS/iOS'
              when contains(context_useragent,'Win') then 'Windows'
              when contains(context_useragent,'X11') then 'Unix/Linux'
              when contains(context_useragent,'Android') then 'Android'
              else 'Others'
            end as useragent
            , cast(sent_at as date) as day
          from
            pages
          ;;
  }

  dimension: user_agent {
    type:  string
    sql: ${TABLE}.useragent ;;
  }

  dimension: day {
    type: date
    sql: ${TABLE}.day ;;
  }

  measure: request_count {
    type: count
  }

}
