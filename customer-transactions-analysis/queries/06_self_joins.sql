-- 06a: Customers in the same city
SELECT 
    c1.customer_id AS customer1_id,
    c1.name AS customer1_name,
    c2.customer_id AS customer2_id,
    c2.name AS customer2_name,
    c1.city
FROM 
    customers c1
INNER JOIN customers c2 
ON c1.city = c2.city AND c1.customer_id < c2.customer_id
ORDER BY c1.city;

-- 06b: Accounts with the same balance
SELECT 
    a1.account_id AS account1_id,
    a2.account_id AS account2_id,
    a1.balance
FROM 
    accounts a1
INNER JOIN accounts a2 
ON a1.balance = a2.balance AND a1.account_id < a2.account_id
ORDER BY a1.balance DESC;
