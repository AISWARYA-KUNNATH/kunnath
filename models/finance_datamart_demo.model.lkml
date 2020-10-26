connection: "finance_datamart"
include: "/views/**/*.view"

datagroup: finance_datamart_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finance_datamart_demo_default_datagroup

explore: fact_booking_daily {
  join: dim_account {
  type: full_outer
  sql_on: ${fact_booking_daily.d_account_key}=${dim_account.key_id} ;;
  relationship: many_to_one
  }
  join: dim_customers {
  type: full_outer
  sql_on: ${fact_booking_daily.d_end_customer_key}=${dim_customers.d_customers_key} ;;
  relationship: many_to_one
  }
}
