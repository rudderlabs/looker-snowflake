- dashboard: rudder_config_plane_user_dashboard
  title: Rudder Config Plane User Dashboard
  layout: newspaper
  elements:
  - title: Daily User Page Statistics
    name: Daily User Page Statistics
    model: rudder-webapp-snowflake
    explore: webapp_user_page_statistics
    type: looker_column
    fields: [webapp_user_page_statistics.day, webapp_user_page_statistics.page, webapp_user_page_statistics.count]
    pivots: [webapp_user_page_statistics.page]
    fill_fields: [webapp_user_page_statistics.day]
    sorts: [webapp_user_page_statistics.day desc, webapp_user_page_statistics.page]
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
    defaults_version: 1
    listen:
      User: webapp_user_page_statistics.user
    row: 15
    col: 0
    width: 12
    height: 7
  - title: Daily User Event Statistics
    name: Daily User Event Statistics
    model: rudder-webapp-snowflake
    explore: webapp_user_event_statistics
    type: looker_column
    fields: [webapp_user_event_statistics.day, webapp_user_event_statistics.event,
      webapp_user_event_statistics.count]
    pivots: [webapp_user_event_statistics.event]
    fill_fields: [webapp_user_event_statistics.day]
    sorts: [webapp_user_event_statistics.day desc, webapp_user_event_statistics.event]
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
    listen:
      User: webapp_user_event_statistics.user_id
    row: 15
    col: 12
    width: 12
    height: 7
  - name: "<span class='fa fa-tachometer'>Config Plane User Dashboard</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'>Config Plane User Dashboard</span>"
    subtitle_text: Various User-specific Metrics for Config Plane
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Lifetime Event Count By User
    name: Lifetime Event Count By User
    model: rudder-webapp-snowflake
    explore: tracks
    type: single_value
    fields: [tracks.count]
    filters: {}
    sorts: [tracks.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
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
    listen:
      User: tracks.user_id
    row: 2
    col: 0
    width: 8
    height: 6
  - title: Current Month Event Count for User
    name: Current Month Event Count for User
    model: rudder-webapp-snowflake
    explore: tracks
    type: single_value
    fields: [tracks.user_id, tracks.count]
    filters:
      tracks.received_month: 1 months
    sorts: [tracks.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      User: tracks.user_id
    row: 2
    col: 8
    width: 8
    height: 6
  - title: Time of Last Event TriggerBy User
    name: Time of Last Event TriggerBy User
    model: rudder-webapp-snowflake
    explore: tracks
    type: single_value
    fields: [tracks.received_time]
    filters: {}
    sorts: [tracks.received_time desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      User: tracks.user_id
    row: 2
    col: 16
    width: 8
    height: 6
  - title: User Journey
    name: User Journey
    model: rudder-webapp-snowflake
    explore: tracks_flow
    type: rudder_sunburst
    fields: [tracks_flow.event, tracks_flow.event_2, tracks_flow.event_3, tracks_flow.event_4,
      tracks_flow.event_5, tracks_flow.session_count]
    filters: {}
    sorts: [tracks_flow.session_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    color_by: node
    show_null_points: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    listen:
      User: tracks_flow.user_id
    row: 8
    col: 7
    width: 10
    height: 7
  filters:
  - name: User
    title: User
    type: field_filter
    default_value: justin.pfifer@carvana.com
    allow_multiple_values: true
    required: false
    model: rudder-webapp-snowflake
    explore: webapp_user_page_statistics
    listens_to_filters: []
    field: webapp_user_page_statistics.user
