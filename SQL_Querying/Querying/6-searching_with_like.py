#!/usr/bin/python3
"""
This is the script where it uses like to search for the strings
%% is used to match any number
_is used to search for a single number
% To search for a string starting or ending with a given word
More than one underscore can also be used
"""
import MySQLdb
db = MySQLdb.connect(host='localhost', port = 3306, user = 'root', passwd = 'Bethwel', db = 'my_db', charset = "utf8")
cur = db.cursor()
# cur.execute("SELECT id,name FROM states WHERE name LIKE '%v%'")
# cur.execute("SELECT id,name FROM states WHERE name LIKE 'N%'")
# cur.execute("SELECT id,name FROM states WHERE name LIKE 'N%va%'")
# cur.execute("SELECT id,name FROM states WHERE name LIKE 'T_xas'")
# cur.execute("SELECT id,name FROM states WHERE name LIKE 'T___s'")
cur.execute("SELECT id, name FROM states WHERE id LIKE '_'")
query_rows = cur.fetchall()
for i in query_rows:
        print(i)

cur.close()
db.close()