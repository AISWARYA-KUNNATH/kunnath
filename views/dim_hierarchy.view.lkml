view: dim_hierarchy {
  sql_table_name: "FINANCE"."DIM_HIERARCHY"
    ;;

  dimension: hier10_code {
    type: string
    sql: ${TABLE}."HIER10_CODE" ;;
  }

  dimension: hier10_name {
    type: string
    sql: ${TABLE}."HIER10_NAME" ;;
  }

  dimension: hier1_code {
    type: string
    sql: ${TABLE}."HIER1_CODE" ;;
  }

  dimension: hier1_name {
    type: string
    sql: ${TABLE}."HIER1_NAME" ;;
  }

  dimension: hier2_code {
    type: string
    sql: ${TABLE}."HIER2_CODE" ;;
  }

  dimension: hier2_name {
    type: string
    sql: ${TABLE}."HIER2_NAME" ;;
  }

  dimension: hier3_code {
    type: string
    sql: ${TABLE}."HIER3_CODE" ;;
  }

  dimension: hier3_name {
    type: string
    sql: ${TABLE}."HIER3_NAME" ;;
  }

  dimension: hier4_code {
    type: string
    sql: ${TABLE}."HIER4_CODE" ;;
  }

  dimension: hier4_name {
    type: string
    sql: ${TABLE}."HIER4_NAME" ;;
  }

  dimension: hier5_code {
    type: string
    sql: ${TABLE}."HIER5_CODE" ;;
  }

  dimension: hier5_name {
    type: string
    sql: ${TABLE}."HIER5_NAME" ;;
  }

  dimension: hier6_code {
    type: string
    sql: ${TABLE}."HIER6_CODE" ;;
  }

  dimension: hier6_name {
    type: string
    sql: ${TABLE}."HIER6_NAME" ;;
  }

  dimension: hier7_code {
    type: string
    sql: ${TABLE}."HIER7_CODE" ;;
  }

  dimension: hier7_name {
    type: string
    sql: ${TABLE}."HIER7_NAME" ;;
  }

  dimension: hier8_code {
    type: string
    sql: ${TABLE}."HIER8_CODE" ;;
  }

  dimension: hier8_name {
    type: string
    sql: ${TABLE}."HIER8_NAME" ;;
  }

  dimension: hier9_code {
    type: string
    sql: ${TABLE}."HIER9_CODE" ;;
  }

  dimension: hier9_name {
    type: string
    sql: ${TABLE}."HIER9_NAME" ;;
  }

  dimension: hier_key {
    type: number
    sql: ${TABLE}."HIER_KEY" ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}."HIER_NAME" ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}."HIER_NUM" ;;
  }

  dimension: hier_type {
    type: string
    sql: ${TABLE}."HIER_TYPE" ;;
  }

  dimension_group: insert_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."INSERT_DT" ;;
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."KEY_ID" ;;
  }

  dimension: ou_entity {
    type: string
    sql: ${TABLE}."OU_ENTITY" ;;
  }

  dimension_group: update_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."UPDATE_DT" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      hier1_name,
      hier10_name,
      hier2_name,
      hier6_name,
      hier_name,
      hier8_name,
      hier7_name,
      hier9_name,
      hier3_name,
      hier5_name,
      hier4_name
    ]
  }
}
