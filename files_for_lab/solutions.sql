#Query 1

SELECT client_id 
FROM client 
WHERE district_id = 1 
ORDER BY client_id 
LIMIT 5;

#Query 2

SELECT client_id 
FROM client 
WHERE district_id = 72 
ORDER BY client_id DESC 
LIMIT 1;

#Query 3

SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;

#Query 4

SELECT DISTINCT status
FROM loan
ORDER BY status;

#Query 5

select loan_id
from loan
order by payments desc
limit 1;

#Query 6

select account_id, amount
from loan
order by account_id
limit 5;

#Query 7

select account_id
from loan
where duration = 60
ORDER BY amount ASC 
LIMIT 5;

#Query 8

SELECT DISTINCT k_symbol 
FROM `order` 
ORDER BY k_symbol;

#Query 9

select order_id
from `order`
where account_id = 34;

#Query 10

SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id;

#Query 11

SELECT amount
FROM `order`
WHERE account_to = 30067122;

#Query 12

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

#Query 13

SELECT district_id, COUNT(*) as client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

#Query 14

SELECT type, COUNT(*) as card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

#Query 15

SELECT account_id, SUM(amount) as total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

#Query 16

SELECT date, COUNT(*) as loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

#Query 17

SELECT date, duration, COUNT(*) as loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

#Query 18

SELECT account_id, type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY type, account_id
ORDER BY type;





