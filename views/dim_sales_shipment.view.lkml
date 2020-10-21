view: dim_sales_shipment {
  sql_table_name: "FINANCE"."DIM_SALES_SHIPMENT"
    ;;

  dimension: attr1 {
    type: string
    sql: ${TABLE}."ATTR1" ;;
  }

  dimension_group: attr10 {
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
    sql: ${TABLE}."ATTR10" ;;
  }

  dimension: attr2 {
    type: string
    sql: ${TABLE}."ATTR2" ;;
  }

  dimension: attr3 {
    type: string
    sql: ${TABLE}."ATTR3" ;;
  }

  dimension: attr4 {
    type: string
    sql: ${TABLE}."ATTR4" ;;
  }

  dimension: attr5 {
    type: string
    sql: ${TABLE}."ATTR5" ;;
  }

  dimension_group: attr6 {
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
    sql: ${TABLE}."ATTR6" ;;
  }

  dimension_group: attr7 {
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
    sql: ${TABLE}."ATTR7" ;;
  }

  dimension_group: attr8 {
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
    sql: ${TABLE}."ATTR8" ;;
  }

  dimension_group: attr9 {
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
    sql: ${TABLE}."ATTR9" ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}."BILLADDRESS" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."CREATE_DATE" ;;
  }

  dimension: d_sales_order_key {
    type: number
    sql: ${TABLE}."D_SALES_ORDER_KEY" ;;
  }

  dimension_group: insert {
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
    sql: ${TABLE}."INSERT_DATE" ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}."ITEM_ID" ;;
  }

  dimension_group: promise {
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
    sql: ${TABLE}."PROMISE_DATE" ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}."SHIPADDRESS" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: transaction_line_id {
    type: number
    sql: ${TABLE}."TRANSACTION_LINE_ID" ;;
  }

  dimension: transaction_number {
    type: string
    sql: ${TABLE}."TRANSACTION_NUMBER" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."TRANSACTION_TYPE" ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}."UPDATE_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
