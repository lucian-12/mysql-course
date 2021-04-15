# This script will  execute the insert statement 100k times. The val is also an autoincremented value from 1 to 100k.
queries = [
    ("INSERT INTO `test_estimates` (`val`, `val2`) values (?, ?)",)
]
for x in range(0, 100000):
    for query in queries:
        sql = query[0]
        result = session.run_sql(sql, (x, x,))
