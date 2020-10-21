view: bs_gl_journals_aggregation {
  sql_table_name: "FINANCE"."BS_GL_JOURNALS_AGGREGATION"
    ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: accountcategories_key {
    type: number
    sql: ${TABLE}."ACCOUNTCATEGORIES_KEY" ;;
  }

  dimension: aggregate_net_amount {
    type: number
    sql: ${TABLE}."AGGREGATE_NET_AMOUNT" ;;
  }

  dimension: begin_balance {
    type: number
    sql: ${TABLE}."BEGIN_BALANCE" ;;
  }

  dimension: fiscal_period {
    type: string
    sql: ${TABLE}."FISCAL_PERIOD" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension: gl_transaction_date_key {
    type: number
    sql: ${TABLE}."GL_TRANSACTION_DATE_KEY" ;;
  }

  dimension: hier1_name {
    type: string
    sql: ${TABLE}."HIER1_NAME" ;;
  }

  dimension: hier2_name {
    type: string
    sql: ${TABLE}."HIER2_NAME" ;;
  }

  dimension: hier3_name {
    type: string
    sql: ${TABLE}."HIER3_NAME" ;;
  }

  dimension: hier4_name {
    type: string
    sql: ${TABLE}."HIER4_NAME" ;;
  }

  dimension: hier5_name {
    type: string
    sql: ${TABLE}."HIER5_NAME" ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}."HIER_NAME" ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}."HIER_NUM" ;;
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."KEY_ID" ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}."NET_AMOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      hier5_name,
      hier2_name,
      hier1_name,
      hier4_name,
      hier3_name,
      hier_name
    ]
  }
}
