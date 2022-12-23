CREATE DATABASE db_bookstore;

-- DROP DATABASE db_bookstore;

CREATE TABLE tb_customer (
    cus_id int,
	cus_name nvarchar(255),
    cus_birthday date,
    cus_sex bool,
    cus_phone varchar(50),
    cus_email nvarchar(200),
    cus_address nvarchar(2000),
    cus_account varchar(1000),
    cus_password varchar(1000),
    PRIMARY KEY (cus_id)
);

CREATE TABLE tb_author (
	aut_id int,
    aut_name nvarchar(255),
    aut_phone varchar(50),
    aut_address nvarchar(2000),
    aut_history text,
    PRIMARY KEY (aut_id)
);

CREATE TABLE tb_publisher (
	publ_id int,
    publ_name nvarchar(255),
    publ_phone varchar(50),
    publ_address nvarchar(2000),
    PRIMARY KEY (publ_id)
);

CREATE TABLE tb_topic (
	topic_id int,
    topic_name nvarchar(255),
    PRIMARY KEY (topic_id)
);

CREATE TABLE tb_order (
	order_id int,
    order_createdDate date,
    order_shipDate date,
    order_isPayed bool,
    order_shipStatus varchar(255),
    PRIMARY KEY (order_id),
    cus_id int not null,
    FOREIGN KEY (cus_id) REFERENCES tb_customer(cus_id)
);

CREATE TABLE tb_book (
	book_id int,
    book_name nvarchar(1000),
    book_price double,
    book_description text,
    book_thumbnail varchar(2000),
    book_updatedDate date,
    book_quantity int,
    PRIMARY KEY (book_id),
    publ_id int not null,
    FOREIGN KEY (publ_id) REFERENCES tb_publisher(publ_id),
    topic_id int not null,
    FOREIGN KEY (topic_id) REFERENCES tb_topic(topic_id)
);

CREATE TABLE tb_order_book (
	order_book_id int,
    PRIMARY KEY (order_book_id),
    book_id int not null,
    FOREIGN KEY (book_id) REFERENCES tb_book(book_id),
    order_id int not null,
    FOREIGN KEY (order_id) REFERENCES tb_order(order_id)
);

CREATE TABLE tb_author_book (
	author_book_id int,
    PRIMARY KEY (author_book_id),
    book_id int not null,
    FOREIGN KEY (book_id) REFERENCES tb_book(book_id),
    aut_id int not null,
    FOREIGN KEY (aut_id) REFERENCES tb_author(aut_id)
);
