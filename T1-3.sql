-- DDL (Data Definition Language) 3 Commands:

-- 1. CREATE command
CREATE TABLE Books (
    Book_ID INT,
    Book_Title VARCHAR(255)
);

-- 2. ALTER command
ALTER TABLE Readers
ADD phone_number VARCHAR(11);

-- 3. DROP command
DROP TABLE Authors;
