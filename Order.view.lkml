view: order {

dimension:Order_id  {
  type: number
  sql: ${TABLE}.order.order_id ;;
}
dimension: status {
  type: string
  sql: ${TABLE}.order.status ;;
}
dimension_group: created_date{
  type: time
  timeframes: [date,month,year, week]
  sql: ${TABLE}.order.created_date ;;

}

measure: count {
  type: sum
  sql: ${Order_id} ;;
}
}
