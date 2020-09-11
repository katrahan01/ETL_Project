--Create a table in Postres for each CSV. Member and Transaction
CREATE TABLE member (
	state TEXT PRIMARY KEY,
	member_cnt TEXT
);

CREATE TABLE transaction (
	state TEXT PRIMARY KEY,
	txn_amt INT,
	txn_cnt INT
);

Select * from member*  

Select * from transaction*


Join the 2 tables by state in Postgres:

SELECT member.state, member.member_cnt, transaction.txn_amt, transaction.txn_cnt
FROM member
JOIN transaction
ON member.state = transaction.state;