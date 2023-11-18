SELECT c_name, o_orderkey, o_orderdate, n_name FROM nation
LEFT JOIN (
    SELECT c_name, o_orderkey, o_orderdate, c_nationkey FROM customer
    LEFT JOIN orders ON c_custkey = o_custkey
    WHERE o_orderstatus = 'F'
    ORDER BY c_name, o_orderkey
) ON n_nationkey = c_nationkey

