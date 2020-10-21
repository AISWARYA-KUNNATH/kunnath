view: fact_gljournals {
  sql_table_name: "FINANCE"."FACT_GLJOURNALS"
    ;;

  dimension: account_index {
    type: number
    sql: ${TABLE}."ACCOUNT_INDEX" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: accountcategories_key {
    type: number
    sql: ${TABLE}."ACCOUNTCATEGORIES_KEY" ;;
  }

  dimension: attr2_text {
    type: string
    sql: ${TABLE}."ATTR2_TEXT" ;;
  }

  dimension: attr3_text {
    type: string
    sql: ${TABLE}."ATTR3_TEXT" ;;
  }

  dimension: attr4_text {
    type: string
    sql: ${TABLE}."ATTR4_TEXT" ;;
  }

  dimension: attr5_text {
    type: string
    sql: ${TABLE}."ATTR5_TEXT" ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}."COMPANY_CODE" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: credit_amount {
    type: number
    sql: ${TABLE}."CREDIT_AMOUNT" ;;
  }

  dimension: d_account_key {
    type: number
    sql: ${TABLE}."D_ACCOUNT_KEY" ;;
  }

  dimension: d_coa_key {
    type: number
    sql: ${TABLE}."D_COA_KEY" ;;
  }

  dimension: d_currency_key {
    type: number
    sql: ${TABLE}."D_CURRENCY_KEY" ;;
  }

  dimension: d_dept_key {
    type: number
    sql: ${TABLE}."D_DEPT_KEY" ;;
  }

  dimension: d_entity_key {
    type: number
    sql: ${TABLE}."D_ENTITY_KEY" ;;
  }

  dimension: d_hier_key {
    type: number
    sql: ${TABLE}."D_HIER_KEY" ;;
  }

  dimension: debit_amount {
    type: number
    sql: ${TABLE}."DEBIT_AMOUNT" ;;
  }

  dimension: denominationexchangerate {
    type: number
    sql: ${TABLE}."DENOMINATIONEXCHANGERATE" ;;
  }

  dimension_group: exchange {
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
    sql: ${TABLE}."EXCHANGE_DATE" ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}."EXCHANGE_RATE" ;;
  }

  dimension: gl_journal_key {
    type: number
    sql: ${TABLE}."GL_JOURNAL_KEY" ;;
  }

  dimension: gl_transaction_date_key {
    type: number
    sql: ${TABLE}."GL_TRANSACTION_DATE_KEY" ;;
  }

  dimension: gl_transaction_type_key {
    type: number
    sql: ${TABLE}."GL_TRANSACTION_TYPE_KEY" ;;
  }

  dimension: historical_rate {
    type: number
    sql: ${TABLE}."HISTORICAL_RATE" ;;
  }

  dimension_group: insert_dt {
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
    sql: ${TABLE}."INSERT_DT" ;;
  }

  dimension: journal_description {
    type: string
    sql: ${TABLE}."JOURNAL_DESCRIPTION" ;;
  }

  dimension: journal_entry {
    type: number
    sql: ${TABLE}."JOURNAL_ENTRY" ;;
  }

  dimension: journal_id {
    type: number
    sql: ${TABLE}."JOURNAL_ID" ;;
  }

  dimension: journal_seq_nbr {
    type: string
    sql: ${TABLE}."JOURNAL_SEQ_NBR" ;;
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."KEY_ID" ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}."NET_AMOUNT" ;;
  }

  dimension: originating_control_number {
    type: string
    sql: ${TABLE}."ORIGINATING_CONTROL_NUMBER" ;;
  }

  dimension: originating_credit_amount {
    type: number
    sql: ${TABLE}."ORIGINATING_CREDIT_AMOUNT" ;;
  }

  dimension: originating_data_series {
    type: string
    sql: ${TABLE}."ORIGINATING_DATA_SERIES" ;;
  }

  dimension: originating_debit_amount {
    type: number
    sql: ${TABLE}."ORIGINATING_DEBIT_AMOUNT" ;;
  }

  dimension: originating_document_number {
    type: string
    sql: ${TABLE}."ORIGINATING_DOCUMENT_NUMBER" ;;
  }

  dimension: originating_journal_number {
    type: number
    sql: ${TABLE}."ORIGINATING_JOURNAL_NUMBER" ;;
  }

  dimension: originating_master_id {
    type: string
    sql: ${TABLE}."ORIGINATING_MASTER_ID" ;;
  }

  dimension: originating_master_name {
    type: string
    sql: ${TABLE}."ORIGINATING_MASTER_NAME" ;;
  }

  dimension_group: originating_posted {
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
    sql: ${TABLE}."ORIGINATING_POSTED_DATE" ;;
  }

  dimension: originating_sequence_number {
    type: number
    sql: ${TABLE}."ORIGINATING_SEQUENCE_NUMBER" ;;
  }

  dimension: originating_source {
    type: string
    sql: ${TABLE}."ORIGINATING_SOURCE" ;;
  }

  dimension: originating_transaction_source {
    type: string
    sql: ${TABLE}."ORIGINATING_TRANSACTION_SOURCE" ;;
  }

  dimension: originating_transaction_type {
    type: string
    sql: ${TABLE}."ORIGINATING_TRANSACTION_TYPE" ;;
  }

  dimension: originating_type {
    type: string
    sql: ${TABLE}."ORIGINATING_TYPE" ;;
  }

  dimension: ou_entity {
    type: number
    sql: ${TABLE}."OU_ENTITY" ;;
  }

  dimension: posted_by {
    type: string
    sql: ${TABLE}."POSTED_BY" ;;
  }

  dimension: posted_date_key {
    type: number
    sql: ${TABLE}."POSTED_DATE_KEY" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."REFERENCE" ;;
  }

  dimension: series {
    type: string
    sql: ${TABLE}."SERIES" ;;
  }

  dimension: souce_document {
    type: string
    sql: ${TABLE}."SOUCE_DOCUMENT" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
  }

  dimension: transaction_source {
    type: string
    sql: ${TABLE}."TRANSACTION_SOURCE" ;;
  }

  dimension: transaction_type_id {
    type: string
    sql: ${TABLE}."TRANSACTION_TYPE_ID" ;;
  }

  dimension_group: update_dt {
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
    sql: ${TABLE}."UPDATE_DT" ;;
  }

  measure: count {
    type: count
    drill_fields: [originating_master_name, company_name]
  }
}
