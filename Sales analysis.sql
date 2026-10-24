select 
c.customerID as customerID,
soh.salesorderID as salesorderID,
soh.totaldue as totalDue,
rank()
over(
order by soh.totaldue desc
) as orderrank
from sales.customer as c
join sales.salesorderheader as soh 
on soh.customerID=c.customerID
;

select
c.customerID as ahlamsacustomerID,
soh.salesorderID as OrderID,
soh.totaldue as totalDue,
dense_rank()
Over(
order by soh.totaldue desc) as OrderAmuntRank
from Sales.SalesOrderHeader as soh
join sales.customer as c
on soh.customerID = c.CustomerID
;



select 
co.CustomerID as customerid,
soh.salesorderid as orderid,
soh.totaldue as totadue,
rank()
over(
partition by co.customerid
order by soh.totaldue desc
) as orderrank
from sales.customer as co
join sales.salesorderheader as soh
on co.customerid = soh.customerid;

with rankorders as(
select 
co.CustomerID as customerid,
soh.salesorderid as orderid,
soh.totaldue as totadue,
rank()
over(
partition by co.customerid
order by soh.totaldue desc
) as orderrank
from sales.customer as co
join sales.salesorderheader as soh
on co.customerid = soh.customerid

)
select*
from rankorders 
where orderrank <= 3;




with threeordercustomers as(
select customerid 
from Sales.SalesOrderHeader 
group by CustomerID
having count(*) =3
),
Rankorders as 
(
select 
soh.customerid as customerid,
soh.salesorderid as orderid,
soh.totaldue,
row_number()
over
(
partition by soh.customerid
order by soh.totaldue desc
) as orderrank
from Sales.SalesOrderHeader as soh
join threeordercustomers as toc
on soh.CustomerID = toc.CustomerID

)
select*
from rankorders
order by customerid, orderrank;

WITH Orders AS
(
SELECT
soh.customerID as customerID,
soh.salesorderid as orderid,
soh.orderdate as orderdate ,
soh.totaldue as totaldue,
lag(totaldue)
over(
partition by customerid
order by soh.totaldue desc
) as previosordervalue ,
rank()over(

partition by soh.customerid
order by soh.totaldue desc) as orderrank

from sales.SalesOrderHeader as soh
)
select 
customerID,
orderID,
orderdate,
totaldue,
previosordervalue,
totaldue - previosordervalue as diffrence,
orderrank
from Orders;





select 
soh.salesorderid as orderid,
soh.customerid as customerid,
soh.orderdate as orderdate,
soh.totaldue as totaldue
from sales.SalesOrderHeader as soh
where
totaldue > (
select AVG(totaldue)
from sales.salesorderheader
)

order by totaldue 
;


select AVG(totaldue)
from sales.salesorderheader;

select 
soh.customerid as customerid,
soh.salesorderid as orderid,
soh.orderdate as orderdate,
soh.totaldue as totaldue
from sales.SalesOrderHeader as soh
where soh.CustomerID in(
select
soh.customerid as customerID
from sales.SalesOrderHeader as soh
group by CustomerID
having count(*) > 3
);



select 
c.customerid as customerid 
from sales.Customer as c
where exists (
select 1 
from Sales.SalesOrderHeader as soh 
where soh.CustomerID=c.CustomerID
AND soh.TotalDue>10000);


select 
soh.salesorderid as orderid,
soh.customerid as customerid,
soh.totaldue as totaldue,
case
when soh.totaldue> 10000 then'high'
when soh.totaldue> 5000 then'medion'
else 'low'
end as ordercategory
from sales.SalesOrderHeader as soh
order by TotalDue desc;


select 
c.customerID as customerID,
coalesce(personid,112) as personid
from sales.customer as c
where c.personid is null;



select 
soh.salesorderid as orderid,
soh.orderdate as dateoflastorder,
datediff(
day,
soh.orderdate,
GETDATE()
)as daysaway 
from Sales.SalesOrderHeader as soh



select 
p.productid as productid,
p.name as nameofproduct,
UPPER(p.name) as UPPERNAME,
LEN(p.name) as NAMELENGHT
from Production.Product as p;


select
p.productid as productid,
p.name as pname,
LEFT(p.name,3),
RIGHT(p.name,3)
from Production.Product as p;
