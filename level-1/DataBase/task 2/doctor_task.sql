CREATE TABLE Doctor (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    address VARCHAR(200)
);

INSERT INTO Doctor (id, name, salary, address) VALUES
(1, 'Ahmed', 5000, 'Cairo'),
(2, 'Mohamed', 6000, 'Giza'),
(3, 'Ali', 7000, 'Alexandria'),
(4, 'Omar', 8000, 'Mansoura'),
(5, 'Tarek', 9000, 'Tanta'),
(6, 'Hassan', 5500, 'Suez'),
(7, 'Hussein', 6500, 'Port Said'),
(8, 'Ibrahim', 7500, 'Luxor'),
(9, 'Mahmoud', 8500, 'Aswan'),
(10, 'Youssef', 9500, 'Asyut');

UPDATE Doctor SET salary = 20000 WHERE id = 3;

DELETE FROM Doctor WHERE id = 9;

SELECT name || ' - ' || CAST(salary AS VARCHAR(20)) AS Name_And_Salary FROM Doctor;

SELECT id, name, salary * 2 AS Doubled_Salary, address FROM Doctor;

SELECT * FROM Doctor WHERE salary IN (1000, 2000, 3000);

ALTER TABLE Doctor RENAME TO PRD_DOCTOR;