view: webapp_mau {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            concat((date_part(yyyy,cast(sent_at as date)))
                    ,'-'
                    ,(date_part(mm,cast(sent_at as date))))
                    as month_string
            , anonymous_id
          from
            pages
          ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month_string ;;
  }

  measure: user_count {
    type: count_distinct
    sql: ${TABLE}.anonymous_id
      ;;
  }
}
