view: autotrack_event_freq_by_user {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            anonymous_id
            , count(*) as event_count
            , datediff(day, min(cast(sent_at as timestamp)),max(cast(sent_at as timestamp))) as days_active
            , case
                when days_active > 0 then event_count/days_active
                else event_count/1
              end as event_freq
          from
            pages
          group by
            anonymous_id
          ;;
  }

  dimension: user {
    type: string
    sql:  ${TABLE}.anonymous_id ;;
  }

  dimension: event_freq {
    type: number
    sql:  ${TABLE}.event_freq ;;
  }

}
