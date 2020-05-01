view: autotrack_utm_source {
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
                  , '1'
                )
              , '='
              , '2'
            )
          as utm_source
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

    dimension: utm_source {
      type: string
      sql: ${TABLE}.utm_source ;;
    }

    measure: request_count {
      type:  count
    }

  }
