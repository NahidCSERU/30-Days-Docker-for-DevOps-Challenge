from flask import Flask
import time

app = Flask(__name__)

@app.route("/")
def home():
    return "🚀 Container Inspect Demo Running!"

@app.route("/loop")
def loop():
    # Generate continuous logs
    for i in range(1, 6):
        print(f"[LOG] Iteration {i}")
        time.sleep(1)
    return "Loop Completed! Check container logs."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
