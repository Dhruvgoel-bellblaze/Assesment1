CREATE DATABASE Training;
USE Training;
CREATE TABLE User(
  id INT4 PRIMARY KEY,
  name VARCHAR(50),
  email_id VARCHAR(100),
  password VARCHAR(50),
  otp INT4
);
CREATE TABLE order_table(
  id INT4 PRIMARY KEY,
  user_id INT4 ,
  FOREIGN KEY (user_id) REFERENCES User(id),
  category VARCHAR(100),
  product_name VARCHAR(100)
);
CREATE TABLE payment(
  id INT4 PRIMARY KEY,
  order_id INT4 ,
  FOREIGN KEY (order_id) REFERENCES order_table(id),
  user_id INT4,
  FOREIGN KEY (user_id) REFERENCES USER(id),
  amount INT4,
txn_number INT4
);
INSERT INTO User 
(id,name,email_id,password,otp)
VALUES
(1,"Dhruv","dhruv@bellblaze.com","asdfghjkl",1234),
(2,"Vishal","vishal@bellblaze.com","qwerty",5678),
(3,"Naiyar","vishal@bellblaze.com","zxcvbn",3467),
(4,"Saransh","saransh@bellblaze.com","zdftyui",7634),
(5,"Sumit","sumit@bellblaze.com","qwerthjk",7641);

INSERT INTO order_table (id, user_id, category, product_name)
VALUES 
    (101, 1, 'Electronics', 'Laptop'),
    (102, 2, 'Books', 'SQL Guide'),
    (103, 3, 'Fashion', 'Sneakers'),
    (104, 4, 'Home', 'Coffee Maker'),
    (105, 5, 'Electronics', 'Smartphone');
INSERT INTO payment (id, order_id, user_id, amount, txn_number)
VALUES 
    (501, 101, 1, 55000, 99881),
    (502, 102, 2, 1200, 99882),
    (503, 103, 3, 4500, 99883),
    (504, 104, 4, 3000, 99884),
    (505, 105, 5, 25000, 99885);
CREATE TABLE category(
  category_id INT4 PRIMARY KEY,
  category_name VARCHAR(100)
);
INSERT INTO category
(category_id,category_name)
VALUES
(1,"Electronics"),
(2,"Furniture");

ALTER TABLE order_table
DROP COLUMN category;

ALTER TABLE order_table
ADD COLUMN category_id INT;

SELECT * FROM order_table;
ALTER TABLE order_table
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

SELECT * FROM order_table;