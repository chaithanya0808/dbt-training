select
   productid,
   productname,
   category,
   SUBCATGORY,
   sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
   productid,
   productname,
   category,
   SUBCATGORY
