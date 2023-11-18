SELECT products . name , COUNT (*)
FROM sales JOIN products USING ( productId )
WHERE sales . discount IS NOT NULL
GROUP BY products . name
ORDER BY COUNT (*) DESC