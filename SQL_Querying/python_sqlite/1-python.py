#!/usr/bin/python3
from flask import Flask
from flask.sqlalchemy install sqlalchemy

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE.URI"] = 'sqlite:///longlist.db'
db = SQLALCHEMY(app)

cur = db.cursor()
cur.execute("SHOW TABLES;")
rows = cur.fetchall()
for i in rows:
        print(i)
cur.close()
db.close()
