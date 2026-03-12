connection: "test_bigquery"

include: "/views/Order.view.lkml"
include:"/views/Orders_derived_table.view.lkml"

datagroup: test_datagroup {
  sql_trigger: select current_date() ;;
  max_cache_age: "24 hours"
}
persist_with: test_datagroup

explore: order{
  join: orders_derived_table {
    type: left_outer
    relationship: one_to_many
    sql_on: ${order.Order_id}= ${orders_derived_table.order_id} ;;
  }

}
