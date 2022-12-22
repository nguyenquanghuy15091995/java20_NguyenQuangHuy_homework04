CREATE DATABASE db_bookstore;

-- DROP DATABASE db_bookstore;

CREATE TABLE tb_customer (
    cus_id int auto_increment,
	cus_name nvarchar(255),
    cus_birthday date,
    cus_sex bool,
    cus_phone varchar(50),
    cus_email nvarchar(200),
    cus_address nvarchar(2000),
    cus_account varchar(1000),
    cus_password varchar(1000),
    PRIMARY KEY (customer_id)
);

CREATE TABLE tb_author (
	aut_id int auto_increment,
    aut_name nvarchar(255),
    aut_phone varchar(50),
    aut_address nvarchar(2000),
    aut_history text,
    PRIMARY KEY (aut_id)
);

CREATE TABLE tb_publisher (
	publ_id int auto_increment,
    publ_name nvarchar(255),
    publ_phone varchar(50),
    publ_address nvarchar(2000),
    PRIMARY KEY (publ_id)
);

CREATE TABLE tb_topic (
	topic_id int auto_increment,
    topic_name nvarchar(255),
    PRIMARY KEY (topic_id)
);

CREATE TABLE tb_order (
	order_id int auto_increment,
    order_createdDate date,
    order_shipDate date,
    order_isPayed bool,
    order_shipStatus
    PRIMARY KEY (order_id)
);
