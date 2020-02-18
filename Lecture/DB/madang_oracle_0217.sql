select sum(saleprice) as 총매출
from orders;

select sum(saleprice) as 연아매출
from orders
where custid = 2;

select count(*) as 판매건수
from orders;

select custid, count(*) as 도서수량,sum(saleprice) as 총액
from orders
group by custid;

 'group by가 있으면 select절에 집계함수만 가능'
select custid, saleprice
from orders
group by custid;

select custid, count(*)
from orders
where saleprice >=8000
group by custid
having count(*)>=2;

select bookid, bookname
from book
where bookid=1;

select bookname, price
from book
where price>=20000;

select sum(orders.saleprice) as 지성총구매액
from orders, customer
where orders.custid=customer.custid and orders.custid=1;

select count(*)
from orders
where custid=1;

select count(*)
from book

select count(distinct publisher)
from book;

select name,address
from customer;

select orderid
from orders
where orderdate between '2014/7/4' and '2014/7/7';

select orderid
from orders
where orderdate not between '2014/7/4' and '2014/7/7';

select name, address
from customer
where name like '김%';

select name, address
from customer
where name like '김%아';

select *
from customer left outer join orders
on customer.custid=orders.custid;


5
select count(Distinct publisher)
from book
where bookid in (select bookid
                from orders
                where custid in (select custid
                                            from customer
                                            where name='박지성'));
                                            
6                                            
select book.bookname, book.price, (book.price-orders.saleprice)
from book, orders
where book.bookid=orders.bookid and orders.custid in (select customer.custid
                                                        from customer
                                                        where name='박지성');

7
select bookname
from book
where bookid in (select bookid
                from orders
                where custid in (select custid
                                from customer
                                where name<>'박지성'));

8
select name
from customer
where custid not in (select custid
                                    from orders);

9
select sum(saleprice), avg(saleprice)
from orders;

10
select name, sum(saleprice)
from customer, orders
where customer.custid=orders.custid
group by customer.name

11
select name, bookname
from customer, book, orders
where book.bookid=orders.bookid and orders.custid=customer.custid
order by name

12
select *
from book, orders
where book.bookid=orders.bookid
            and price-saleprice
                = (select max(book.price-orders.saleprice)
                    from orders, book
                    where orders.bookid=book.bookid);

13
select name
from customer, orders
where customer.custid=orders.custid
group by name
having avg(saleprice)> (select avg(saleprice) from orders);