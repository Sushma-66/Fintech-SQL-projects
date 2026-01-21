-- 07a: Top 2 merchants by transaction amount per city
SELECT *
FROM (
    SELECT 
        c.city,
        m.name AS merchant_name,
        SUM(t.amount) AS total_amount,
        ROW_NUMBER() OVER (PARTITION BY c.city ORDER BY SUM(t.amount) DESC) AS rn
    FROM 
        customers c
    JOIN accounts a ON c.customer_id = a.customer_id
    JOIN transactions t ON a.account_id = t.account_id
    JOIN merchants m ON t.merchant_id = m.merchant_id
    GROUP BY c.city, m.name
) sub
WHERE rn <= 2
ORDER BY city, total_amount DESC;

-- 07b: Customers who haven't transacted in last 30 days
SELECT 
    c.customer_id,
    c.name AS customer_name,
    MAX(t.transaction_date) AS last_transaction
FROM 
    customers c
LEFT JOIN accounts a ON c.customer_id = a.customer_id
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name
HAVING MAX(t.transaction_date) < CURRENT_DATE - INTERVAL '30 days'
    OR MAX(t.transaction_date) IS NULL
ORDER BY last_transaction;
