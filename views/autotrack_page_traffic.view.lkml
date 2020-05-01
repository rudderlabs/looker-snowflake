view: autotrack_page_traffic {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            context_page_url as page
            , count(distinct(anonymous_id)) as visitor_count
          from
            pages
          where
            page is not null
          group by
            page
          ;;
  }

  dimension: page {
    type: string
    sql:  ${TABLE}.page ;;
  }

  dimension: visitor_count {
    type: number
    sql:  ${TABLE}.visitor_count ;;
  }
}
