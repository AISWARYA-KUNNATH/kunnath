view: dim_account {
  sql_table_name: "FINANCE"."DIM_ACCOUNT"
    ;;

  dimension: acct_desc {
    type: string
    sql: ${TABLE}."ACCT_DESC" ;;
  }

  dimension: acct_type {
    type: string
    sql: ${TABLE}."ACCT_TYPE" ;;
  }

  dimension: acct_value {
    type: string
    sql: ${TABLE}."ACCT_VALUE" ;;
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

  dimension: d_account_key {
    type: number
    sql: ${TABLE}."D_ACCOUNT_KEY" ;;
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

  dimension: parent_accountnumber {
    type: string
    sql: ${TABLE}."PARENT_ACCOUNTNUMBER" ;;
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
