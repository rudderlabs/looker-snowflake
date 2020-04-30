view: autotrack_mau {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            concat((date_part(yyyy,cast(sent_at as date)))
                    ,'-'
                    ,(date_part(mm,cast(sent_at as date))))
                    as month_string
            , count(distinct(anonymous_id)) as user_count
          from
            pages
          group by
            month_string
          ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month_string ;;
  }

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count
      ;;
  }
}
