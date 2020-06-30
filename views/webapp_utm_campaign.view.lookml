view: webapp_utm_campaign {
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
                  , '4'
                )
              , '='
              , '2'
            )
          as utm_campaign
      from
        user_signed_up
      where
        context_page_url like '%utm_campaign%'
      ;;
  }

  dimension: day {
    type:  date
    sql:  ${TABLE}.day ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  measure: request_count {
    type:  count
  }

}
