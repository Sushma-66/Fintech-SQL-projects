-- 04: FULL OUTER JOIN
-- Combine customers and merchants to see missing transactions

SELECT 
    c.customer_id,
    c.name AS customer_name,
    m.merchant_id,
    m.name AS merchant_name,
    t.transaction_id,
    t.amount
FROM 
    customers c
FULL OUTER JOIN accounts a ON c.customer_id = a.customer_id
FULL OUTER JOIN transactions t ON a.account_id = t.account_id
FULL OUTER JOIN merchants m ON t.merchant_id = m.merchant_id
ORDER BY 
    c.customer_id, m.merchant_id;
