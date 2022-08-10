---Question1
SELECT count (*)
FROM data_analyst_jobs;
---ANSWER: 1793

---Question2
SELECT *
FROM data_analyst_jobs
LIMIT 10;
---ANSWER: ExxonMobile

---Question3a
SELECT title, location
FROM data_analyst_jobs
WHERE location = 'TN';
---ANSWER: 21

---Question3b
SELECT title, location
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
---ANSWER: 27

---Question4
SELECT title
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;
----ANSWER: 3

---Question5
SELECT title
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;
---ANSWER: 151

---Question7 --Question6 is after 8
SELECT DISTINCT title
FROM data_analyst_jobs;
--- ANSWER: 881

---Question8
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE location = 'CA';
---ANSWER: 230

---Question6
SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating DESC;
---ANSWER: NE

---Question9
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company;
---ANSWER: 40

---Question10--updated to include all 6 companies
SELECT company, ROUND(AVG(star_rating) ,2)AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC; 
---ANSWER: Unilever, General Motors, Nike, American Express, Microsoft, Kaiser Permanente

---Question11
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE UPPER(title) LIKE '%ANALYST%';
---ANSWER: 774

---Question12
SELECT *
FROM data_analyst_jobs
WHERE UPPER(title) NOT LIKE '%ANALYST%'
AND UPPER(title) NOT LIKE '%ANALYTICS%';
---ANSWER: 4, Tableau


---Bonus
SELECT domain, COUNT(title)
FROM data_analyst_jobs
WHERE skill LIKE'%SQL%'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY COUNT(title) DESC;
---ANSWER: Interenet and Software (62), Banks and Financial Services (61), Consulting and Business Services (57), Health Care (52)



