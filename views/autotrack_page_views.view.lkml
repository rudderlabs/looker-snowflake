view: autotrack_page_views {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            context_page_url as page
            , count(*) as view_count
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

  dimension: view_count {
    type: number
    sql:  ${TABLE}.view_count ;;
  }
}
