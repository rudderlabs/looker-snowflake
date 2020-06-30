- dashboard: rudder_config_plane_dashboard
  title: Rudder Config Plane Dashboard
  layout: newspaper
  elements:
  - title: Daily Average User
    name: Daily Average User
    model: rudder-webapp-snowflake
    explore: webapp_dau
    type: looker_column
    fields: [webapp_dau.user_count, webapp_dau.sent_at_date_date]
    sorts: [webapp_dau.sent_at_date_date]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      webapp_dau.user_count: "#FBB555"
    show_null_points: true
    interpolation: linear
    swap_axes: false
    defaults_version: 1
    listen: {}
    row: 8
    col: 0
    width: 8
    height: 6
  - title: Monthly Average User
    name: Monthly Average User
    model: rudder-webapp-snowflake
    explore: webapp_mau
    type: looker_column
    fields: [webapp_mau.user_count, webapp_mau.month]
    sorts: [webapp_mau.month]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      webapp_mau.user_count: "#72D16D"
    defaults_version: 1
    listen: {}
    row: 8
    col: 8
    width: 8
    height: 6
  - title: Top 10 Pages by Visitors
    name: Top 10 Pages by Visitors
    model: rudder-webapp-snowflake
    explore: webapp_page_traffic
    type: looker_column
    fields: [webapp_page_traffic.visitor_count, webapp_page_traffic.page]
    sorts: [webapp_page_traffic.visitor_count desc]
    limit: 10
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      webapp_page_traffic.visitor_count: "#592EC2"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 16
    col: 12
    width: 12
    height: 6
  - title: Top 10 Pages by Views
    name: Top 10 Pages by Views
    model: rudder-webapp-snowflake
    explore: webapp_page_views
    type: looker_column
    fields: [webapp_page_views.view_count, webapp_page_views.page]
    sorts: [webapp_page_views.view_count desc]
    limit: 20
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      webapp_page_views.view_count: "#B32F37"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 16
    col: 0
    width: 12
    height: 6
  - title: 7-Day Visitor Count Moving Average
    name: 7-Day Visitor Count Moving Average
    model: rudder-webapp-snowflake
    explore: webapp_7_day_visitor_count_moving_average
    type: looker_column
    fields: [webapp_7_day_visitor_count_moving_average.seven_day_visitor_count_moving_average,
      webapp_7_day_visitor_count_moving_average.day]
    sorts: [webapp_7_day_visitor_count_moving_average.day]
    limit: 210
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      webapp_7_day_visitor_count_moving_average.seven_day_visitor_count_moving_average: "#B1399E"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 8
    col: 16
    width: 8
    height: 6
  - title: Last 7 Days OS Daily Level Config Plane
    name: Last 7 Days OS Daily Level Config Plane
    model: rudder-webapp-snowflake
    explore: webapp_user_agent_daily_level
    type: looker_column
    fields: [webapp_user_agent_daily_level.day, webapp_user_agent_daily_level.user_agent,
      webapp_user_agent_daily_level.request_count]
    pivots: [webapp_user_agent_daily_level.user_agent]
    fill_fields: [webapp_user_agent_daily_level.day]
    filters:
      webapp_user_agent_daily_level.day: 7 days
    sorts: [webapp_user_agent_daily_level.day desc, webapp_user_agent_daily_level.user_agent]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 41
    col: 0
    width: 13
    height: 6
  - title: UTM Source
    name: UTM Source
    model: rudder-webapp-snowflake
    explore: webapp_utm_source
    type: looker_column
    fields: [webapp_utm_source.day, webapp_utm_source.utm_source, webapp_utm_source.request_count]
    pivots: [webapp_utm_source.utm_source]
    fill_fields: [webapp_utm_source.day]
    sorts: [webapp_utm_source.day desc, webapp_utm_source.utm_source]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 24
    col: 12
    width: 12
    height: 7
  - title: UTM Campaign
    name: UTM Campaign
    model: rudder-webapp-snowflake
    explore: webapp_utm_campaign
    type: looker_column
    fields: [webapp_utm_campaign.day, webapp_utm_campaign.utm_campaign, webapp_utm_campaign.request_count]
    pivots: [webapp_utm_campaign.utm_campaign]
    fill_fields: [webapp_utm_campaign.day]
    sorts: [webapp_utm_campaign.day desc, webapp_utm_campaign.utm_campaign]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 24
    col: 0
    width: 12
    height: 7
  - title: Top 3 Referrers By Signup Count
    name: Top 3 Referrers By Signup Count
    model: rudder-webapp-snowflake
    explore: webapp_signup_by_referrer
    type: looker_pie
    fields: [webapp_signup_by_referrer.referrer, webapp_signup_by_referrer.signup_page_view_count]
    sorts: [webapp_signup_by_referrer.signup_page_view_count desc]
    limit: 3
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 31
    col: 0
    width: 12
    height: 8
  - name: "<span class='fa fa-tachometer'>User Engagement Metrics</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'>User Engagement Metrics</span>"
    subtitle_text: Daily, Monthly Active Users and 7-Day Average Visitor Count on
      Config Plane
    row: 6
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-tachometer'>Top 10 Pages</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'>Top 10 Pages</span>"
    subtitle_text: Config Plane Page Views and Traffic (Visitors)
    row: 14
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-tachometer'> Campaign Metrics</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'> Campaign Metrics</span>"
    subtitle_text: UTM Source and Campaign Metrics, Top Referrers for Config Plane
    row: 22
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-tachometer'>Miscellaneous Metrics</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'>Miscellaneous Metrics</span>"
    subtitle_text: Top OS  and Users
    row: 39
    col: 0
    width: 24
    height: 2
  - title: Top 10 Users by View Frequency
    name: Top 10 Users by View Frequency
    model: rudder-webapp-snowflake
    explore: webapp_view_freq_by_user
    type: looker_column
    fields: [webapp_view_freq_by_user.view_freq, webapp_view_freq_by_user.user]
    sorts: [webapp_view_freq_by_user.view_freq desc]
    limit: 10
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      webapp_view_freq_by_user.view_freq: "#FBB555"
    defaults_version: 1
    listen: {}
    row: 41
    col: 13
    width: 11
    height: 6
  - title: Signup By GitHub UTM
    name: Signup By GitHub UTM
    model: rudder-webapp-snowflake
    explore: webapp_signups_by_github_utm
    type: looker_column
    fields: [webapp_signups_by_github_utm.day, webapp_signups_by_github_utm.page,
      webapp_signups_by_github_utm.count]
    pivots: [webapp_signups_by_github_utm.page]
    fill_fields: [webapp_signups_by_github_utm.day]
    sorts: [webapp_signups_by_github_utm.day, webapp_signups_by_github_utm.page 0]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 31
    col: 12
    width: 12
    height: 8
  - title: Current Month Total Page Views
    name: Current Month Total Page Views
    model: rudder-webapp-snowflake
    explore: pages
    type: single_value
    fields: [pages.received_month, pages.page_count]
    fill_fields: [pages.received_month]
    sorts: [pages.received_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${pages.page_count}/offset(${pages.page_count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Change Over Last Month
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 6
  - title: Current Month Total Users
    name: Current Month Total Users
    model: rudder-webapp-snowflake
    explore: pages
    type: single_value
    fields: [pages.received_month, pages.user_count]
    fill_fields: [pages.received_month]
    sorts: [pages.received_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${pages.user_count}/offset(${pages.user_count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Change Over Last Month
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 6
  - title: Current Month Total Events
    name: Current Month Total Events
    model: rudder-webapp-snowflake
    explore: tracks
    type: single_value
    fields: [tracks.received_month, tracks.count]
    fill_fields: [tracks.received_month]
    sorts: [tracks.received_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${tracks.count}/offset(${tracks.count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Change Over Last Month
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 6
  - title: Current Month Average Events Per User
    name: Current Month Average Events Per User
    model: rudder-webapp-snowflake
    explore: tracks
    type: single_value
    fields: [tracks.received_month, tracks.average_event_per_user]
    fill_fields: [tracks.received_month]
    sorts: [tracks.received_month desc]
    limit: 10
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${tracks.average_event_per_user}/offset(${tracks.average_event_per_user},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#0.00"
    comparison_label: Change Over Last Month
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 6
