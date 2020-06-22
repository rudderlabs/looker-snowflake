view: webapp_utm_source {
  derived_table: {
    sql_trigger_value: select count(*) from user_signed_up ;;
    sql:
      select
        cast(sent_at as date) as day
        , split_part
            (
              split_part
                (
                  context_page_url
                  , '&'
                  , '2'
                )
              , '='
              , '2'
            )
          as utm_source
      from
        user_signed_up
      where
        context_page_url like '%utm_source%'
      ;;
  }

  dimension: day {
    type:  date
    sql:  ${TABLE}.day ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  measure: request_count {
    type:  count
  }

}
