import psycopg2

from flask import Flask
app = Flask(__name__)

try:
    conn = psycopg2.connect("dbname='AustralianBsb_Db' user='postgres' host='db'")
except:
    print "I am unable to connect to the database"

cur = conn.cursor()
cur.execute("""SELECT count(*) from bsbdirectory""")
rows = cur.fetchall()

@app.route("/")
def index():
    return "Hello World!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
