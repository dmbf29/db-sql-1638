-- SQLite
-- SQL keywords will be in CAPS

-- SELECT ALL ROWS
-- SELECT (everything) FROM table_name;
-- SELECT * FROM doctors;

-- Select specific column
-- SELECT column_name FROM table_name
-- SELECT first_name, last_name
-- FROM doctors;

-- Select with a filter
-- SELECT * FROM doctors
-- WHERE column_name = value
-- SELECT * FROM doctors
-- WHERE specialty = 'Chemistry';
-- SELECT * FROM doctors
-- WHERE age <= 40;

-- Read all doctors ordered by last name
-- SELECT * FROM doctors
-- ORDER BY column_name DIRECTION
-- SELECT * FROM doctors
-- ORDER BY last_name DESC;

-- LIKE
-- Special character % (allows strings to be flexible)
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%a%';

-- Aggregators
-- Count
-- SELECT COUNT(*) FROM doctors;
-- Average
-- SELECT AVG(age) FROM doctors;
-- Sum
-- SELECT SUM(age) FROM doctors;
-- Round
-- SELECT ROUND(AVG(age), 2) FROM doctors;

-- COUNT CHEMISTRY DOCTORS
-- SELECT COUNT(*) FROM doctors
-- WHERE specialty = 'Chemistry';

-- AS assigns a variable

-- GROUP BY -> used with an aggregator
-- COUNT ALL DOCTORS PER SPECIALTY
-- SELECT COUNT(*) c, specialty
-- FROM doctors
-- GROUP BY specialty
-- ORDER BY c DESC;

-- SELECT COUNT(*), SUM(age), specialty
-- FROM doctors
-- GROUP BY specialty;

-- JOIN
-- READ ALL THE APPOINTMENTS WITH DOCTORS INFOS
-- SELECT * FROM first_table_name
-- JOIN second_table_name ON primary_key = foreign_key

-- SELECT * FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id;

-- READ ALL PATIENTS FIRST & LAST NAMES ALONG WITH THEIR APPOINTMENT DATES

-- SELECT patients.first_name, patients.last_name, appointments.occurs_on, doctors.first_name
-- FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id
-- JOIN doctors ON doctors.id = appointments.doctor_id;

-- READ Yoana'S APPOINTMENTS DATES ALONG WITH HER PATIENTS FIRST NAME & LAST NAME
-- SELECT occurs_on, patients.first_name, patients.last_name, doctors.first_name
-- FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id
-- JOIN doctors ON doctors.id = appointments.doctor_id
-- WHERE doctors.first_name = 'Yoana';
-- OR doctors.first_name = 'Alex';

-- SELECT -> READ
-- INSERT INTO -> CREATE

-- INSERT INTO table_name (column_name, column_name, column_name, column_name)
-- VALUES ('1', '2', '3', '4');

-- INSERT INTO doctors (first_name, last_name, specialty)
-- VALUES ('Yann', 'Klein2', 'Proctology');

-- UPDATE
-- UPDATE doctors
-- SET age = 40, first_name = 'John', last_name = 'Smith'
-- WHERE id = 12;

-- DELETE
DELETE FROM doctors
WHERE id = 3;


-- SELECT * FROM doctors;

-- https://www.airbnb.com/rooms/1049352288157516414
-- SELECT * FROM rooms
-- WHERE id = 1049352288157516414;

-- https://github.com/dmbf29
-- SELECT * FROM users
-- WHERE username = 'dmbf29';

-- SELECT * FROM sites
-- WHERE title LIKE '%whatever searched for%'
