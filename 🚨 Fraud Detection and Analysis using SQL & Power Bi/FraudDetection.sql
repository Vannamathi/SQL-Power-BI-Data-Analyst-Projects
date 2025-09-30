Use project;
select * from customers;
select * from fraudflags;
select * from transactions;

--                                                   FRAUD DETECTION ANALYST SYSTEM
/*
◆ DESCRIPTION:
• This project aims to simulate and analyze financial transactions to detect and prevent fraud 
using SQL databases and Power BI.
• The system contains structured tables to store customer details, transaction data, 
and fraud detection flags.
• The goal is to handle null values, execute SQL queries at basic, intermediate, and advanced levels, 
and visualize fraud-related insights using Power BI dashboards.

◆ ABOUT:
• Fraud Detection System refers to analytical platforms that track and monitor suspicious activities 
in banking, e-commerce, and online transactions.
• It helps organizations identify unusual patterns, detect fraudulent behavior, and reduce financial risks.
• Fraud analysis ensures better risk management, customer trust, and business security.

• In this project, I am going to create a Fraud Detection database system using MySQL and visualize results in Power BI.
• The goal is to design and manage the backend structure where:
   - Customers perform transactions,
   - Transactions are flagged for suspicious activities,
   - Fraud types and detection dates are recorded for analysis.

• I created three core tables:
   1. Customers – stores customer details like name, email, phone, country, and account creation date.
   2. Transactions – stores transaction details such as amount, date, merchant, transaction type, and status.
   3. FraudFlags – stores fraud detection details like fraud type, isFraud flag, and detection date.

• This project helps in understanding how fraud detection systems work in real-world industries such as banking, 
insurance, and e-commerce, using structured relational databases and business intelligence dashboards.
*/

SET SQL_SAFE_UPDATES = 0;

-- NULL HANDLING 
-- CUSTOMER TABLE
SELECT name, email  FROM customers WHERE email ='';
UPDATE Customers SET EMAIL = NULL WHERE TRIM(email) ='';
SELECT name, email FROM customers WHERE email IS NULL;

UPDATE Customers
SET Email = 'Unknown'
WHERE Email IS NULL;

-- FRAUD FLAGS TABLE
SELECT TransactionID, Fraudtype, DetectionDate FROM fraudflags
WHERE FraudType='' OR DetectionDate ='';

UPDATE fraudflags SET Fraudtype = NULL WHERE TRIM(Fraudtype) = '';
UPDATE fraudflags SET DetectionDate = NULL WHERE TRIM(DetectionDate)='';

UPDATE fraudflags
SET FraudType = 'No Fraud',
    DetectionDate = '1900-01-01'
WHERE IsFraud = 0;

-- Total Number of Customer
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- Customers by country
SELECT Country, COUNT(*) AS CustomerCount
FROM customers
GROUP BY Country;

-- Total Transaction count
SELECT COUNT(*) AS TotalTransactions 
FROM Transactions;

-- Total Transactions amount by type
SELECT TransactionType, SUM(Amount) AS TotalAmount
FROM Transactions
GROUP BY TransactionType;

-- Transactions by status(Success/Failed)
SELECT status, COUNT(*) AS count 
FROM Transactions
GROUP BY Status;

-- Average Transaction amount
SELECT AVG(Amount) AS AvgAmount
FROM Transactions;

-- Fraud Transaction Count
SELECT COUNT(*) AS FraudCount
FROM fraudFlags;

-- Top 5 customers by transaction amount
SELECT c.name, SUM(t.Amount) AS TotalSpent
FROM customers c
JOIN Transactions t ON c.customerID = t.CustomerID
GROUP BY c.name
ORDER BY TotalSpent DESC
LIMIT 5;

-- Monthly Transaction totals
SELECT DATE_FORMAT(TransactionDate, '%Y-%M') AS Month, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY month
ORDER BY Month;

-- Transactions by Merchants
SELECT merchant, SUM(Amount) AS TotalAmount
FROM Transactions
GROUP BY merchant;

-- Average transactions amount per customer
SELECT c.name, AVG(Amount) AS AvgSpent
FROM customers c
JOIN transactions t ON c.customerID = t.CustomerID
GROUP BY c.Name;

-- Failed Transactions by merchant
SELECT Merchant, COUNT(*) AS FailedCount
FROM Transactions 
WHERE status = 'Failed'
GROUP BY Merchant;

-- Country-wise fraud transactions
SELECT c.country, COUNT(f.TransactionID) AS FraudCount
FROM customers c
JOIN Transactions t ON c.customerID = t.customerID
JOIN FraudFlags f ON t.transactionID = f.TransactionID
WHERE f.IsFraud = 1
GROUP BY c.country;

-- Transaction type distribution by status
SELECT TransactionType, Status, COUNT(*) AS Count
FROM Transactions
GROUP BY TransactionType, Status;

-- Fraud rate by transaction type
SELECT t.TransactionType,
		(SUM(CASE WHEN f.IsFraud = 1 THEN 1
             ELSE 0
             END) * 100.0) / COUNT(t.TransactionID) AS FraudRatePercent
FROM Transactions t
LEFT JOIN FraudFlags f ON t.TransactionID = f.TransactionID
GROUP BY t.TransactionType;

-- High Value Customers: Fraud vs Non-Fraud
SELECT c.Name,
		SUM(CASE WHEN f.IsFraud = 1 THEN t.Amount ELSE 0 END) AS FraudAmount,
        SUM(CASE WHEN f.IsFraud = 0 THEN t.Amount ELSE 0 END) AS NonFraudAmount
FROM customers c
JOIN Transactions t ON c.customerID = t.customerID
JOIN FraudFlags f ON t.transactionID = f.TransactionID
GROUP BY c.Name
ORDER BY ( FraudAmount + NonFraudAmount) DESC
LIMIT 10;

-- Merchant-wise fraud detection trend
SELECT Merchant, 
	   DATE_FORMAT(f.DetectionDate, '%Y-%M') AS Month, 
	   COUNT(f.TransactionID) AS FraudCount
FROM Transactions t
JOIN FraudFlags f ON t.transactionID = f.TransactionID
WHERE f.IsFraud = 1
GROUP BY t.Merchant, month
Order BY month, t.Merchant;

-- Fraud Type distribution
SELECT FraudType, COUNT(*) AS Count
FROM FraudFlags
GROUP BY FraudType;

-- Top Customers with most fraud transactions
SELECT c.Name,
	   COUNT(f.transactionID) AS FraudCount
FROM customers c
JOIN Transactions t ON c.customerID = t.customerID
JOIN FraudFlags f ON t.TransactionID = f.TransactionID
WHERE f.IsFraud = 1
GROUP BY c.Name
ORDER  BY FraudCount DESC
LIMIT 5;

-- Fraud detection efficiency (detection delay)
SELECT f.FraudType,
	   AVG(DATEDIFF(f.detectiondate, t.TransactionDate)) AS AvgDetectionDelayDays
FROM FraudFlags f
JOIN Transactions t ON f.TransactionID = t.TransactionID
GROUP BY f.fraudtype;