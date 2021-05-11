select od.custid, sum(saleprice) total
from orders od
group by od.custid;
위 모양에서 아래모양으로 발전

select (select name
            from customer cs
            where cs.custid=od.custid) name , sum(saleprice) 합계
from orders od
group by od.custid;

update orders
set bookname = (select bookname
                            from book
                            where book.bookid=orders.bookid);



select orderid, custid, saleprice
from orders od
where saleprice > (select AVG(saleprice)
                                    from orders so
                                    where od.custid=od.custid);

select sum(saleprice) total
from orders
where custid in (select custid
                            from customer
                            where address like '%대한민국%');
                            
                            
select custid, (select address
                        from customer cs
                        where cs.custid=od.custid) address,
                        sum(saleprice) total
from orders od
group by od.custid;

select cs.name, s
from (select custid, avg(saleprice) s
            from orders
            group by custid) od, customer cs
where cs.custid=od.custid;


select sum(saleprice) total
from orders od
where exists (select *
                        from customer cs
                        where custid <= 3 and cs.custid=od.custid);


--1
select bookname
from book
where bookid=1;

--2
select bookname
from book
where price >=20000;

--3
select sum(saleprice) as total
from orders
where custid=1

--4
select count(*)
from orders
where custid=1

--1
select count(distinct  bookname)
from book

--2
select count(distinct publisher)
from book

--3
select name, address
from customer

--4
select orderid
from orders
where orderdate between '2014/07/04' and '2014/07/07'

--5
select orderid
from orders
where orderdate not between '2014/07/04' and '2014/07/07'

--6
select name, address
from customer
where name like '김%'

--7
select name, address
from customer
where name like '김%아'
