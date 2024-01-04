create database RETAIL_SALES_DATA;
USE RETAIL_SALES_DATA;
CREATE TABLE Sales_Data_Transactions (
customer_id varchar(255),
trans_date varchar(255),
tran_amount int);

CREATE TABLE Sales_Data_Response (
customer_id varchar(255) PRIMARY KEY,
response int);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
fields terminated by ','
LINES terminated by '\n'
ignore 1 LINES;

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID='CS5295';

CREATE INDEX idx_id on Sales_Data_Transactions(CUSTOMER_ID);
EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID='CS5295';


