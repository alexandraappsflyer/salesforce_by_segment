view: daily_cpi {
  derived_table: {
    sql: select * from
      `af-raw-data.views.daily_cpi_*`
      where _TABLE_SUFFIX > '20170622'

       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.app_id ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: account_country {
    type: string
    sql: ${TABLE}.account_country ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: installs {
    type: number
    sql: ${TABLE}.installs ;;
  }

  dimension: cpi {
    type: number
    sql: ${TABLE}.cpi ;;
  }

  set: detail {
    fields: [
      date,
      app_id,
      platform,
      media_source,
      country,
      category,
      sub_category,
      account_name,
      account_country,
      cost,
      installs,
      cpi
    ]
  }
}
