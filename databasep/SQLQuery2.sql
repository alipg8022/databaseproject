create table resturant(
ID int not null identity(10000,1),
resturant_name varchar(20),
share_worth int,
HQ_address varchar(100),
HQ_number varchar(20),
primary key(ID));

create table branch(
branch_number int not null identity(100000,3),
branch_address varchar(50),
resturant_id int,
phone_number varchar(20),
primary key(branch_number),
foreign key(resturant_id) references resturant);

create table employee(
ID int not null identity(100001,1),
firstname varchar(20),
lastname varchar(20),
phone_number varchar(20),
salary int,
branch_id int,
resturant_id int,
primary key (ID),
foreign key (resturant_id) references resturant,
foreign key (branch_id) references branch );

create table manager(
salary int,
employee_id int,
branch_id int,
foreign key (employee_id) references employee,
foreign key (branch_id) references branch);

create table food(
food_id int not null identity(101,1) primary key,
food_name varchar(20),
food_description varchar(100)
);


create table menue(
resturant_id int ,
food_id int,
primary key(resturant_id,food_id),
foreign key (resturant_id) references resturant,
foreign key (food_id) references food);

create table customer(
ID int not null identity(1000001,1) primary key,
customer_name varchar(20),
phone_number varchar(20));

create table orderinfo(
ID int not null identity(1000001,1) primary key,
order_date date,
order_time time,
customer_id  int,
branch_id int,
foreign key (branch_id) references branch,
foreign key (customer_id) references customer);

create table orderItems(
order_id int,
food_id int,
Quantity smallint,
price int,
foreign key (food_id) references food,
foreign key (order_id) references orderinfo);









