-- 03: RIGHT JOIN
-- List all merchants and transactions made with them

SELECT 
    m.merchant_id,
    m.name AS merchant_name,
    m.category,
    t.transaction_id,
    t.amount,
    t.transaction_date
FROM 
    merchants m
RIGHT JOIN transactions t ON m.merchant_id = t.merchant_id
ORDER BY 
    m.merchant_id;
