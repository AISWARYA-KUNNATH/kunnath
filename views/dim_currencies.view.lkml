view: dim_currencies {
  sql_table_name: "FINANCE"."DIM_CURRENCIES"
    ;;

  dimension: currency_extid {
    type: string
    sql: ${TABLE}."CURRENCY_EXTID" ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}."CURRENCY_ID" ;;
  }

  dimension: d_currency_key {
    type: number
    sql: ${TABLE}."D_CURRENCY_KEY" ;;
  }

  dimension_group: date_last_modified {
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
    sql: ${TABLE}."DATE_LAST_MODIFIED" ;;
  }

  dimension: is_inactive {
    type: string
    sql: ${TABLE}."IS_INACTIVE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: precision_0 {
    type: number
    sql: ${TABLE}."PRECISION_0" ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}."SYMBOL" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
