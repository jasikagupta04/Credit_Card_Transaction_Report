-- 1. Create a database 
CREATE DATABASE ccdb;

-- 2. Create cc_detail table

CREATE TABLE cc_detail (
    Client_Num int,
    Card_Category varchar(20),
    Annual_Fees int,
    Activation_30_Days int,
    Customer_Acq_Cost int,
    Week_Start_Date date,
    Week_Num varchar(20),
    Qtr varchar(10),
    current_year int,
    Credit_Limit decimal(10,2),
    Total_Revolving_Bal int,
    Total_Trans_Amt int,
    Total_Trans_Ct int,
    Avg_Utilization_Ratio decimal(10,3),
    Use_Chip varchar(10),
    Exp_Type varchar(50),
    Interest_Earned decimal(10,3),
    Delinquent_Acc varchar(5)
);


-- 3. Create cc_detail table

CREATE TABLE cust_detail (
    Client_Num int,
    Customer_Age int,
    Gender varchar(5),
    Dependent_Count int,
    Education_Level varchar(50),
    Marital_Status varchar(20),
    State_cd varchar(50),
    Zipcode varchar(20),
    Car_Owner varchar(5),
    House_Owner varchar(5),
    Personal_Loan varchar(5),
    Contact varchar(50),
    Customer_Job varchar(50),
    Income int,
    Cust_Satisfaction_Score int
);


-- 4. Import csv data into SQL 
-- copy cc_detail table

COPY cc_detail
FROM 'location.csv' 
DELIMITER ',' 
CSV HEADER;


-- copy cust_detail table

COPY cust_detail
FROM 'location.csv' 
DELIMITER ',' 
CSV HEADER;
