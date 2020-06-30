view: user_signed_up {
  sql_table_name: "RUDDERWEBAPP"."USER_SIGNED_UP"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: _organization {
    type: string
    sql: ${TABLE}."_ORGANIZATION" ;;
  }

  dimension: anonymous_id {
    type: string
    tags: ["rudder_anonymous_id"]
    sql: ${TABLE}."ANONYMOUS_ID" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  dimension: context_app_build {
    type: string
    sql: ${TABLE}."CONTEXT_APP_BUILD" ;;
  }

  dimension: context_app_name {
    type: string
    sql: ${TABLE}."CONTEXT_APP_NAME" ;;
  }

  dimension: context_app_namespace {
    type: string
    sql: ${TABLE}."CONTEXT_APP_NAMESPACE" ;;
  }

  dimension: context_app_version {
    type: string
    sql: ${TABLE}."CONTEXT_APP_VERSION" ;;
  }

  dimension: context_device_gtm_enabled {
    type: string
    sql: ${TABLE}."CONTEXT_DEVICE_GTM_ENABLED" ;;
  }

  dimension: context_device_rudder_device_id {
    type: string
    sql: ${TABLE}."CONTEXT_DEVICE_RUDDER_DEVICE_ID" ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}."CONTEXT_IP" ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}."CONTEXT_LIBRARY_NAME" ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}."CONTEXT_LIBRARY_VERSION" ;;
  }

  dimension: context_locale {
    type: string
    sql: ${TABLE}."CONTEXT_LOCALE" ;;
  }

  dimension: context_os_name {
    type: string
    sql: ${TABLE}."CONTEXT_OS_NAME" ;;
  }

  dimension: context_os_version {
    type: string
    sql: ${TABLE}."CONTEXT_OS_VERSION" ;;
  }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_PATH" ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_REFERRER" ;;
  }

  dimension: context_page_search {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_SEARCH" ;;
  }

  dimension: context_page_title {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_TITLE" ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}."CONTEXT_PAGE_URL" ;;
  }

  dimension: context_screen_density {
    type: number
    sql: ${TABLE}."CONTEXT_SCREEN_DENSITY" ;;
  }

  dimension: context_traits_company {
    type: string
    sql: ${TABLE}."CONTEXT_TRAITS_COMPANY" ;;
  }

  dimension: context_traits_email {
    type: string
    sql: ${TABLE}."CONTEXT_TRAITS_EMAIL" ;;
  }

  dimension: context_traits_name {
    type: string
    sql: ${TABLE}."CONTEXT_TRAITS_NAME" ;;
  }

  dimension: context_traits_organization {
    type: string
    sql: ${TABLE}."CONTEXT_TRAITS_ORGANIZATION" ;;
  }

  dimension: context_useragent {
    type: string
    sql: ${TABLE}."CONTEXT_USERAGENT" ;;
  }

  dimension: email {
    type: string
    tags: ["email"]
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}."EVENT" ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}."EVENT_TEXT" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: original_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ORIGINAL_TIMESTAMP" ;;
  }

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RECEIVED_AT" ;;
  }

  dimension_group: sent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SENT_AT" ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TIMESTAMP" ;;
  }

  dimension: user_id {
    type: string
    tags: ["user_id"]
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension_group: uuid_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."UUID_TS" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      context_library_name,
      context_traits_name,
      name,
      context_os_name,
      context_app_name
    ]
  }
}
