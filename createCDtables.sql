create table mechanic(
mechanic_id serial primary key,
name_ varchar(50) not null,
hourly_rate numeric(6,2) not null
);

create table parts(
part_id serial primary key,
price numeric(7,2) not null,
name_ varchar(50)
);

create table customer(
customer_id serial primary key,
name_ varchar(50) not null,
credit_score integer
);

create table salesperson(
id serial primary key,
name_ varchar(50) not null,
hire_date date,
salary numeric(8,2) not null
);

create table car(
vin serial primary key,
year_ integer,
model varchar(50),
make varchar(50),
used bool,
msrp numeric(9,2) not null,
id integer,
foreign key (id) references salesperson (id)
);

create table service_invoice(
service_invoice_id serial primary key,
labor_cost numeric(7,2),
parts_cost numeric(7,2),
work_desc varchar(500),
vin integer,
foreign key (vin) references car (vin),
customer_id integer,
foreign key (customer_id) references customer (customer_id)
);

create table service_parts(
service_parts_id serial primary key,
quantity smallint,
part_id integer,
foreign key (part_id) references parts (part_id),
service_invoice_id integer,
foreign key (service_invoice_id) references service_invoice (service_invoice_id)
);

create table mechanic_invoice(
labor_hours smallint,
mechanic_id integer,
foreign key (mechanic_id) references mechanic (mechanic_id),
service_invoice_id integer,
foreign key (service_invoice_id) references service_invoice (service_invoice_id)
);

create table sales_invoice(
sales_invoice_id serial primary key,
sale_price numeric(9,2) not null,
vin integer,
foreign key (vin) references car (vin),
customer_id integer,
foreign key (customer_id) references customer (customer_id)
);


insert into mechanic(name_, hourly_rate)
values('Theodore Logan', 30.00),
('Bill S. Preston', 30.00),
('Rufus', 35.00);

insert into parts(name_, price)
values('air filter', 20.00),
('fuel filter', 115.00),
('spark plugs', 50.00),
('alternator', 500.00),
('battery', 120.00),
('tires', 175.00),
('brake pads', 150.00);

insert into customer(name_, credit_score)
values('Henry Pollard', 720),
('Ron Donald', 695),
('Kyle Bradway', 640),
('Casey Klein', 710),
('Constance Carmell', 780),
('Lydia Dunfree', 700);

insert into salesperson(name_, hire_date, salary)
values('Graham Chapman', '2020-04-02', 63500.00),
('Connie Booth', '2020-04-09', 64450.00),
('Terry Gilliam', '2020-05-01', 50000.00),
('Carol Cleveland', '2020-05-08', 45450.00),
('Terry Jones', '2020-05-18', 40250.00);

insert into car(year_, model, make, used, msrp, id)
values(2022, 'F-Pace', 'Jaguar', false, 50900.00, 2),
(2022, 'E-Pace', 'Jaguar', false, 48000.00, 4),
(2022, 'I-Pace', 'Jaguar', false, 71300.00, 2),
(2020, 'F-Type', 'Jaguar', true, 61600.00, 1),
(2020, 'Jaguar XF', 'Jaguar', true, 51100.00, 3),
(2019, 'Discovery HSE', 'Land Rover', true, 56880.00, 5);

insert into service_invoice(labor_cost, parts_cost, work_desc, vin, customer_id)
values(120.00, 500.00, 'replace alternator', 6, 3),
(70.00, 300.00, 'replace front brake pads', 4, 5),
(90.00, 350.00, 'replace left side tires', 5, 4);

insert into service_parts(quantity, part_id, service_invoice_id)
values(1, 4, 1),
(2, 7, 2),
(2, 6, 3);

insert into mechanic_invoice(labor_hours, mechanic_id, service_invoice_id)
values(4, 1, 1),
(2, 3, 2),
(3, 2, 3);

insert into sales_invoice(sale_price, vin, customer_id)
values(59955.50, 1, 2),
(52850.00, 2, 6),
(74475.00, 3, 1),
(63650.00, 4, 5),
(54275.25, 5, 4),
(58150.00, 6, 3);


select * from sales_invoice;

select * from mechanic_invoice;

select * from service_parts;

select * from service_invoice;

select * from car;

select * from salesperson;

select * from customer;

select * from parts;

select * from mechanic;









