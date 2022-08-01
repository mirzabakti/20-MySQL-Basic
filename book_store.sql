SHOW DATABASES;

CREATE DATABASE bookstore;

USE bookstore;

SHOW TABLES;

CREATE TABLE `books`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `author1` VARCHAR(100) NOT NULL,
    `author2` VARCHAR(100),
    `author3` VARCHAR(100),
    `title` VARCHAR(100),
    `description` TEXT,
    `place_sell` CHAR(3),
    `stock` INT default 0,
    `creation_date` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE books
    ADD `price` INT DEFAULT 0,
    ADD `status` ENUM('available', 'out of stock', 'limited'),
    DROP `place_sell`;

INSERT INTO books VALUES
    (NULL,'Mirza', 'Bakti', 'Sukaryana', 'Belajar Algoritma', 'Belajar algoritma dasar disertai contoh nyata',200, default, 199000, 'available'),
    (NULL,'Eichiiro', 'Oda', 'Sensei', 'One Piece', 'Kisah bajak laut mencari harta karun berharga',99, default, 249000, 'limited'),
    (NULL,'Duta', 'Sheila', 'On Seven', 'Kisah Klasik', 'Kumpulan syair-syair hits',4, default, 229000, 'out of stock');

SELECT * FROM books;

SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 from books;

SELECT * FROM books WHERE id = 3;

SELECT * FROM books WHERE id = 1 AND price >= 100000;

SELECT * FROM books WHERE stock > 100 OR price <= 200000;

SELECT * FROM books WHERE NOT status = 'out of stock';

SELECT * FROM books ORDER BY id;

SELECT * FROM books LIMIT 2;

UPDATE books SET author1 = 'JK Rowling', price = '125000' WHERE id = 1;

DELETE FROM books where id = 2;