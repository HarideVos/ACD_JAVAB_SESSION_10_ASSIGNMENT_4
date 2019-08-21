-- Assignment 3

INSERT INTO `bank1012`.`Customer`
(`C_ID`,`CNAME`,`MNO`,`ADDRESS`,`CITY`,`DOB`)
VALUES
('C3','Raman',888950,'Marathali','bangalore','1987-08-15');

select CNAME from `bank1012`.Customer group by CNAME having (COUNT(*)>2) ;
select * from customer group by CNAME;
select * from customer order by CNAME;

-- Assignment 4

-- 2
-- The  HAVING clause is used in the SELECT statement to specify filter conditions for a group of rows or aggregates. the HAVING clause applies a filter condition to each group of rows
-- The MySQL ORDER BY clause is used to sort the records in your result set. The MySQL ORDER BY clause can be used without specifying the ASC or DESC modifier. When this attribute is omitted from the ORDER BY clause, the sort order is defaulted to ASC or ascending order.
-- The GROUP BY clause is a SQL command that is used to group rows that have the same values, summarizing data from the database.

-- 3
set foreign_key_checks = 0;
truncate table Customer;
ALTER TABLE Account RENAME TO Customer_Account;
drop table customer;
drop table customer_account;
