CREATE TABLE Customers_Bank(
customer_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
date_of_birth DATE,
address VARCHAR(40),
phone_number VARCHAR(15) 
);

INSERT INTO Customers_Bank (customer_id, first_name, last_name, date_of_birth, address, phone_number) 
VALUES 

(1, 'John', 'Smith', '1985-06-15', '123 Elm St, Springfield, IL', '555-123-4567'),
(2, 'Sarah', 'Johnson', '1992-04-22', '456 Oak Rd, Denver, CO', '555-234-5678'),
(3, 'Michael', 'Brown', '1978-11-05', '789 Pine Ln, Orlando, FL', '555-345-6789'),
(4, 'Emily', 'Davis', '1990-08-19', '101 Maple Ave, Chicago, IL', '555-456-7890'),
(5, 'David', 'Wilson', '1982-02-11', '202 Birch St, Atlanta, GA', '555-567-8901'),
(6, 'Jessica', 'Martinez', '1987-01-30', '303 Cedar Blvd, Dallas, TX', '555-678-9012'),
(7, 'Chris', 'Taylor', '1995-12-10', '404 Walnut Dr, Austin, TX', '555-789-0123'),
(8, 'Laura', 'Anderson', '1980-07-23', '505 Redwood Ln, Los Angeles, CA', '555-890-1234'),
(9, 'Daniel', 'Thomas', '1993-03-18', '606 Ash St, New York, NY', '555-901-2345'),
(10, 'Rebecca', 'Jackson', '1986-09-05', '707 Birchwood Rd, Boston, MA', '555-012-3456'),
(11, 'James', 'White', '1991-12-17', '808 Willow Ave, San Francisco, CA', '555-123-4567'),
(12, 'Megan', 'Harris', '1983-06-30', '909 Oak Hill, Seattle, WA', '555-234-5678'),
(13, 'Ryan', 'Clark', '1994-05-02', '101 Pinecrest Dr, Phoenix, AZ', '555-345-6789'),
(14, 'Olivia', 'Lewis', '1989-10-14', '202 Hillside Rd, Portland, OR', '555-456-7890'),
(15, 'William', 'Robinson', '1976-12-21', '303 Valley Ln, Miami, FL', '555-567-8901');

CREATE TABLE Account_Bank (
account_id INT PRIMARY KEY,
account_type VARCHAR(15),
balance DECIMAL,
opening_date DATE,
customer_id INT

FOREIGN KEY (customer_id) REFERENCES Customers_Bank(customer_id) 
);

INSERT INTO Account_Bank (account_id, account_type, balance, opening_date, customer_id) 
VALUES 

(1, 'Savings', 1500.50, '2023-01-15', 1),  -- John Smith
(2, 'Checking', 2300.75, '2022-05-30', 1), -- John Smith
(3, 'Savings', 3200.20, '2023-03-22', 2),  -- Sarah Johnson
(4, 'Checking', 4500.30, '2021-09-10', 2), -- Sarah Johnson
(5, 'Checking', 1000.00, '2020-06-25', 3), -- Michael Brown
(6, 'Savings', 5000.00, '2023-07-04', 3),  -- Michael Brown
(7, 'Savings', 1200.40, '2022-11-18', 4),  -- Emily Davis
(8, 'Checking', 2750.60, '2021-12-15', 4), -- Emily Davis
(9, 'Checking', 900.00, '2023-04-01', 5),  -- David Wilson
(10, 'Savings', 7200.80, '2022-02-20', 5), -- David Wilson
(11, 'Checking', 1800.60, '2023-03-10', 6), -- Jessica Martinez
(12, 'Savings', 3800.25, '2021-08-07', 6), -- Jessica Martinez
(13, 'Savings', 2500.00, '2022-12-01', 7), -- Chris Taylor
(14, 'Checking', 5500.45, '2021-07-13', 7), -- Chris Taylor
(15, 'Checking', 3000.00, '2023-01-25', 8); --Laura Anderson

CREATE TABLE Transactions_Bank(
transaction_id INT PRIMARY KEY, 
transaction_date DATE, 
transaction_type VARCHAR(15),
amount DECIMAL, 
description VARCHAR(20),
account_id INT

FOREIGN KEY (account_id) REFERENCES Account_Bank (account_id)
);

INSERT INTO Transactions_Bank (transaction_id, transaction_date, transaction_type, amount, description, account_id)
VALUES 
(1, '2023-01-20', 'Deposit', 500.00, 'Monthly Deposit', 1),   -- John Smith, Savings
(2, '2023-01-22', 'Withdrawal', 200.00, 'ATM Withdrawal', 1),  -- John Smith, Savings
(3, '2023-02-10', 'Deposit', 1000.00, 'Salary Payment', 2),    -- John Smith, Checking
(4, '2023-02-15', 'Withdrawal', 150.00, 'Groceries', 2),       -- John Smith, Checking
(5, '2023-03-05', 'Deposit', 3000.00, 'Tax Refund', 3),        -- Sarah Johnson, Savings
(6, '2023-03-10', 'Withdrawal', 500.00, 'Rent Payment', 3),     -- Sarah Johnson, Savings
(7, '2023-04-01', 'Deposit', 800.00, 'Salary', 4),             -- Emily Davis, Checking
(8, '2023-04-03', 'Withdrawal', 100.00, 'Utilities', 4),       -- Emily Davis, Checking
(9, '2023-05-01', 'Deposit', 250.00, 'Bonus', 5),              -- David Wilson, Checking
(10, '2023-05-02', 'Withdrawal', 100.00, 'Dining Out', 5),     -- David Wilson, Checking
(11, '2023-06-10', 'Deposit', 1500.00, 'Inheritance', 6),      -- Jessica Martinez, Savings
(12, '2023-06-12', 'Withdrawal', 200.00, 'Travel Expenses', 6), -- Jessica Martinez, Savings
(13, '2023-07-01', 'Deposit', 200.00, 'Transfer from Friend', 7), -- Chris Taylor, Checking
(14, '2023-07-05', 'Withdrawal', 50.00, 'Coffee Shop', 7),     -- Chris Taylor, Checking
(15, '2023-08-01', 'Deposit', 400.00, 'Salary', 8);            -- Laura Anderson, Checking

--CREATE VIEWS 

--CustomerAccounts: Display customer information alongside their accounts.
--Include CustomerID, FirstName, LastName, AccountType, Balance.


CREATE VIEW customer_accounts_data_from_bank AS ( 
	SELECT cb.customer_id, cb.first_name, cb.last_name, ab.account_type, ab.balance
	FROM Customers_Bank AS cb
	INNER JOIN Account_Bank AS ab
	ON cb.customer_id = ab.customer_id
	);

SELECT * FROM customer_accounts_data_from_bank;

--HighBalanceAccounts: Display accounts with a balance greater than a specified amount (e.g., $10,000). 
--Include AccountID, CustomerID, AccountType, and Balance.

CREATE VIEW high_balance_accounts AS (
	SELECT account_id, customer_id, account_type, balance
	FROM Account_Bank 
	WHERE balance > 5000
);

SELECT * FROM high_balance_accounts;

--RecentTransactions: Display transactions from the past month. 
--Include TransactionID, AccountID, TransactionDate, TransactionType, Amount.

CREATE VIEW recent_transactions AS (
	SELECT transaction_id, account_id, transaction_date, transaction_type, amount 
	FROM Transactions_Bank 
	WHERE transaction_date > = '2023-03-05'
);

SELECT * FROM recent_transactions;

------------------------------------------------------------------------------------------
--CREATE PROCEDURES 

--Procedure 1:
--AddTransaction:
--Parameters: AccountID, TransactionType, Amount, Description.
--Inserts a new transaction record into the Transactions table and updates the account balance in 
--Accounts based on the transaction type (add for deposits, subtract for withdrawals).


CREATE PROCEDURE AddTransaction
	@TransactionId INT, 
	@AccountId INT,
	@TransactionType VARCHAR(20),
	@Amount DECIMAL,
	@Description VARCHAR(100)
	AS
	BEGIN

	INSERT INTO Transactions_Bank (transaction_id, account_id, transaction_type, amount, description)
	VALUES(@TransactionId, @AccountId, @TransactionType, @Amount, @Description);

	END; 

	EXEC AddTransaction
	@TransactionId = 16,
	@AccountId = 8,
	@TransactionType = 'Withdrawal', 
	@Amount = 100,
	@Description = 'Salary';

	SELECT * FROM Transactions_Bank;

CREATE PROCEDURE UpdateAcountBalance
	@AccountId INT,
	@Balance DECIMAL,
	@AccountType VARCHAR 

	AS
	BEGIN 

	UPDATE Account_Bank
	SET balance = @Balance
	WHERE account_type = @AccountType 

	END; 

	EXEC UpdateAcountBalance
	@AccountId = 2,
	@Balance = 5000.00, 
	@AccountType = 'Savings'; 

	SELECT * FROM Account_Bank; 
	
	



	--Procedure 2:
--GetCustomerAccountBalance:
--Parameter: CustomerID.
--Returns a list of accounts with the current balance for the specified customer, displaying AccountID, AccountType, and Balance.

CREATE PROCEDURE GetCustomerAccountBalance
	@CustomerId INT
	
	AS
	BEGIN 

	SELECT ab.account_id, ab.account_type, ab.balance
	FROM Account_Bank AS ab
	INNER JOIN Customers_Bank AS cb
	ON ab.customer_id = cb.customer_id
	WHERE cb.customer_id = @CustomerId;

	END; 

	EXEC GetCustomerAccountBalance
	@CustomerId = 5; 


--Procedure 3:
--FilterTransactionsByType:
--Parameter: TransactionType.
--Returns a list of transactions of the specified type 
--(e.g., only deposits or withdrawals), displaying TransactionID, AccountID, TransactionDate, Amount, and Description.

CREATE PROCEDURE FilterTransactionsByType 
	@TransactionType VARCHAR

	AS
	BEGIN 

	SELECT transaction_id, account_id, transaction_date, amount, description 
	FROM Transactions_Bank
	WHERE transaction_type = @TransactionType; 

	END; 

	EXEC FilterTransactionsByType
	@TransactionType = 'Withdrawal'; 

	

	SELECT * FROM Transactions_Bank;

	


