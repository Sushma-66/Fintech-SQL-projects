# Project -1 Fintech Customer & Transactions Analysis

## Overview
This project simulates a **real-world fintech analytics scenario**. The goal is to analyze **customers, their accounts, and transaction behavior** using SQL joins and aggregation.  

It demonstrates the ability to:  
- Work with multiple related tables  
- Use **INNER, LEFT, RIGHT, and FULL OUTER joins**  
- Perform aggregations (`SUM`, `COUNT`, `GROUP BY`)  
- Write **self-joins and advanced queries** for analytics insights  

This project is ideal for beginners-to-intermediate SQL learners and serves as a portfolio piece for **finance or fintech analytics roles**.

---

## Tables

### 1. Customers
| customer_id | name          | email             | city       | signup_date |
|------------|---------------|-----------------|-----------|------------|
| 101        | Alice Smith   | alice@mail.com   | London    | 2023-01-15 |
| 102        | Bob Johnson   | bob@mail.com     | Birmingham| 2023-02-20 |
| 103        | Carol Lee     | carol@mail.com   | Manchester| 2023-03-05 |

### 2. Accounts
| account_id | customer_id | account_type | balance |
|-----------|-------------|-------------|---------|
| 201       | 101         | Savings     | 5000    |
| 202       | 101         | Checking    | 1200    |
| 203       | 102         | Savings     | 3000    |
| 204       | 103         | Checking    | 2500    |

### 3. Transactions
| transaction_id | account_id | merchant_id | amount | transaction_date |
|----------------|------------|------------|--------|----------------|
| 301            | 201        | 401        | 50     | 2023-05-01     |
| 302            | 202        | 402        | 120    | 2023-05-03     |
| 303            | 203        | 403        | 200    | 2023-05-02     |
| 304            | 204        | 401        | 75     | 2023-05-04     |

### 4. Merchants
| merchant_id | name       | category    |
|------------|-----------|------------|
| 401        | Amazon    | E-commerce |
| 402        | Starbucks | Food       |
| 403        | Uber      | Transport  |

---

## Objectives / Queries

The project covers **SQL joins, aggregations, and analysis**. Example tasks include:

1. **INNER JOIN**  
   - List all customers with their accounts and balances.

2. **LEFT JOIN**  
   - Show all customers and their transactions, even if no transactions exist.

3. **RIGHT JOIN**  
   - List all merchants and any transactions made with them.

4. **FULL OUTER JOIN**  
   - Combine customers and merchants to see missing transactions.

5. **Aggregations**  
   - Total transaction amount per customer.  
   - Total revenue per merchant category.

6. **Self-joins**  
   - Find customers in the same city.  
   - Find accounts with the same balance.

7. **Advanced / Bonus Queries**  
   - Top 2 merchants by transaction amount per city.  
   - Customers who haven’t transacted in the last 30 days.

---

## Skills Demonstrated
- Multi-table **joins** (INNER, LEFT, RIGHT, FULL OUTER)  
- **Aggregations and GROUP BY**  
- **Self-joins** for comparison tasks  
- Working with **fintech-related data**: customers, accounts, transactions, merchants  
- Real-world analytics thinking  

---

## How to Run
1. Clone this repository.  
2. Create SQL tables using the scripts provided in the `data/` folder.  
3. Execute SQL queries in `queries/` folder in any SQL engine (MySQL, PostgreSQL, or SQLite).  
4. Review query outputs in the `results/` folder or directly in your SQL engine.  

---

## Future Improvements
- Add larger datasets to simulate real fintech data volume.  
- Include date-based analytics (monthly spending trends, churn prediction).  
- Create **visual dashboards** using Python (Pandas + Matplotlib) or Power BI.  

---

## Author
Sushma Bilidale  
Github: https://github.com/Sushma-66

