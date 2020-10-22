connection: "finance_datamart"
include: "/views/**/*.view"

datagroup: hourlyrefresh {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hourlyrefresh

explore: fact_booking_daily {
  join: dim_account {
  type: full_outer
  sql_on: ${fact_booking_daily.d_account_key}=${dim_account.key_id} ;;
  relationship: many_to_one
  }
}


#-------------------------------------------------------



explore: dim_account {
  label: "finace"




  join: dim_accounts_booking {
    view_label: "account"
    type: full_outer
    relationship: one_to_one
    sql_on: ${dim_account.d_account_key}=${dim_accounts_booking.d_account_key} ;;
    }



  join: dim_product {
    view_label: "product"
    type: left_outer
    relationship:one_to_many
    sql_on: ${dim_product.d_product_key}=${fact_shipment_daily.d_product_key} ;;


  }


  join: dim_customers {
    view_label: "Customers_billing"
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_customers.d_customers_key}=${fact_shipment_daily.d_bill_to_customer_key} ;;

  }



  join: fact_shipment_daily {
    view_label: "shipment"
    type: full_outer
    relationship: one_to_many
    sql_on: ${dim_account.d_account_key}=${fact_shipment_daily.d_account_key} ;;

  }


}
