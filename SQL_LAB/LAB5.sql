-- From the table DEPOSIT perform the following queries:
USE CSE_3B_422

-- Part – A:

-- 1. Add column state varchar(20).
SELECT * FROM DEPOSIT  
ALTER TABLE DEPOSIT ADD STATE VARCHAR(20);


-- 2. Add two more columns city varchar(20) and pincode int.
SELECT * FROM DEPOSIT 
ALTER TABLE DEPOSIT ADD CITY VARCHAR(20),PINCODE INT;



-- 3. Change the size of cname column from varchar(50) to varchar(35).
SELECT * FROM DEPOSIT   
ALTER TABLE DEPOSIT ALTER COLUMN cname VARCHAR(35);

alter table DEPOSIT
drop column state

-- 4. Change the data type of amount from decimal to int.
SELECT * FROM DEPOSIT
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT;


-- 5. Delete column city from the DEPOSIT table.
SELECT * FROM DEPOSIT
ALTER TABLE DEPOSIT
DROP COLUMN CITY


-- 6. Rename column actno to ano.
SELECT * FROM DEPOSIT
EXEC sp_rename 'DEPOSIT.ACTNO','ANO','COLUMN';


-- 7. Rename column bname to branch_name.
SELECT * FROM DEPOSIT
EXEC sp_rename 'DEPOSIT.BNAME','BRANCH_NAME','COLUMN';


-- 8. Rename table DEPOSIT to DEPOSIT_DETAIL.
SELECT * FROM DEPOSIT;
EXEC sp_rename 'DEPOSIT','DEPOSIT_DETAIL';
--AFTER RENAMING TABLE
SELECT * FROM DEPOSIT_DETAIL 


-- 9. Add column ifsc_code varchar(15).
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL ADD IFSC_CODE VARCHAR(50);


-- 10. Change the size of bname column from varchar(50) to varchar(30).
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL ALTER COLUMN BRANCH_NAME VARCHAR(30);


-- Part – B:
-- 11. Rename column adate to aopendate.
SELECT * FROM DEPOSIT_DETAIL
EXEC sp_rename 'DEPOSIT_DETAIL.ADATE','AOPENDATE','COLUMN';


-- 12. Delete column aopendate from DEPOSIT_DETAIL table.
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;


-- 13. Rename column cname to customer_name.
SELECT * FROM DEPOSIT_DETAIL
EXEC sp_rename 'DEPOSIT_DETAIL.CNAME','CUSTOMER_NAME';


-- 14. Add column country varchar(20).
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL ADD COUNTRY VARCHAR(50);


-- 15. Add column account_type varchar(15).
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL ADD ACCOUNT_TYPE VARCHAR(15);


-- Part – C:


-- 16. Change data type of pincode from int to bigint.
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL ALTER COLUMN PINCODE BIGINT;


-- 17. Delete column account_type.
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN ACCOUNT_TYPE;


-- 18. Rename column amount to balance.
SELECT * FROM DEPOSIT_DETAIL
EXEC sp_rename 'DEPOSIT_DETAIL.AMOUNT','BALANCE';


-- 19. Add column status varchar(10).
SELECT * FROM DEPOSIT_DETAIL
ALTER TABLE DEPOSIT_DETAIL ADD STATUS VARCHAR(10);


-- 20. Change table name deposit_detail to bank_deposit.
SELECT * FROM DEPOSIT;
EXEC sp_rename 'DEPOSIT_DETAIL','BANK_DEPOSIT';
--after renaming table name 
SELECT * FROM BANK_DEPOSIT