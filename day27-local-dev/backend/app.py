from flask import Flask
import os
import mysql.connector

app = Flask(__name__)

@app.route('/')
def home():
    return "✅ Local Dev Environment Running with Docker!"

@app.route('/db')
def db_connect():
    try:
        conn = mysql.connector.connect(
            host=os.getenv("DB_HOST", "db"),
            user=os.getenv("DB_USER", "root"),
            password=os.getenv("DB_PASSWORD", "rootpassword"),
            database=os.getenv("DB_NAME", "testdb")
        )
        cursor = conn.cursor()
        cursor.execute("SELECT NOW();")
        result = cursor.fetchone()
        return f"🗄️ DB Connected! Current time: {result[0]}"
    except Exception as e:
        return f"❌ DB Connection Failed: {str(e)}"
