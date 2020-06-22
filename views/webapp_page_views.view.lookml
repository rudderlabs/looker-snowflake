view: webapp_page_views {
  derived_table: {
    sql_trigger_value: select count(*) from pages ;;
    sql:  select
            case
              when strtok(split_part(trim(context_page_url),'//',2),'/',2) is null
                then 'Landing Page'
              when contains(strtok(split_part(trim(context_page_url),'//',2),'/',2),'?')
                then 'Landing Page'
              else  left(strtok(split_part(trim(context_page_url),'//',2),'/',2),
                          len(strtok(split_part(trim(context_page_url),'//',2),'/',2))
                          - position(split_part(split_part(trim(context_page_url),'//',2),'/',2),'?'))
              end as page
          from
            pages
          where
            context_page_url is not null
          and
            context_page_url like '%http%'
          ;;
  }

  dimension: page {
    type: string
    sql:  ${TABLE}.page ;;
  }

  measure: view_count {
    type: count
  }
}
