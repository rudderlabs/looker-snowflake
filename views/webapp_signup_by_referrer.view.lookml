view: webapp_signup_by_referrer {
  derived_table: {
    sql_trigger_value: select count(*) from user_signed_up ;;
    sql:  select
            split_part(split_part(context_page_referrer,'//',2),'/',1) as referrer
          from
            user_signed_up
          where
            context_page_referrer is not null
          ;;
  }

  dimension: referrer {
    type:  string
    sql: ${TABLE}.referrer ;;
  }

  measure: signup_page_view_count {
    type:  count
  }

}
