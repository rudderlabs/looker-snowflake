view: webapp_view_freq_by_user {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            user_id
            , count(*) as view_count
            , datediff(day, min(cast(sent_at as timestamp)),max(cast(sent_at as timestamp))) as days_active
            , case
                when days_active > 0 then view_count/days_active
                else view_count/1
              end as view_freq
          from
            pages
          where
            user_id is not null
          group by
            user_id
          ;;
  }

  dimension: user {
    type: string
    sql:  ${TABLE}.user_id ;;
  }

  dimension: view_freq {
    type: number
    sql:  ${TABLE}.view_freq ;;
  }

}
