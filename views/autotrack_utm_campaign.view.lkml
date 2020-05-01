view: autotrack_utm_campaign {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:
      select
        cast(sent_at as date) as day
        , split_part
            (
              split_part
                (
                  search
                  , '&'
                  , '3'
                )
              , '='
              , '2'
            )
          as utm_campaign
      from
        pages
      where
        search like '?utm_source%'
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
