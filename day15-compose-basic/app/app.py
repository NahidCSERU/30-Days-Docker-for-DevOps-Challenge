from flask import Flask, jsonify
import mysql.connector
import os

app = Flask(__name__)

db_config = {
    'host': os.getenv("MYSQL_HOST", "db"),
    'user': os.getenv("MYSQL_USER", "root"),
    'password': os.getenv("MYSQL_PASSWORD", "root"),
    'database': os.getenv("MYSQL_DB", "mydb")
}

@app.route('/')
def home():
    return "🚀 Docker Compose Basic Project is Running!"

@app.route('/users')
def users():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("CREATE TABLE IF NOT EXISTS users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50))")
        cursor.execute("INSERT INTO users (name) VALUES ('Nahid'), ('Hasan'), ('Docker')")
        conn.commit()

        cursor.execute("SELECT * FROM users")
        result = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(result)
    except Exception as e:
        return jsonify({"error": str(e)})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)
