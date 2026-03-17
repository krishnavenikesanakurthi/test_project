connection: "test_bigquery"

include: "/views/Order.view.lkml"
include:"/views/Orders_derived_table.view.lkml"

datagroup: test_datagroup {
  sql_trigger: select current_date() ;;
  max_cache_age: "24 hours"
}
persist_with: test_datagroup

explore: order{


}
