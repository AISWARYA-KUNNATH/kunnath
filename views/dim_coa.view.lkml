view: dim_coa {
  sql_table_name: "FINANCE"."DIM_COA"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: acct_cat_code {
    type: string
    sql: ${TABLE}."ACCT_CAT_CODE" ;;
  }

  dimension: acct_cat_name {
    type: string
    sql: ${TABLE}."ACCT_CAT_NAME" ;;
  }

  dimension: acct_index {
    type: string
    sql: ${TABLE}."ACCT_INDEX" ;;
  }

  dimension: attr1_text {
    type: string
    sql: ${TABLE}."ATTR1_TEXT" ;;
  }

  dimension: attr2_code {
    type: string
    sql: ${TABLE}."ATTR2_CODE" ;;
  }

  dimension: attr2_text {
    type: string
    sql: ${TABLE}."ATTR2_TEXT" ;;
  }

  dimension: attr3_code {
    type: string
    sql: ${TABLE}."ATTR3_CODE" ;;
  }

  dimension: attr3_text {
    type: string
    sql: ${TABLE}."ATTR3_TEXT" ;;
  }

  dimension: attr4_code {
    type: string
    sql: ${TABLE}."ATTR4_CODE" ;;
  }

  dimension: attr4_text {
    type: string
    sql: ${TABLE}."ATTR4_TEXT" ;;
  }

  dimension: attr5_code {
    type: string
    sql: ${TABLE}."ATTR5_CODE" ;;
  }

  dimension: attr5_text {
    type: string
    sql: ${TABLE}."ATTR5_TEXT" ;;
  }

  dimension: d_coa_key {
    type: number
    sql: ${TABLE}."D_COA_KEY" ;;
  }

  dimension: dept_code {
    type: string
    sql: ${TABLE}."DEPT_CODE" ;;
  }

  dimension: dept_code_desc {
    type: string
    sql: ${TABLE}."DEPT_CODE_DESC" ;;
  }

  dimension: entity_code {
    type: string
    sql: ${TABLE}."ENTITY_CODE" ;;
  }

  dimension: entity_code_desc {
    type: string
    sql: ${TABLE}."ENTITY_CODE_DESC" ;;
  }

  dimension: fin_stmt_item_code {
    type: string
    sql: ${TABLE}."FIN_STMT_ITEM_CODE" ;;
  }

  dimension: fin_stmt_item_name {
    type: string
    sql: ${TABLE}."FIN_STMT_ITEM_NAME" ;;
  }

  dimension: hier1_key {
    type: number
    sql: ${TABLE}."HIER1_KEY" ;;
  }

  dimension: hier2_key {
    type: number
    sql: ${TABLE}."HIER2_KEY" ;;
  }

  dimension: hier3_key {
    type: number
    sql: ${TABLE}."HIER3_KEY" ;;
  }

  dimension: hier4_key {
    type: number
    sql: ${TABLE}."HIER4_KEY" ;;
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

  dimension: natural_account_code {
    type: string
    sql: ${TABLE}."NATURAL_ACCOUNT_CODE" ;;
  }

  dimension: natural_account_code_desc {
    type: string
    sql: ${TABLE}."NATURAL_ACCOUNT_CODE_DESC" ;;
  }

  dimension: ou_entity {
    type: string
    sql: ${TABLE}."OU_ENTITY" ;;
  }

  dimension: parent_accountnumber {
    type: string
    sql: ${TABLE}."PARENT_ACCOUNTNUMBER" ;;
  }

  dimension: proj_code {
    type: string
    sql: ${TABLE}."PROJ_CODE" ;;
  }

  dimension: proj_code_desc {
    type: string
    sql: ${TABLE}."PROJ_CODE_DESC" ;;
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
    drill_fields: [account_name, acct_cat_name, fin_stmt_item_name]
  }
}
