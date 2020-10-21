view: dim_entity {
  sql_table_name: "FINANCE"."DIM_ENTITY"
    ;;

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

  dimension: coa_index_name {
    type: string
    sql: ${TABLE}."COA_INDEX_NAME" ;;
  }

  dimension: d_entity_key {
    type: number
    sql: ${TABLE}."D_ENTITY_KEY" ;;
  }

  dimension: entity_desc {
    type: string
    sql: ${TABLE}."ENTITY_DESC" ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}."ENTITY_TYPE" ;;
  }

  dimension: entity_value {
    type: number
    sql: ${TABLE}."ENTITY_VALUE" ;;
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
    type: number
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
    drill_fields: [coa_index_name]
  }
}
