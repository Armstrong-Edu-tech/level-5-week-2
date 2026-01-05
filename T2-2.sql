--1. NOT NULL => No NULL values in the column.
CREATE TABLE Book (
	Book_Title VARCHAR(255) NOT NULL,
);



---------------------
CREATE TABLE Readers(
	--2. UNIQUE => Each row with a different value
	email VARCHAR(255) UNIQUE,

	--3. PRIMARY KEY => UNIQUE + NOT NULL 
	Reader_ID INT PRIMARY KEY
);




--4. FOREIGN KEY => Establish a relation between 2 tables
CREATE TABLE Authors (
	Author_ID INT PRIMARY KEY
);
CREATE TABLE Books (
	Book_ID INT PRIMARY KEY,
	Author_ID INT REFERENCES Authors(Author_ID)
);



--5. CHECK constraint => Check on a condition
CREATE TABLE Books (
	Book_Year INT CHECK (Book_Year > 1900)
);



--6. DEFAULT => Sets a default value for the NULL columns.
CREATE TABLE Books (
	Borrow_status VARCHAR(255) DEFAULT  'Available'
);
