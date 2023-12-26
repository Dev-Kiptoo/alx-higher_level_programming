#!/usr/bin/python3
"""
This is the script where it uses <> which is equal to = operator
"""
import MySQLdb
db = MySQLdb.connect(host='localhost', port = 3306, user = 'root', passwd = 'Bethwel', db = 'my_db', charset = "utf8")
cur = db.cursor()
# cur.execute("SELECT id,name FROM states WHERE id <> 3")
# cur.execute("SELECT id,name FROM states WHERE id != 3")
cur.execute("SELECT id,name FROM states WHERE NOT id = 3")
query_rows = cur.fetchall()
for i in query_rows:
        print(i)

cur.close()
db.close()