# Write your MySQL query statement below
select customer_id , count(*) as count_no_trans
from Visits
where visit_id Not IN (select distinct visit_id from Transactions)
GROUP By customer_id;
