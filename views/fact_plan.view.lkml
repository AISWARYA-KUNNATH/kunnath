view: fact_plan {
  sql_table_name: "FINANCE"."FACT_PLAN"
    ;;

  dimension: account_code_key {
    type: number
    sql: ${TABLE}."ACCOUNT_CODE_KEY" ;;
  }

  dimension: accountcategories_key {
    type: number
    sql: ${TABLE}."ACCOUNTCATEGORIES_KEY" ;;
  }

  dimension: authorized_amt {
    type: number
    sql: ${TABLE}."AUTHORIZED_AMT" ;;
  }

  dimension: busn_case_code {
    type: string
    sql: ${TABLE}."BUSN_CASE_CODE" ;;
  }

  dimension: busn_case_exp_code {
    type: string
    sql: ${TABLE}."BUSN_CASE_EXP_CODE" ;;
  }

  dimension: busn_case_exp_name {
    type: string
    sql: ${TABLE}."BUSN_CASE_EXP_NAME" ;;
  }

  dimension: busn_case_name {
    type: string
    sql: ${TABLE}."BUSN_CASE_NAME" ;;
  }

  dimension: changed_by_key {
    type: number
    sql: ${TABLE}."CHANGED_BY_KEY" ;;
  }

  dimension: changed_on_dk {
    type: number
    sql: ${TABLE}."CHANGED_ON_DK" ;;
  }

  dimension: created_by_key {
    type: number
    sql: ${TABLE}."CREATED_BY_KEY" ;;
  }

  dimension: created_on_dk {
    type: number
    sql: ${TABLE}."CREATED_ON_DK" ;;
  }

  dimension: dept_code_key {
    type: number
    sql: ${TABLE}."DEPT_CODE_KEY" ;;
  }

  dimension: entity_code_key {
    type: number
    sql: ${TABLE}."ENTITY_CODE_KEY" ;;
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

  dimension: plan_amt1 {
    type: number
    sql: ${TABLE}."PLAN_AMT1" ;;
  }

  dimension: plan_amt2 {
    type: number
    sql: ${TABLE}."PLAN_AMT2" ;;
  }

  dimension: plan_amt3 {
    type: number
    sql: ${TABLE}."PLAN_AMT3" ;;
  }

  dimension: plan_amt4 {
    type: number
    sql: ${TABLE}."PLAN_AMT4" ;;
  }

  dimension: plan_amt5 {
    type: number
    sql: ${TABLE}."PLAN_AMT5" ;;
  }

  dimension: plan_attr1_text {
    type: string
    sql: ${TABLE}."PLAN_ATTR1_TEXT" ;;
  }

  dimension: plan_attr2_code {
    type: number
    sql: ${TABLE}."PLAN_ATTR2_CODE" ;;
  }

  dimension: plan_attr2_text {
    type: string
    sql: ${TABLE}."PLAN_ATTR2_TEXT" ;;
  }

  dimension: plan_attr3_code {
    type: string
    sql: ${TABLE}."PLAN_ATTR3_CODE" ;;
  }

  dimension: plan_attr3_text {
    type: string
    sql: ${TABLE}."PLAN_ATTR3_TEXT" ;;
  }

  dimension: plan_attr4_code {
    type: string
    sql: ${TABLE}."PLAN_ATTR4_CODE" ;;
  }

  dimension: plan_attr4_text {
    type: string
    sql: ${TABLE}."PLAN_ATTR4_TEXT" ;;
  }

  dimension: plan_attr5_code {
    type: string
    sql: ${TABLE}."PLAN_ATTR5_CODE" ;;
  }

  dimension: plan_attr5_text {
    type: string
    sql: ${TABLE}."PLAN_ATTR5_TEXT" ;;
  }

  dimension: plan_coa_key {
    type: number
    sql: ${TABLE}."PLAN_COA_KEY" ;;
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}."PLAN_CODE" ;;
  }

  dimension: plan_date1_dk {
    type: number
    sql: ${TABLE}."PLAN_DATE1_DK" ;;
  }

  dimension: plan_date2_dk {
    type: number
    sql: ${TABLE}."PLAN_DATE2_DK" ;;
  }

  dimension: plan_date3_dk {
    type: number
    sql: ${TABLE}."PLAN_DATE3_DK" ;;
  }

  dimension: plan_date4_dk {
    type: number
    sql: ${TABLE}."PLAN_DATE4_DK" ;;
  }

  dimension: plan_date5_dk {
    type: number
    sql: ${TABLE}."PLAN_DATE5_DK" ;;
  }

  dimension: plan_key {
    type: number
    sql: ${TABLE}."PLAN_KEY" ;;
  }

  dimension: plan_line_item_desc {
    type: string
    sql: ${TABLE}."PLAN_LINE_ITEM_DESC" ;;
  }

  dimension: plan_month {
    type: number
    sql: ${TABLE}."PLAN_MONTH" ;;
  }

  dimension: plan_month_date_key {
    type: number
    sql: ${TABLE}."PLAN_MONTH_DATE_KEY" ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}."PLAN_NAME" ;;
  }

  dimension: plan_year {
    type: number
    sql: ${TABLE}."PLAN_YEAR" ;;
  }

  dimension: plan_year_date_key {
    type: number
    sql: ${TABLE}."PLAN_YEAR_DATE_KEY" ;;
  }

  dimension: proj_code_key {
    type: number
    sql: ${TABLE}."PROJ_CODE_KEY" ;;
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

  dimension: version {
    type: string
    sql: ${TABLE}."VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [busn_case_name, plan_name, busn_case_exp_name]
  }
}
