
---

## 🏗️ Tables Included

### 1. **Customer**
- Stores customer details.

| Column        | Type          | Constraints      |
|---------------|---------------|------------------|
| CustomerID    | INT           | Primary Key, Auto Increment |
| Name          | VARCHAR(100)  | NOT NULL         |
| Email         | VARCHAR(100)  | UNIQUE           |
| Phone         | VARCHAR(15)   |                  |
| DateOfBirth   | DATE          | *(Added later)*  |

---

### 2. **LoanType**
- Stores different loan categories and interest rates.

| Column        | Type          | Constraints      |
|---------------|---------------|------------------|
| LoanTypeID    | INT           | Primary Key, Auto Increment |
| LoanCategory  | VARCHAR(50)   | NOT NULL         |
| InterestRate  | DECIMAL(5,2)  | *(Altered to allow NULLs)* |

---

### 3. **Employee**
- Stores employee details managing loans.

| Column        | Type          | Constraints      |
|---------------|---------------|------------------|
| EmployeeID    | INT           | Primary Key, Auto Increment |
| Name          | VARCHAR(100)  | NOT NULL         |
| Email         | VARCHAR(100)  |                  |
| Role          | VARCHAR(50)   |                  |

---

## 📥 Data Operations Performed

### ✅ Data Insertion:

- **5 new customers** inserted (e.g., Karthik V, Divya S, Rajesh M, Sneha R, Vimal K).
- **5 new loan types** inserted, including one with **NULL InterestRate** (`Gold Loan`).
- **5 new employees** inserted (Sunil P, Pooja R, Manoj K, Ritika T, Anil S).

---

### ✅ Data Update:

- **Updated employee role**:
```sql
UPDATE Employee
SET Role = 'Senior Loan Manager'
WHERE EmployeeID = 3;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Customer
WHERE Name = 'rajesh m';
ALTER TABLE LoanType
MODIFY InterestRate DECIMAL(5,2) NULL;
INSERT INTO LoanType (LoanCategory, InterestRate)
VALUES ('Gold Loan', NULL);
SELECT * FROM LoanType
WHERE InterestRate IS NULL;
