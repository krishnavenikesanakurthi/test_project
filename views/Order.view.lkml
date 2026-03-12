
view: order {

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
