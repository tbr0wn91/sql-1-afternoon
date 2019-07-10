-- Table-person
--1
create table person(
    person_id serial primary key,
    name text not null,
    age integer not null,
    height float not null,
    city text not null,
    favorite_color text not null
);

--.2

insert into person(name, age, height, city, favorite_color)
values
('Thomas', 28, 170.18, 'Morgan Hill', 'blue'),
('Charley', 27, 187.96, 'Anaheim', 'green'),
('Tom', 27, 180.34, 'Missoula', 'red'),
('Cody', 30, 177.80, 'Hollister', 'black'),
('Matt', 27, 198.12, 'Gilroy', 'white');

--.3
select * from person
order by height desc;

--.4
select * from person
order by height asc;

--.5
select * from person
order by age desc;

--.6
select * from person
where age > 20;

--.7
select * from person
where age = 18;

--.8
select * from person
where age < 20 and age > 30;

--.9
select * from person
where age != 27;

--.10
select * from person
where favorite_color != 'red';

--.11
select * from person
where favorite_color != 'red' and favorite_color != 'blue';

--.12
select * from person
where favorite_color = 'orange' or favorite_color = 'green';

--.13
select * from person
where favorite_color in ('orange', 'green', 'blue');

--.14
select * from person
where favorite_color in ('yellow', 'purple');


--Table-orders--

--.1
create table orders(
    order_id serial primary key,
    person_id integer not null,
    product_name text not null,
    product_price float not null,
    quantity integer not null
);

--.2 
insert into orders(person_id, product_name, product_price, quantity)
values
(0, 'In-n-Out-burger', 7.99, 1),
(0, 'In-n-Out-fries', 1.50, 3),
(1, 'Chipotle-burrito', 8.50, 2),
(2, 'Taco-Bell-tacos', 6.00, 5),
(3, 'Chick-fil-A-combo', 7.50, 1)

--.3
select * from orders;

--.4
select sum(quantity) from orders;

--.5
select sum(product_price * quantity) from orders;

--.6
select sum(product_price * quantity) from orders
where person_id = 2;


--Table-artist--

--.1
insert into artist(name)
values
('Slipknot'), ('Architects'), ('August Burns Red');

select * from artist;

--.2
select * from artist order by name desc limit 10;

--.3
select * from artist order by name asc limit 5;

--.4
select * from artist where name like 'Black%';

--.5
select * from artist where name like '%Black%';


--Table-employee--

--.1
select first_name, last_name from employee
where city = 'Calgary';

--.2
select max(birth_date) from employee;

--.3
select min(birth_date) from employee;

--.4
select * from employee where reports_to = 2;

--.5
select count(*) from employee where city = 'Lethbridge';

--Table-invoice--

--.1
select count(*) from invoice where billing_country = 'USA';

--.2
select max(total) from invoice;

--.3
select min(total) from invoice;

--.4
select * from invoice where total > 5;

--.5
select count(*) from invoice where total < 5;

--.6
select count(*) from invoice where billing_state
in ('CA', 'TX', 'AZ');

--.7
select avg(total) from invoice;

--.8
select sum(total) from invoice;
