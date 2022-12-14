select
   customerid,
   SEGEMENT,
   country,
   sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
   customerid,
   SEGEMENT,
   country