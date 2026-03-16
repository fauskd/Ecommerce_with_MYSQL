SELECT * FROM ecommerce.payments;
select * from payments where payment_type = "UPI" and payment_value >= 500;
select * from payments where payment_type = "credit_card" and payment_installments = 2
and payment_value >= 1000;
select * from payments where payment_value between 150 and 200;

select * from payments order by payment_value;
select * from payments order by payment_value desc;
select * from payments order by payment_value, payment_type desc;

#Beautify the code here 
SELECT 
    *
FROM
    payments
WHERE
    payment_installments = 1
ORDER BY payment_value;


#use functions
select * from payments limit 7;
select round(sum(payment_value), 2) as Total_Revenue from payments;
select max(payment_value) from payments;
select min(payment_value) from payments;
select round(avg(payment_value), 2) from payments;

#round values
select payment_value, ceil(payment_value), floor(payment_value) from payments;
# Use groupby for different functions
select payment_type, round(avg(payment_value)) from payments
 group by payment_type;
 
#max
select payment_type, round(max(payment_value)) from payments
group by payment_type;
#min
select payment_type, round(min(payment_value)) from payments
group by payment_type;
 
#Use having
select payment_type, round(avg(payment_value)) from payments
group by payment_type
having (avg(payment_value))>= 100;