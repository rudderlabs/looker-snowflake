view: webapp_signups_by_github_utm {
  derived_table: {
    sql_trigger_value: select count(*) from user_signed_up ;;
    sql:  select
            case
              when context_page_url like '%utm_campaign=hosted&utm_content=intro%' then 'Hosted:Intro'
              when context_page_url like '%utm_campaign=hosted&utm_content=setup-instructions%' then 'Hosted:Setup Instructions'
              when context_page_url like '%utm_campaign=selfhosted&utm_content=k8s%' then 'Self-Hosted:K8S'
              when context_page_url like '%utm_campaign=selfhosted&utm_content=docker%' then 'Self-Hosted:Docker'
            end as page
            , cast(sent_at as date) as day
          from
            user_signed_up
          where
            context_page_url like '%utm_source=github&utm_medium=rdr-srv%'

          ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: day {
    type: date
    sql: ${TABLE}.day ;;
  }

  measure: count {
    type:  count
  }
}
