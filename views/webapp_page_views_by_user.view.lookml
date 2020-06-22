view: webapp_page_views_by_user {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            user_id
            , cast(received_at as timestamp) as received_at
          from
            pages
          where
            user_id is not null
          ;;
  }

  dimension: user_id {
    type: string
    sql:  ${TABLE}.user_id ;;
    link: {
      label: "User Dashboard"
      url: "https://rudderstack.looker.com/dashboards/14?User={{ value }}"
    }
    tags: ["user_id"]
  }

  dimension: month {
    type: date_month
    sql: ${TABLE}.received_at ;;
  }

  measure: view_count {
    type: count
  }
}
