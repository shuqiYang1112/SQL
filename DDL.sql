create table basket
	(basket_ID		serial,
	 primary key (basket_ID)
	);

create table book
	(ISBN			numeric(10,0), 
	 Book_name		varchar(50), 
	 author			varchar(20), 
	 genre			varchar(20),
	 page_num		numeric(5,0),
	 primary key (ISBN),
	);

create table collection
	(basket_ID		serial, 
	 ISBN			numeric(10,0), 
	 primary key (basket_ID)
	 foreign key (ISBN) references book
	);

create table publishers
	(publisher_name		varchar(50), 
	 address		varchar(100),
	 emil			varchar(20), 
	 phone_number		numeric(10,0), 
	 bank_street		varchar(100),
	 primary key (publisher_name,adress)
	);

create table issue
	(ISBN			numeric(10,0), 
	 publisher_name		varchar(50), 
	 address		varchar(100), 
	 primary key (ISBN),
	 foreign key (publisher_name,adress) references publishers
	);


create table user
	(user_ID		serial, 
	 user_name 		varchar(10),
	 password		numeric(3,0),
	 primary key (user_ID)
	);

create table take
	(user_ID		serial, 
	 name			varchar(20), 
	 password		numeric(3,0),
	 primary key (ID),
	 foreign key (dept_name) references department
	);

create table takes
	(user_ID		serial, 
	 basket_ID		serial,
	 primary key (ID),
	 foreign key (basket_ID) references basket
	);


create table order
	(order_number		numeric(8,0),
	 send_time 		varchar(19),
	 finish_time 		varchar(19),
	 billing		varchar(100),
	 address		varchar(100),
	 phone			numeric(10,0),
	 primary key (order_number)
	);

create table confirm
	(order_number		numeric(8,0),
	 user_ID		serial, 
	 primary key (order_number),
	 foreign key (user_ID) references user
	);


create table postition
	(track_ID		serial, 
	 location		varchar(100),
	 primary key (track_ID)
	);

create table track
	(track_ID		serial, 
	 order_number 		serial,
	 primary key (track_ID),
	 foreign key (order_number) references order
	);

create table information
	(billing		varchar(100),
	 address		varchar(100),
	 phone			numeric(10,0),
	 primary key (billing,address,phone)
	);

create table user_infor
	(user_ID		serial,
	 billing		varchar(100),
	 address		varchar(100),
	 phone			numeric(10,0),
	 primary key (billing, address,phone),
	 foreign key (user_ID) references user_infor
	);

