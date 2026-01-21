-- 05a: Total transaction amount per customer
SELECT 
    c.customer_id,
    c.name AS customer_name,
    SUM(t.amount) AS total_transactions
FROM 
    customers c
LEFT JOIN accounts a ON c.customer_id = a.customer_id
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name
ORDER BY total_transactions DESC;

-- 05b: Total revenue per merchant category
SELECT 
    m.category,
    SUM(t.amount) AS total_revenue
FROM 
    merchants m
LEFT JOIN transactions t ON m.merchant_id = t.merchant_id
GROUP BY m.category
ORDER BY total_revenue DESC;
