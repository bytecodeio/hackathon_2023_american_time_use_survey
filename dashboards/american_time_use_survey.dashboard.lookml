---
- dashboard: american_time_use_survey
  title: American Time Use Survey
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cvUgSdHcvWCYYpRLrx8KrY
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <div style="padding: 5px; min-width: 300px;"><table><tr><td>
          </td><td>
          <center>
          <h1 style= "color: #1589FF; font-weight: 400; font-size: 50px"> Are Americans Taking Care of Themselves? </h1></center>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Total Respondents
    name: Total Respondents
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: looker_google_map
    fields: [atuscps.count, states.state_abbreviation]
    sorts: [atuscps.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    listen: {}
    row: 8
    col: 0
    width: 24
    height: 13
  - title: Average Sleep in Hours by State
    name: Average Sleep in Hours by State
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: looker_google_map
    fields: [states.state_name, atussum.avg_sleep_hours]
    sorts: [states.state_name]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 21
    col: 0
    width: 24
    height: 11
  - title: Average Time Spent Doing Health Related Self Care
    name: Average Time Spent Doing Health Related Self Care
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: looker_google_map
    fields: [states.state_name, atussum.avg_health_related_self_care_hours]
    sorts: [states.state_name]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 32
    col: 0
    width: 24
    height: 9
  - title: Average Time Spent Socializing/Relaxing/General Leisure
    name: Average Time Spent Socializing/Relaxing/General Leisure
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: looker_google_map
    fields: [states.state_name, atussum.avg_socializing_relaxing_hours]
    sorts: [states.state_name]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 41
    col: 0
    width: 24
    height: 10
  - title: Total Responses
    name: Total Responses
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: single_value
    fields: [atuscps.count]
    sorts: [atuscps.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 8
    height: 4
  - title: Avg Hours of Sleep
    name: Avg Hours of Sleep
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: single_value
    fields: [atussum.avg_sleep_hours]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 4
    col: 8
    width: 8
    height: 4
  - title: Avg Self Care Hours
    name: Avg Self Care Hours
    model: hackathon_2023_american_time_use_survey
    explore: atuscps
    type: single_value
    fields: [atussum.avg_health_related_self_care_hours]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 4
    col: 16
    width: 8
    height: 4
