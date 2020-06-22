view: webapp_monthly_count_by_event {
  derived_table: {
    sql_trigger_value: select count(*) from tracks ;;
    sql:  select
            event
            , cast(received_at as timestamp) as received_at
          from
            tracks
          ;;
  }

  dimension: event {
    type: string
    sql:  lower(${TABLE}.event) ;;
  }

  dimension: month {
    type: date_month
    sql: ${TABLE}.received_at ;;
  }

  measure: count {
    type: count
  }
}
