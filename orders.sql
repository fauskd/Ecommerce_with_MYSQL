SELECT * FROM ecommerce.orders;

select * from orders where order_status = "invoiced";

#Time base datasets
select order_estimated_delivery_date, day (order_estimated_delivery_date),
month(order_estimated_delivery_date), year(order_estimated_delivery_date),
dayname(order_estimated_delivery_date), monthname(order_estimated_delivery_date),
#delivery time 
datediff(order_estimated_delivery_date, order_approved_at) as Delivery_time from orders;

#null values
select * from orders where order_delivered_customer_date is null;

#count it by order_status
select order_status, count(order_status)as count_order
 from orders group by order_status;


#Joining table
select customers.customer_id, orders.order_status 
from customers join orders
on customers.customer_id = orders.customer_id
where order_status = "canceled";

select year(orders.order_purchase_timestamp)as years, round(sum(payments.payment_value), 2)
from orders join payments
on orders.order_id = payments.order_id
group by years