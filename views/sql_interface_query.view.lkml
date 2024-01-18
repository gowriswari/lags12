view: sql_interface_query {
  sql_table_name: `inst-61230ecb-3b68`.sql_interface_query ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: jdbc_client {
    type: yesno
    sql: ${TABLE}.jdbc_client ;;
  }
  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: sql {
    type: string
    sql: ${TABLE}.`sql` ;;
  }
  measure: count {
    type: count
    drill_fields: [id, result_maker.count]
  }
}
