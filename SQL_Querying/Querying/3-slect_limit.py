#!/usr/bin/python3
import MySQLdb
db = MySQLdb.connect(host='localhost', port = 3306, user = 'root', passwd = 'Bethwel', db = 'my_db', charset = "utf8")
cur = db.cursor()
cur.execute("SELECT id,name FROM states LIMIT 2")
query_rows = cur.fetchall()
for i in query_rows:
        print(i)

cur.close()
db.close()