view: dim_accountcategories {
  sql_table_name: "FINANCE"."DIM_ACCOUNTCATEGORIES"
    ;;

  dimension: account_category {
    type: string
    sql: ${TABLE}."ACCOUNT_CATEGORY" ;;
  }

  dimension: account_range_max {
    type: string
    sql: ${TABLE}."ACCOUNT_RANGE_MAX" ;;
  }

  dimension: account_range_min {
    type: string
    sql: ${TABLE}."ACCOUNT_RANGE_MIN" ;;
  }

  dimension: category_type {
    type: string
    sql: ${TABLE}."CATEGORY_TYPE" ;;
  }

  dimension: d_accountcategories_key {
    type: number
    sql: ${TABLE}."D_ACCOUNTCATEGORIES_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
