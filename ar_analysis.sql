CREATE TABLE ar_ibm (
    countryCode VARCHAR(50),
    customerID VARCHAR(50),
    PaperlessDate VARCHAR(50),
    invoiceNumber VARCHAR(50),
    InvoiceDate VARCHAR(50),
    DueDate VARCHAR(50),
    InvoiceAmount NUMERIC,
    Disputed VARCHAR(50),
    SettledDate VARCHAR(50),
    PaperlessBill VARCHAR(50),
    DaysToSettle NUMERIC,
    DaysLate NUMERIC
);

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

select * from ar_ibm limit 10;

SELECT COUNT(*) FROM ar_ibm;

SELECT 
    COUNT(*) - COUNT(countryCode) AS missing_countryCode,
    COUNT(*) - COUNT(customerID) AS missing_customerID,
    COUNT(*) - COUNT(InvoiceAmount) AS missing_InvoiceAmount,
    COUNT(*) - COUNT(DaysLate) AS missing_DaysLate,
    COUNT(*) - COUNT(DaysToSettle) AS missing_DaysToSettle
FROM ar_ibm;

SELECT invoiceNumber, COUNT(*) 
FROM ar_ibm 
GROUP BY invoiceNumber 
HAVING COUNT(*) > 1;

SELECT DISTINCT countryCode 
FROM ar_ibm 
ORDER BY countryCode;

SELECT COUNT(*) 
FROM ar_ibm 
WHERE InvoiceAmount <= 0;

SELECT COUNT(*) 
FROM ar_ibm 
WHERE DaysLate < 0;

select customerID, avg(DaysLate) as "avg_days_late"
from ar_ibm
group by customerID
order by avg(DaysLate) desc
limit 10;

select countryCode, sum(InvoiceAmount) as "Invoice Amount"
from ar_ibm
group by countryCode
order by sum(InvoiceAmount)desc
limit 10;

select countryCode, count(invoiceNumber) as "Number of Invoices", avg(DaysLate) as "Average Days Late", sum(InvoiceAmount) as "Total Amount Owed"
from ar_ibm
group by countryCode
order by "Average Days Late" desc;

select avg(DaysLate) as "Average Days Late" , sum(InvoiceAmount) as "Total Amount Owed"
from ar_ibm
WHERE countryCode = '818';

select paperlessbill , avg(DaysLate) as "Average Days Late", count(invoiceNumber)
from ar_ibm
group by paperlessbill;

sELECT 
    CASE 
        WHEN InvoiceAmount < 1000 THEN 'Small'
        WHEN InvoiceAmount BETWEEN 1000 AND 5000 THEN 'Medium'
        ELSE 'Large'
    END AS invoice_size,
    AVG(DaysLate) AS "Average Days Late",
    COUNT(invoiceNumber) AS "Number of Invoices"
FROM ar_ibm
GROUP BY CASE 
        WHEN InvoiceAmount < 1000 THEN 'Small'
        WHEN InvoiceAmount BETWEEN 1000 AND 5000 THEN 'Medium'
        ELSE 'Large'
    END
ORDER BY "Average Days Late" DESC;

select customerID, count(InvoiceAmount), avg(DaysLate), Max(DaysLate)
FROM ar_ibm
group by customerID
HAVING COUNT(invoiceNumber) > 5
oRDER BY COUNT(invoiceNumber)DESC;
