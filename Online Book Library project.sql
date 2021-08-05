create database online_book_library;
show databases;

use online_book_library;
CREATE table author 
   (

     author_id VARCHAR(6) NOT NULL,
     fname VARCHAR(30) NOT NULL,
     lname VARCHAR(30),
     email VARCHAR(30) NOT NULL,
     phone Bigint(11),
     CONSTRAINT author_pk PRIMARY KEY (author_id)
     
     );
     
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A001', 'Anthony', 'Doerr', 'adoerr@gmail.com',4469643298);
     INSERT INTO author (author_id, fname, lname, email,phone)
      VALUES ('A002', 'J.R.R.', 'Tolkien', 'tolkien@gmail.com',3279834932);
      INSERT INTO author (author_id, fname, lname, email,phone)
      VALUES ('A003', 'George', 'Orwell', 'gorwell@gmail.com',4389237202);
       INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A004', 'Gabriel', 'Marquez', 'gmarquez@gmail.com',4824327327);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A005', 'J.R.R', 'Tolkien', 'tolkien@gmail.com',4383734978);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A006', 'Joseph', 'Heller', 'jheller@gmail.com',9082397384);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A007', 'Amor', 'Towles', 'atowles@gmail.com',6783263724);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A008', 'Fyodor', 'Dostovesky', 'fdostovesky@gmail.com',5887508475);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A009', 'Gregory', 'Roberts', 'groberts@gmail.com',5865974985);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A010', 'Cormac', 'McCarthy', 'cmccarthy@gmail.com',7793492875);
      INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A011', 'F.Scott', 'Fitzgerald', 'ffitzgerald@gmail.com',4979843075);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A012', 'Joy', 'Adamson', 'jadamson@gmail.com',1389587495);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A013', 'Michelle', 'Obama', 'mobama@gmail.com',6458758646);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A014', 'Matt', 'Kepnes', 'mkepnes@gmail.com',2333232030);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A015', 'James', 'Kurose', 'jkurose@gmail.com',1223224233);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A016', 'Lynne', 'Cox', 'lcox@gmail.com',9894373974);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A017', 'Tara', 'Westover', 'twestover@gmail.com',8947398534);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A018', 'Radhanath', 'Swami', 'rswami@gmail.com',4850840804);
     INSERT INTO author (author_id, fname, lname, email,phone)
     VALUES ('A019', 'Ramez', 'Elmasri', 'relmasri@gmail.com',8957834783);
     select * from author;
    
 CREATE table Category 
   (
     cat_id VARCHAR(6) NOT NULL,
     cat_name VARCHAR(30) NOT NULL,
     CONSTRAINT cat_pk PRIMARY KEY (cat_id)
     
     );

INSERT INTO category (cat_id,cat_name) VALUES ('C001', 'Computer');
INSERT INTO category (cat_id,cat_name) VALUES ('C002', 'Nonfiction');
INSERT INTO category (cat_id,cat_name) VALUES ('C003', 'Children');
INSERT INTO category (cat_id,cat_name) VALUES ('C004', 'Biographies and Autobiographies');
INSERT INTO category (cat_id,cat_name) VALUES ('C005', 'Fictional');
select * from category;

CREATE table Sub_Category 
   (
     subcat_id VARCHAR(6) NOT NULL,
     subcat_name VARCHAR(30) NOT NULL,
     cat_id VARCHAR(6) NOT NULL,
     CONSTRAINT subcat_pk PRIMARY KEY (subcat_id),
     FOREIGN KEY (cat_id) REFERENCES category(cat_id)
     );

INSERT into sub_category(subcat_id,subcat_name,cat_id) VALUES('S001','MS-Office','C001');

INSERT into sub_category(subcat_id,subcat_name,cat_id) VALUES('S002','Internet','C001');
INSERT into sub_category(subcat_id,subcat_name,cat_id) VALUES('S003','Yoga','C002');
INSERT into sub_category(subcat_id,subcat_name,cat_id) VALUES('S004','Comic','C003');
INSERT into sub_category(subcat_id,subcat_name,cat_id) VALUES('S005','History','C005');
INSERT into sub_category(subcat_id,subcat_name,cat_id) VALUES('S006','Novel','C005');
SELECT * FROM sub_category ;

CREATE table publisher
   (
     publisher_id VARCHAR(6)   NOT NULL,
     pname VARCHAR(30),
     email VARCHAR(30),
     books_published INT (10),
     address VARCHAR(30),
     phone BIGINT(30),
     CONSTRAINT publisher_pk PRIMARY KEY (publisher_id)
);
  
	 INSERT INTO publisher(publisher_id,pname,email,address,books_published,phone)
     VALUES('P001','Penguin House','penguin@gmail.com','Delhi','50000',5479734934);
     INSERT INTO publisher(publisher_id,pname,email,address,books_published,phone)
     VALUES('P002','Hachette Book Group','hachette@gmail.com','Mumbai','100000',6584589585);
     INSERT INTO publisher(publisher_id,pname,email,address,books_published,phone)
     VALUES('P003','Harper Collins','harper@gmail.com','Kolkata','450000',9837448793);
    INSERT INTO publisher(publisher_id,pname,email,address,books_published,phone)
     VALUES('P004','Simon & Schuster','simon@gmail.com','Chennai','25000',7483048304);
     INSERT INTO publisher(publisher_id,pname,email,address,books_published,phone)
     VALUES('P005','Macmillan','mcmillan@gmail.com','Mumbai','1000000',3849589457);
     select * from publisher;
     
CREATE table reader
   (
     reader_id VARCHAR(6)   NOT NULL,
     fname VARCHAR(30),
     lname VARCHAR(15),
     age INT(3),
     address VARCHAR(15),
     phone VARCHAR (30),
     email VARCHAR(25),
     sex CHAR,
     date_of_registration date,
CONSTRAINT reader_pk PRIMARY KEY (reader_id)
	);
 
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration) 
VALUES('R001', 'Ramesh','Sharma', 'Delhi', '45' ,'957643854', 'rsharma@gmail.com','M','2021-06-21');
          INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R002', 'Avinash','Minha', 'Delhi', '22','9874543254' ,'aminha@gmail.com','M','2021-05-23');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R003', 'Raju' ,'Rastogi', 'Delhi', '78', '946543674' ,'rrastogi@gmail.com','M','2021-04-05');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R004', 'Parul','Gandhi', 'Delhi', '34', '9874543654', 'pgandhi@gmail.com','F','2021-08-15');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R005', 'Naveen', 'Aedekar', 'Mumbai','56', '9876543654', 'naedekar@gmail.com','M','2021-01-26');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R006','Chitresh','Barwe','Mumbai', '43',' 9876545654', 'cbarwe@gmail.com','M','2021-07-04');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R007', 'Amit', 'Borkar', 'Mumbai', '67', '8976543654', 'aborkar@gmail.com','M','2021-07-13');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)  
VALUES('R008', 'Nisha', 'Damle','Mumbai', '22', '1276543654', 'ndamle@gmail.com','F','2021-12-12');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration) 
VALUES('R009', 'Abhishek','Dutta' ,'Kolkata', '56','9906543654', 'adutta@gmail.com','M','2021-12-25');
     INSERT INTO reader(reader_id,fname,lname,address,age,phone,email,sex,date_of_registration)
VALUES('R010', 'Shankar','Nair', 'Chennai', '89', '9867895654', 'snair@gmail.com','M','2021-04-06');
     select * from reader;


CREATE table book ( 

	ISBN VARCHAR(10) NOT NULL, 
	availibility VARCHAR(60), 
	book_title VARCHAR(40) NOT NULL, 
	price INT(3) NOT NULL, 
	page_count INT (5), 
	edition VARCHAR(10) NOT NULL, 
	subcat_id VARCHAR (30) NOT NULL, 
	year_of_publication INT(4), 
	author_id VARCHAR(10) NOT NULL, 
	publisher_id VARCHAR(10) NOT NULL, 
	CONSTRAINT book_pk PRIMARY KEY (ISBN),
	 FOREIGN KEY (author_id) REFERENCES author (author_id),
	 FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id), 
	 FOREIGN KEY (subcat_id) REFERENCES Sub_Category (subcat_id) );
    

  
   INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('All the Light We Cannot See','1476746583','200','456','2014','S005','Available','Paperback','A001','P001');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('The Hobbit, or There and Back Again','9780007525','400','598','1937','S006','Not Available','Kindle','A002','P002');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Nineteen Eighty-Four','2435136758','350','450','1984','S006','Not Available','Hardcover','A003','P003');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES  ('One Hundred Years of Solitude','7856409234','600','407','1967','S006','Available','Paperback','A004','P004');


INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Catch22','6783456732','100','100','1961','S004','Available','Hardcover','A006','P005');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('A Gentleman in Moscow','4504444899','400','250','2016','S005','Not Available','Paperback','A007','P004');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Crime and Punishment','5749321456','300','300','1866','S006','Not Available','Kindle','A008','P003');


INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Blood Meridian','967856746','200','689','1985','S006','Not Available','Hardcover','A010','P001');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('The Great Gatsby','2789678567','400','509','1925','S006','Available','Hardcover','A011','P002');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Fundamentals of Ms-Office Systems','32887323','350','300','1989','S001','Available','Kindle','A015','P005');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Grayson','33289422','600','1000','2006','S003','Not Available','Paperback','A016','P004');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Born Free','85692940','300','450','1966','S003','Not Available','Paperback','A012','P003');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Ten Years a Nomad','247868022','400','250','2019','S004','Available','Paperback','A014','P005');
INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('The Journey Home','238942724','100','509','2009','S005','Not Available','Kindle','A018','P004');

INSERT INTO book(book_title, ISBN, price, page_count, year_of_publication, subcat_id, availibility, edition,author_id, publisher_id)
VALUES ('Computer Internet, A Top-Down Approach','504383403','400','450','2000','S002','Available','Kindle','A019','P005');
select * from book;

CREATE table book_reader (
	ISBN VARCHAR(10) , 
 	reader_id VARCHAR(6) , 
	book_reader VARCHAR(8) NOT NULL, 
    CONSTRAINT book_reader_pk PRIMARY KEY (book_reader),
    FOREIGN KEY (ISBN) REFERENCES  book(ISBN),
	FOREIGN KEY (reader_id) REFERENCES reader(reader_id));
    
    INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('1476746583','R001','BR001');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('9780007525','R002','BR002');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('2435136758','R003','BR003');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('7856409234','R004','BR004');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('6783456732','R005','BR005');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('4504444899','R006','BR006');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('5749321456','R007','BR007');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('967856746','R008','BR008');
     INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('2789678567','R009','BR009');
    INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('32887323','R010','BR010');
    INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('33289422','R009','BR011');
    INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('85692940','R008','BR012');
	INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('247868022','R007','BR013');
    INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('238942724','R006','BR014');
    INSERT INTO book_reader (ISBN, reader_id, book_reader)
    VALUES ('504383403','R005','BR015');
 select * from book_reader;
	



SELECT ISBN,book_title,price,page_count,availibility,edition,s.subcat_name,a.fname,p.pname FROM book b,sub_category s, author a, publisher p WHERE a.author_id=b.author_id and p.publisher_id=b.publisher_id and s.subcat_id=b.subcat_id;  -- query #1

SELECT subcat_name,cat_name FROM sub_category s, category c WHERE s.cat_id=c.cat_id;  -- query #2

SELECT edition FROM book WHERE subcat_id = 'S005';  -- query#3


     


SELECT edition             -- Nested query #1
FROM book
WHERE subcat_id IN
(
SELECT subcat_id
FROM sub_category
WHERE cat_id = 'C005'
);

SELECT year_of_publication   -- Nested query #2
FROM book
WHERE author_id IN(

SELECT author_id
FROM author
WHERE email = 'tolkien@gmail.com'
);

SELECT PNAME,email,books_published 
FROM publisher 
WHERE books_published IN (SELECT MAX(books_published)FROM publisher );  -- Nested query #3

SELECT ISBN,book_title,price,page_count,availibility,edition,s.subcat_name,a.fname,p.pname 
FROM book b,sub_category s, author a, publisher p 
WHERE a.author_id=b.author_id and p.publisher_id=b.publisher_id and s.subcat_id=b.subcat_id and edition='Paperback' and b.subcat_id in (SELECT subcat_id FROM sub_category WHERE subcat_name='History');   -- Nested query #4


SELECT *                      -- Join query #1
FROM author 
INNER JOIN book ON author.author_id = book.author_id;

SELECT *                      -- Join query #2
FROM sub_category
RIGHT OUTER JOIN book ON sub_category.subcat_id = book.subcat_id;

SELECT *                      -- Join query #3
FROM publisher
LEFT OUTER JOIN book ON publisher.publisher_id = book.publisher_id;

SELECT SUM(price) AS Total_Cost,                  -- aggregate function query
       MIN(price) AS Minimum_Cost,
       MAX(price) AS Maximum_Cost,
       AVG(price) AS Average_Cost
FROM book;



CREATE VIEW v1_bookpub AS  
SELECT ISBN,book_title,availibility,page_count,year_of_publication,fname AS authorname 
FROM book b,author a WHERE year_of_publication<2021 and year_of_publication>2000 and b.author_id in (SELECT a.author_id FROM author);     -- View #1
SELECT * FROM v1_bookpub;

CREATE VIEW v2_authordetail AS SELECT fname,lname,email,phone FROM author WHERE fname like 'G%';  -- View #2
SELECT * FROM v2_authordetail;

CREATE VIEW v3_bookreader AS SELECT b.isbn,book_title,page_count,availibility,r.fname,r.lname,r.address FROM book b, reader r, book_reader br WHERE b.isbn=br.ISBN and r.reader_id=br.reader_id and r.reader_id in (SELECT reader_id FROM reader WHERE address='Delhi');  -- View #3
SELECT * FROM v3_bookreader;

CREATE VIEW v4_agebook AS SELECT b.isbn,book_title,page_count,availibility,r.fname,r.lname,r.address FROM book b, reader r, book_reader br WHERE b.isbn=br.ISBN and r.reader_id=br.reader_id and r.reader_id in (SELECT reader_id FROM reader WHERE age>=20 and age<=30);
SELECT * FROM v4_agebook;


Delimiter ///
CREATE TRIGGER update_publisher_total
AFTER INSERT ON Book 
FOR EACH ROW
BEGIN 
   update publisher set books_published=books_published+1 where publisher_id=new.publisher_id
;END;///

Delimiter ///
CREATE TRIGGER trig_delsubcat 
BEFORE DELETE ON category
FOR EACH ROW
BEGIN
 DELETE from sub_category WHERE cat_id=old.cat_id 
;END; ///

CREATE TRIGGER display_price_changes 
BEFORE UPDATE price ON Book 
FOR EACH ROW 

   price_diff number; 
BEGIN 
   price_diff := :NEW.price  - :OLD.price;
   dbms_output.put_line('Old Price: ' || :OLD.price); 
   dbms_output.put_line('New Price: ' || :NEW.price); 
   dbms_output.put_line('Price Increased for book is: ' || price_diff); 
END;













 

     