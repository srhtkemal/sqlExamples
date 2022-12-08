--1 test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--2 Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--3 Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--4 Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--1
CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);

--2
INSERT INTO employee (id, name, birthday, email)
VALUES
  (1, 'Jeff Winger', '1985-01-01', 'jeffwinger@example.com'),
  (2, 'Britta Perry', '1990-02-14', 'perry.britta@mail.com'),
  (3, 'Troy Barnes', '1995-03-21', 'troybrns@example.com'),
  (4, 'Craig Pelton', '1980-04-28', 'craigpelton@example.com'),
  
--  ...
  (50, 'Ben Chang', '1995-03-20', 'changnesia@mail.com');

--3
UPDATE employee SET name = 'Abed Nadir' WHERE id = 1;
UPDATE employee SET birthday = '1985-01-02' WHERE name = 'Britta Perry';
UPDATE employee SET email = 'annieedison@example.com' WHERE birthday = '1990-02-14';
UPDATE employee SET name = 'Pierce Hawthrone', birthday = '1995-03-21', email = 'pierce@mail.com' WHERE id = 50;
UPDATE employee SET name = 'Shirley Bennett', birthday = '1985-01-01', email = 'sbennett@example.com' WHERE id = 1;

--4
DELETE FROM employee WHERE id = 1;
DELETE FROM employee WHERE name = 'Britta Perry';
DELETE FROM employee WHERE birthday = '1995-03-21';
DELETE FROM employee WHERE email = 'craigpelton@example.com';
DELETE FROM employee WHERE id = 50;