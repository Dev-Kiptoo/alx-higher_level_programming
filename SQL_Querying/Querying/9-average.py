#!/usr/bin/python3
"""
Using order by
"""
import MySQLdb
db = MySQLdb.connect(host='localhost', port = 3306, user = 'root', passwd = 'Bethwel', db = 'my_db', charset = "utf8")
cur = db.cursor()
cur.execute("SELECT ROUND(AVG(id), 2) AS 'Average' FROM states")
query_rows = cur.fetchall()
for i in query_rows:
        print(i)

cur.close()
db.close()