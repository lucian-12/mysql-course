# Populate the userinfo table
import time
sql = "INSERT INTO `userinfo` (`name`, `email`, `password`, `dob`, `address`, `city`, `state_id`, `zip`, `country_id`, `account_type`, `closest_airport`) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
param = ["John", "john.smith@email.com", "1234", "1986-02-14", "1795 Santiago de Compostela Way", "Austin", "1", "18743", "1", "customer account", "aut"]
state_id = 0
start_time = time.time()
for x in range(0, 1000000):
    if (x % 100 == 0):
        state_id += 1
    result = session.run_sql(sql, (param[0] + str(state_id), param[1] + str(x), param[2], param[3], param[4], param[5], state_id, param[7], param[8], param[9], param[10],))
total_time = time.time() - start_time
print("- Total time: %s seconds -" % total_time)

# The benchmark test
import time
query = ("SELECT count(*) FROM userinfo WHERE `name` = ? AND `state_id` = ?", ['John100', 100])
nb_of_requests = 300
start_time = time.time()
for x in range(0, nb_of_requests):
    sql = query[0]
    param = query[1]
    result = session.run_sql(sql, (param[0],param[1],))
total_time = time.time() - start_time
qps = nb_of_requests / total_time
print("- Total time: %s seconds -" % total_time)
print("--- %s QPS ---" % qps)
