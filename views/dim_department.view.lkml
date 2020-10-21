view: dim_department {
  sql_table_name: "FINANCE"."DIM_DEPARTMENT"
    ;;

  dimension: attr1_text {
    type: string
    sql: ${TABLE}."ATTR1_TEXT" ;;
  }

  dimension: attr2_text {
    type: string
    sql: ${TABLE}."ATTR2_TEXT" ;;
  }

  dimension: attr3_text {
    type: string
    sql: ${TABLE}."ATTR3_TEXT" ;;
  }

  dimension: attr4_text {
    type: string
    sql: ${TABLE}."ATTR4_TEXT" ;;
  }

  dimension: attr5_text {
    type: string
    sql: ${TABLE}."ATTR5_TEXT" ;;
  }

  dimension: d_dept_key {
    type: number
    sql: ${TABLE}."D_DEPT_KEY" ;;
  }

  dimension: dept_desc {
    type: string
    sql: ${TABLE}."DEPT_DESC" ;;
  }

  dimension: dept_type {
    type: string
    sql: ${TABLE}."DEPT_TYPE" ;;
  }

  dimension: dept_value {
    type: string
    sql: ${TABLE}."DEPT_VALUE" ;;
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

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
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
    drill_fields: []
  }
}
