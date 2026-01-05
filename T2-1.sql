CREATE DATABASE Library;

\c library;

CREATE TABLE Books (
    Book_ID INT ,
    Book_Title VARCHAR(255),
    Author_ID INT,
    Category_ID INT
);

