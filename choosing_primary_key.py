
# Insert required number of rows and measured the time for execution
# Insert into userinfo
import time
queries = [
    ("INSERT INTO `userinfo` (`name`, `email`, `password`, `dob`, `address`, `city`, `state_id`, `zip`, `country_id`, `account_type`, `closest_airport`) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", ["John Smith", "john.smith@email.com", "1234", "1986-02-14", "1795 Santiago de Compostela Way", "Austin", "1", "18743", "1", "customer account", "aut"])
]
import time
start_time = time.time()
for x in range(0, 1000000):
    for query in queries:
        sql = query[0]
        param = query[1]
        result = session.run_sql(sql, (param[0], param[1] + str(x), param[2],param[3],param[4],param[5],param[6],param[7],param[8],param[9],param[10],))
print("--- %s seconds ---" % (time.time() - start_time))



# Insert required number of rows and measured the time for execution
# Insert into userinfo_uuid
import time, uuid
queries = [
    ("INSERT INTO `userinfo_uuid` (`uuid`, `name`, `email`, `password`, `dob`, `address`, `city`, `state_id`, `zip`, `country_id`, `account_type`, `closest_airport`) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", ["John Smith", "john.smith@email.com", "1234", "1986-02-14", "1795 Santiago de Compostela Way", "Austin", "1", "18743", "1", "customer account", "1", "1", "1", "aut"])
]
import time
start_time = time.time()
for x in range(0, 1000000):
    for query in queries:
        sql = query[0]
        param = query[1]
        result = session.run_sql(sql, (str(uuid.uuid4()), param[0], param[1] + str(x), param[2],param[3],param[4],param[5],param[6],param[7],param[8],param[9],param[10],))
print("--- %s seconds ---" % (time.time() - start_time))
