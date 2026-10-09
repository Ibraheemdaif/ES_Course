CREATE TABLE Manger (
    id NUMBER,
    name VARCHAR2(100),
    age NUMBER,
    birth_date DATE,
    address VARCHAR2(200)
);

ALTER TABLE Manger DROP COLUMN address;

ALTER TABLE Manger ADD (
    city_address VARCHAR2(100),
    street VARCHAR2(100)
);

ALTER TABLE Manger RENAME COLUMN name TO full_name;

ALTER TABLE Manger READ ONLY;

CREATE TABLE Owner (
    id NUMBER,
    name VARCHAR2(100),
    birth_date DATE
);

RENAME Manger TO Master;

DROP TABLE Master;

DROP TABLE Owner;
