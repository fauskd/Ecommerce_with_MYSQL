SELECT * FROM customers;
#we can select multiple columns 
select customer_id, customer_city, customer_state from customers;

# Use some conditions and extract data 
select * from customers where customer_state = "MG";
select * from customers where not (customer_state = "MG" or customer_state = "SP");

select * from customers where customer_state in ( "SC", "SP", "MG", "PR");

select * from customers where customer_state not in ( "SC", "SP", "MG", "PR");

select customer_city from customers where customer_city like "r%";

select * from customers where customer_city like "r%";

select * from customers where customer_city like "%r";
select * from customers where customer_city like "o%";
select * from customers where customer_city like "%no%";

#use functions 
select count(customer_id) from customers;
select count(customer_city) from customers;# which is not possible 

#so we use distinct function because repeatedly use same names
select count(distinct (customer_city)) from customers;