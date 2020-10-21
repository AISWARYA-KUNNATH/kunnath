view: fact_shipment_daily {
  sql_table_name: "FINANCE"."FACT_SHIPMENT_DAILY"
    ;;

  dimension: attr1 {
    type: number
    sql: ${TABLE}."ATTR1" ;;
  }

  dimension_group: attr10 {
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
    sql: ${TABLE}."ATTR10" ;;
  }

  dimension: attr2 {
    type: number
    sql: ${TABLE}."ATTR2" ;;
  }

  dimension: attr3 {
    type: number
    sql: ${TABLE}."ATTR3" ;;
  }

  dimension: attr4 {
    type: number
    sql: ${TABLE}."ATTR4" ;;
  }

  dimension: attr5 {
    type: string
    sql: ${TABLE}."ATTR5" ;;
  }

  dimension: attr6 {
    type: string
    sql: ${TABLE}."ATTR6" ;;
  }

  dimension: attr7 {
    type: string
    sql: ${TABLE}."ATTR7" ;;
  }

  dimension: attr8 {
    type: string
    sql: ${TABLE}."ATTR8" ;;
  }

  dimension_group: attr9 {
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
    sql: ${TABLE}."ATTR9" ;;
  }

  dimension: cost_at_shipment_per_unit {
    type: number
    sql: ${TABLE}."COST_AT_SHIPMENT_PER_UNIT" ;;
  }

  dimension: cost_price_per_unit {
    type: number
    sql: ${TABLE}."COST_PRICE_PER_UNIT" ;;
  }

  dimension: d_account_key {
    type: number
    sql: ${TABLE}."D_ACCOUNT_KEY" ;;
  }

  dimension: d_actual_ship_date_key {
    type: number
    sql: ${TABLE}."D_ACTUAL_SHIP_DATE_KEY" ;;
  }

  dimension: d_bill_to_customer_key {
    type: number
    sql: ${TABLE}."D_BILL_TO_CUSTOMER_KEY" ;;
  }

  dimension: d_booked_date_key {
    type: number
    sql: ${TABLE}."D_BOOKED_DATE_KEY" ;;
  }

  dimension: d_end_customer_key {
    type: number
    sql: ${TABLE}."D_END_CUSTOMER_KEY" ;;
  }

  dimension: d_prod_hier_key {
    type: number
    sql: ${TABLE}."D_PROD_HIER_KEY" ;;
  }

  dimension: d_product_key {
    type: number
    sql: ${TABLE}."D_PRODUCT_KEY" ;;
  }

  dimension: d_promised_ship_date_key {
    type: number
    sql: ${TABLE}."D_PROMISED_SHIP_DATE_KEY" ;;
  }

  dimension: d_reseller_key {
    type: number
    sql: ${TABLE}."D_RESELLER_KEY" ;;
  }

  dimension: d_sales_channel_key {
    type: number
    sql: ${TABLE}."D_SALES_CHANNEL_KEY" ;;
  }

  dimension: d_sales_order_key {
    type: number
    sql: ${TABLE}."D_SALES_ORDER_KEY" ;;
  }

  dimension: d_ship_to_customer_key {
    type: number
    sql: ${TABLE}."D_SHIP_TO_CUSTOMER_KEY" ;;
  }

  dimension: delivery_mode {
    type: string
    sql: ${TABLE}."DELIVERY_MODE" ;;
  }

  dimension: discount_sale_price {
    type: number
    sql: ${TABLE}."DISCOUNT_SALE_PRICE" ;;
  }

  dimension_group: dw_insert_dt {
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
    sql: ${TABLE}."DW_INSERT_DT" ;;
  }

  dimension_group: dw_update_dt {
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
    sql: ${TABLE}."DW_UPDATE_DT" ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}."ENTITY_ID" ;;
  }

  dimension: f_shipment_daily_key {
    type: number
    sql: ${TABLE}."F_SHIPMENT_DAILY_KEY" ;;
  }

  dimension: line_amount {
    type: number
    sql: ${TABLE}."LINE_AMOUNT" ;;
  }

  dimension: line_qty {
    type: number
    sql: ${TABLE}."LINE_QTY" ;;
  }

  dimension: no_of_packages {
    type: number
    sql: ${TABLE}."NO_OF_PACKAGES" ;;
  }

  dimension: order_amount {
    type: number
    sql: ${TABLE}."ORDER_AMOUNT" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: order_line_id {
    type: number
    sql: ${TABLE}."ORDER_LINE_ID" ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}."ORDER_QTY" ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}."ORDER_STATUS" ;;
  }

  dimension: sale_price_per_unit {
    type: number
    sql: ${TABLE}."SALE_PRICE_PER_UNIT" ;;
  }

  dimension: ship_trans_id {
    type: number
    sql: ${TABLE}."SHIP_TRANS_ID" ;;
  }

  dimension: ship_trans_line_id {
    type: number
    sql: ${TABLE}."SHIP_TRANS_LINE_ID" ;;
  }

  dimension: ship_trans_number {
    type: string
    sql: ${TABLE}."SHIP_TRANS_NUMBER" ;;
  }

  dimension: shipment_amount {
    type: number
    sql: ${TABLE}."SHIPMENT_AMOUNT" ;;
  }

  dimension: shipment_qty {
    type: number
    sql: ${TABLE}."SHIPMENT_QTY" ;;
  }

  dimension: total_cogs_at_shipment {
    type: number
    sql: ${TABLE}."TOTAL_COGS_AT_SHIPMENT" ;;
  }

  dimension: total_order_size {
    type: number
    sql: ${TABLE}."TOTAL_ORDER_SIZE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
