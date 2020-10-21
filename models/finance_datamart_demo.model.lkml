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
  sql_on: ${dim_customers.d_customers_key}=${fact_booking_daily.d_end_customer_key} ;;
  relationship: many_to_one
  }
  join: dim_product {
  type: inner
  sql_on: ${dim_product.d_product_key}=${fact_booking_daily.d_product_key} ;;
  relationship: many_to_one
  }
  join: dim_hierarchy {
    type: full_outer
    sql_on: ${dim_hierarchy.hier_key}= ${fact_booking_daily.d_prod_hier_key} ;;
    relationship: many_to_many
  }
}
explore: fact_shipment_daily {
  join: dim_sales_order {
  type: full_outer
  sql_on: ${dim_sales_order.d_sales_order_key}=${fact_shipment_daily.d_sales_order_key} ;;
  relationship: one_to_many
  }
  join: dim_customers {
  type: full_outer
  sql: ${dim_customers.d_customers_key}=${fact_shipment_daily.d_end_customer_key} ;;
  relationship: many_to_one
  }
  join: dim_account {
  type: full_outer
  sql: ${dim_account.d_account_key}=${fact_shipment_daily.d_account_key};;
  relationship: many_to_one
  }
}
