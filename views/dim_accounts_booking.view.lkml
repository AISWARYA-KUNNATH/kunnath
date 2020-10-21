view: dim_accounts_booking {
  sql_table_name: "FINANCE"."DIM_ACCOUNTS_BOOKING"
    ;;

  dimension: account_extid {
    type: string
    sql: ${TABLE}."ACCOUNT_EXTID" ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: accountnumber {
    type: string
    sql: ${TABLE}."ACCOUNTNUMBER" ;;
  }

  dimension: cashflow_rate_type {
    type: string
    sql: ${TABLE}."CASHFLOW_RATE_TYPE" ;;
  }

  dimension: category_1099_misc {
    type: string
    sql: ${TABLE}."CATEGORY_1099_MISC" ;;
  }

  dimension: category_1099_misc_mthreshold {
    type: number
    sql: ${TABLE}."CATEGORY_1099_MISC_MTHRESHOLD" ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}."CLASS_ID" ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}."CURRENCY_ID" ;;
  }

  dimension: d_account_key {
    type: number
    sql: ${TABLE}."D_ACCOUNT_KEY" ;;
  }

  dimension_group: date_last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_LAST_MODIFIED" ;;
  }

  dimension: deferral_account_id {
    type: number
    sql: ${TABLE}."DEFERRAL_ACCOUNT_ID" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: full_description {
    type: string
    sql: ${TABLE}."FULL_DESCRIPTION" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: general_rate_type {
    type: string
    sql: ${TABLE}."GENERAL_RATE_TYPE" ;;
  }

  dimension: is_balancesheet {
    type: string
    sql: ${TABLE}."IS_BALANCESHEET" ;;
  }

  dimension: is_included_in_elimination {
    type: string
    sql: ${TABLE}."IS_INCLUDED_IN_ELIMINATION" ;;
  }

  dimension: is_included_in_reval {
    type: string
    sql: ${TABLE}."IS_INCLUDED_IN_REVAL" ;;
  }

  dimension: is_including_child_subs {
    type: string
    sql: ${TABLE}."IS_INCLUDING_CHILD_SUBS" ;;
  }

  dimension: is_leftside {
    type: string
    sql: ${TABLE}."IS_LEFTSIDE" ;;
  }

  dimension: is_summary {
    type: string
    sql: ${TABLE}."IS_SUMMARY" ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}."ISINACTIVE" ;;
  }

  dimension: legal_name {
    type: string
    sql: ${TABLE}."LEGAL_NAME" ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}."LOCATION_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: openbalance {
    type: number
    sql: ${TABLE}."OPENBALANCE" ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}."TYPE_NAME" ;;
  }

  dimension: type_sequence {
    type: number
    sql: ${TABLE}."TYPE_SEQUENCE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, legal_name, full_name, type_name]
  }
}
