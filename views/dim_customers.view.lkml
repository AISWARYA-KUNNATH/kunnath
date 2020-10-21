view: dim_customers {
  sql_table_name: "FINANCE"."DIM_CUSTOMERS"
    ;;

  dimension: billaddress {
    type: string
    sql: ${TABLE}."BILLADDRESS" ;;
  }

  dimension: category_0 {
    type: string
    sql: ${TABLE}."CATEGORY_0" ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}."CATEGORY_ID" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}."COMPANYNAME" ;;
  }

  dimension: consol_unbilled_orders {
    type: number
    sql: ${TABLE}."CONSOL_UNBILLED_ORDERS" ;;
  }

  dimension: consol_unbilled_orders_foreign {
    type: number
    sql: ${TABLE}."CONSOL_UNBILLED_ORDERS_FOREIGN" ;;
  }

  dimension: cost_estimate {
    type: number
    sql: ${TABLE}."COST_ESTIMATE" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}."CURRENCY_ID" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: d_customers_key {
    type: number
    sql: ${TABLE}."D_CUSTOMERS_KEY" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}."FIRSTNAME" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}."HOME_PHONE" ;;
  }

  dimension: istaxable {
    type: string
    sql: ${TABLE}."ISTAXABLE" ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: openbalance {
    type: number
    sql: ${TABLE}."OPENBALANCE" ;;
  }

  dimension: openbalance_foreign {
    type: number
    sql: ${TABLE}."OPENBALANCE_FOREIGN" ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: primary_contact_id {
    type: number
    sql: ${TABLE}."PRIMARY_CONTACT_ID" ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}."SHIPADDRESS" ;;
  }

  dimension: shipping_instructions {
    type: string
    sql: ${TABLE}."SHIPPING_INSTRUCTIONS" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: tax_item_id {
    type: number
    sql: ${TABLE}."TAX_ITEM_ID" ;;
  }

  dimension: unbilled_orders {
    type: number
    sql: ${TABLE}."UNBILLED_ORDERS" ;;
  }

  dimension: unbilled_orders_foreign {
    type: number
    sql: ${TABLE}."UNBILLED_ORDERS_FOREIGN" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [firstname, full_name, companyname, name, lastname]
  }
}
