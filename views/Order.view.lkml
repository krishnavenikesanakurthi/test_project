
view: order {
derived_table: {
  sql: select Order_id, status, min(Date(created_date)) as first_order
  from order;;
  sql_trigger_value: select current_date() ;;
}
dimension:Order_id  {
  primary_key: yes
  type: number
  sql: ${TABLE}.`Order Id`;;
}
dimension: status {
  type: string
  sql: ${TABLE}.status ;;
}
dimension_group: created_date{
  type: time
  timeframes: [date,month,year, week]
  sql: ${TABLE}.`Created date`;;
  }
  }
