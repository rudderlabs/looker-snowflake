view: autotrack_dau {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            cast(sent_at as date) as sent_at_date
            , count(distinct(anonymous_id)) as user_count
          from
            pages
          group by
            sent_at_date
          ;;
  }

  dimension_group: sent_at_date {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.sent_at_date ;;
  }

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count
    ;;
  }
}
