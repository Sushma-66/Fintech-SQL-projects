-- 02: LEFT JOIN
-- Show all customers and their transactions, even if no transactions exist

SELECT 
    c.customer_id,
    c.name AS customer_name,
    a.account_id,
    t.transaction_id,
    t.amount,
    t.transaction_date
FROM 
    customers c
LEFT JOIN accounts a ON c.customer_id = a.customer_id
LEFT JOIN transactions t ON a.account_id = t.account_id
ORDER BY 
    c.customer_id, t.transaction_id;
