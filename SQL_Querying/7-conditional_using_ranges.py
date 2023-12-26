#!/usr/bin/python3
"""
> selecting where it is greater than
< less than
>= Greater than or equal to
<= less than or equal to
using BETWEEN _____AND _____
"""
import MySQLdb
db = MySQLdb.connect(host='localhost', port = 3306, user = 'root', passwd = 'Bethwel', db = 'my_db', charset = "utf8")
cur = db.cursor()
# cur.execute("SELECT id, name FROM states WHERE id >= 2")
# cur.execute("SELECT id, name FROM states WHERE id < 3")
# cur.execute("SELECT id, name FROM states WHERE id > 2")
# cur.execute("SELECT id, name FROM states WHERE id <= 4")
cur.execute("SELECT id, name FROM states WHERE id BETWEEN 2 AND 4")
query_rows = cur.fetchall()
for i in query_rows:
        print(i)

cur.close()
db.close()