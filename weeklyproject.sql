-- Tables creation
CREATE TABLE doctors (
	ID INT PRIMARY KEY,
	Name VARCHAR(255),
	Specialization VARCHAR(255)
);

CREATE TABLE patients (
	ID INT PRIMARY KEY,
	Name VARCHAR(255),
	Birth_Date VARCHAR(255),
	Phone_Number VARCHAR(11)
);

CREATE TABLE appointments (
	ID INT PRIMARY KEY,
	Date VARCHAR(255) NOT NULL,
	Time VARCHAR(255) NOT NULL,
	Doctor_ID INT REFERENCES doctors(ID) ON DELETE CASCADE,
	Patient_ID INT REFERENCES Patients(ID) ON DELETE CASCADE
);

CREATE TABLE treatments (
	ID INT PRIMARY KEY,
	name VARCHAR(255),
	description VARCHAR(255) NOT NULL,
	Patient_ID INT REFERENCES Patients(ID) ON DELETE CASCADE
);

CREATE TABLE prescriptions (
	ID INT PRIMARY KEY,
	Medicine_Name VARCHAR(255),
	Doctor_ID  INT REFERENCES Doctors(ID) ON DELETE CASCADE,
	Patient_ID INT REFERENCES Patients(ID) ON DELETE CASCADE
);


-- INSERT data into tables 

INSERT INTO doctors (ID, Name, Specialization)
VALUES
(1, 'Omar Ahmed', 'Ophthalmia'),
(2, 'Mohamed Hani', 'Dentist');

INSERT INTO patients (ID, Name, Birth_Date, Phone_Number)
VALUES
(1, 'Amr Gamal', '1994-07-02', '01412345678'),
(2, 'Ehab Ayman', '1998-01-01', '01823456789'),
(3, 'Ahmed Mohamed', '2001-03-25', '01334567890');



INSERT INTO appointments (ID, Date, Time, Doctor_ID, Patient_ID)
VALUES
(1, '2025-11-16', '18:00', 1, 3),
(2, '2025-09-10', '20:30', 2, 1),
(3, '2025-09-13', '16:00', 2, 2);



INSERT INTO treatments (ID, Name, Description, Patient_ID)
VALUES
(1, 'Eye Checkup', 'Complete eye examination and vision test', 3),
(2, 'Teeth Cleaning', 'Dental scaling and polishing', 1),
(3, 'Cavity Treatment', 'Filling dental cavities', 2);

INSERT INTO prescriptions (ID, Medicine_Name, Doctor_ID, Patient_ID)
VALUES
(1, 'Eye Drops', 1, 3),
(2, 'Painkiller', 2, 1),
(3, 'Antibiotic', 2, 2);


SELECT * FROM doctors;

SELECT * FROM patients;

SELECT * FROM appointments;

SELECT * FROM treatments;

SELECT * FROM prescriptions;

-- =========================
-- UPDATE operation
-- Change appointment with id = 2 time to 17:00
-- =========================

-- Before UPDATE
SELECT * FROM appointments;

UPDATE appointments
SET Time = '17:00'
WHERE ID = 2;

-- After UPDATE
SELECT * FROM appointments;

-- =========================
-- DELETE operation
-- Delete patient with id = 3
-- =========================

-- Before DELETE
SELECT * FROM patients;
SELECT * FROM appointments WHERE patient_id=3;

DELETE FROM patients
WHERE ID = 3;

-- After DELETE
SELECT * FROM patients;
SELECT * FROM appointments;
