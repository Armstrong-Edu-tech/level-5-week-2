CREATE DATABASE Library;

\c library;

CREATE ROLE Reader LOGIN PASSWORD 'reader';

CREATE ROLE Librarian LOGIN PASSWORD 'librarian';

CREATE TABLE Books (
    id INT PRIMARY KEY,
    BookName VARCHAR(255),
);

GRANT SELECT ON TABLE Books TO Reader;

GRANT ALL PRIVILEGES ON TABLE Books TO librarian;