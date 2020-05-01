view: autotrack_7_day_visitor_count_moving_average {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:
        with
          daywise_visitor_count as
            (
              select
                cast(sent_at as date) as sent_at_date
                , count(distinct(anonymous_id)) as visitor_count
              from
                pages
              group by
                sent_at_date
            )

          select
            sent_at_date
            , visitor_count
            , avg(visitor_count)
              over (order by sent_at_date rows between 6 preceding and current row)
                as seven_day_visitor_count_moving_average
          from
            daywise_visitor_count
          order by
            sent_at_date
        ;;
  }

  dimension:  day {
    type:  date
    sql:  ${TABLE}.sent_at_date ;;

  }

  dimension: seven_day_visitor_count_moving_average {
    type: number
    sql: ${TABLE}.seven_day_visitor_count_moving_average ;;
  }
}
