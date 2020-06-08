view: autotrack_dau_example {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            anonymous_id,
            cast(sent_at as date) as sent_at_date
          from
            pages
          ;;
  }

  dimension: anonymous_id {
    type:  string
    sql:  ${TABLE}.anonymous_id ;;
  }
  dimension_group: sent_at_date {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.sent_at_date ;;
  }

  measure : user_count {
    type: count_distinct
    sql: ${anonymous_id} ;;

  }
}
