view: webapp_dau {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            cast(sent_at as date) as sent_at_date
            , user_id
          from
            pages
          ;;
  }

  dimension_group: sent_at_date {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.sent_at_date ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id
      ;;
  }

  measure: user_count {
    type:  count_distinct
    sql: ${TABLE}.user_id ;;
  }
}
