view: dim_date {
  sql_table_name: "FINANCE"."DIM_DATE"
    ;;

  dimension: _holiday_ind {
    type: string
    sql: ${TABLE}."_HOLIDAY_IND" ;;
  }

  dimension: current_row_ind {
    type: string
    sql: ${TABLE}."CURRENT_ROW_IND" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: date_pkey {
    type: number
    sql: ${TABLE}."DATE_PKEY" ;;
  }

  dimension: day_abbrev {
    type: string
    sql: ${TABLE}."DAY_ABBREV" ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}."DAY_NAME" ;;
  }

  dimension: day_num_in_month {
    type: number
    sql: ${TABLE}."DAY_NUM_IN_MONTH" ;;
  }

  dimension: day_num_in_week {
    type: number
    sql: ${TABLE}."DAY_NUM_IN_WEEK" ;;
  }

  dimension: day_num_in_year {
    type: number
    sql: ${TABLE}."DAY_NUM_IN_YEAR" ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}."EFFECTIVE_DATE" ;;
  }

  dimension_group: expiration {
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
    sql: ${TABLE}."EXPIRATION_DATE" ;;
  }

  dimension: fiscal_halfyear {
    type: number
    sql: ${TABLE}."FISCAL_HALFYEAR" ;;
  }

  dimension: fiscal_month_num {
    type: number
    sql: ${TABLE}."FISCAL_MONTH_NUM" ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FISCAL_QUARTER" ;;
  }

  dimension: fiscal_week_num {
    type: number
    sql: ${TABLE}."FISCAL_WEEK_NUM" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension: fiscal_yearmonth {
    type: string
    sql: ${TABLE}."FISCAL_YEARMONTH" ;;
  }

  dimension: fiscal_yearquarter {
    type: string
    sql: ${TABLE}."FISCAL_YEARQUARTER" ;;
  }

  dimension: full_date_desc {
    type: string
    sql: ${TABLE}."FULL_DATE_DESC" ;;
  }

  dimension: month_abbrev {
    type: string
    sql: ${TABLE}."MONTH_ABBREV" ;;
  }

  dimension: month_end_ind {
    type: string
    sql: ${TABLE}."MONTH_END_IND" ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}."MONTH_NAME" ;;
  }

  dimension: month_num_in_year {
    type: number
    sql: ${TABLE}."MONTH_NUM_IN_YEAR" ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension_group: sql_timestamp {
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
    sql: ${TABLE}."SQL_TIMESTAMP" ;;
  }

  dimension: us_holiday_ind {
    type: string
    sql: ${TABLE}."US_HOLIDAY_IND" ;;
  }

  dimension_group: week_begin {
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
    sql: ${TABLE}."WEEK_BEGIN_DATE" ;;
  }

  dimension: week_begin_date_nkey {
    type: number
    sql: ${TABLE}."WEEK_BEGIN_DATE_NKEY" ;;
  }

  dimension_group: week_end {
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
    sql: ${TABLE}."WEEK_END_DATE" ;;
  }

  dimension: week_end_date_nkey {
    type: number
    sql: ${TABLE}."WEEK_END_DATE_NKEY" ;;
  }

  dimension: week_num_in_year {
    type: number
    sql: ${TABLE}."WEEK_NUM_IN_YEAR" ;;
  }

  dimension: weekday_ind {
    type: string
    sql: ${TABLE}."WEEKDAY_IND" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  dimension: yearmonth {
    type: string
    sql: ${TABLE}."YEARMONTH" ;;
  }

  dimension: yearquarter {
    type: string
    sql: ${TABLE}."YEARQUARTER" ;;
  }

  measure: count {
    type: count
    drill_fields: [day_name, month_name]
  }
}
