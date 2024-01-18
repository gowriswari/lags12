view: schema_migrations {
  sql_table_name: `inst-61230ecb-3b68`.schema_migrations ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }
  measure: count {
    type: count
    drill_fields: [filename]
  }
}
