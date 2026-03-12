view: orders_derived_table {

  derived_table: {
    sql: select Order_id, status, min(Date(created_date)) as first_order
      from order;;

  datagroup_trigger: test_datagroup
  }

  dimension: order_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.`order ID` ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}. `status` ;;
  }

  dimension_group: first_order {
   timeframes: [date, time, month, year]
  sql: ${TABLE}.first_order ;;
  type: time
  }

}
