SELECT 
--from raw orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ORDERCOSTPRICE,
o.ORDERSELLINGPRICE,
o.ORDERSELLINGPRICE - o.ORDERCOSTPRICE as orderprofit,
--from raw customer
c.customername,
c.SEGEMENT,
c.country,
--from raw product
p.category,
p.productname,
p.SUBCATGORY
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
on o.productid = p.productid
