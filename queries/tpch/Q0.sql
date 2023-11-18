SELECT c_name, o_orderkey, o_orderdate FROM customer
LEFT JOIN orders ON c_custkey = o_custkey
WHERE o_orderstatus = 'F'
ORDER BY c_name, o_orderkey
