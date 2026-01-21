-- 01: INNER JOIN
-- List all customers with their accounts and balances

SELECT 
    c.customer_id,
    c.name AS customer_name,
    c.city,
    a.account_type,
    a.balance
FROM 
    customers c
INNER JOIN 
    accounts a ON c.customer_id = a.customer_id
ORDER BY 
    c.customer_id;

