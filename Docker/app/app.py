from flask import Flask
import redis

app = Flask(__name__)

# Connect to Redis (backend container)
redis_client = redis.StrictRedis(host='backend', port=6379, decode_responses=True)

@app.route('/')
def home():
    return "Welcome to Flask with Redis!"

@app.route('/count')
def count():
    visits = redis_client.incr('counter')
    return f'Visit count: {visits}'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
