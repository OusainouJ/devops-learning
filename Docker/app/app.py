from flask import Flask, render_template_string
import redis
import os

app = Flask(__name__)

# Read Redis connection details from environment variables
redis_host = os.environ.get("REDIS_HOST", "backend")
redis_port = int(os.environ.get("REDIS_PORT", 6379))

# Connect to Redis
redis_client = redis.StrictRedis(host=redis_host, port=redis_port, decode_responses=True)

# HTML and CSS template for home page
home_html = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flask with Redis</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #4CAF50;
            font-size: 3em;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            font-size: 1.2em;
            padding: 15px 30px;
            margin-top: 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Welcome to Flask with Redis!</h1>
    <p>Click the button below to see how many people have visited this page.</p>
    <a href="/count"><button class="btn">Go to Visit Count</button></a>
</body>
</html>
'''

# HTML and CSS template for count page
count_html = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visit Counter</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #ff6347;
            font-size: 3em;
        }
        p {
            font-size: 1.5em;
            margin-top: 20px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            font-size: 1.2em;
            padding: 15px 30px;
            margin-top: 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Visit Count</h1>
    <p>Visit count: {{ visits }}</p>
    <a href="/"><button class="btn">Back to Home</button></a>
</body>
</html>
'''

@app.route('/')
def home():
    return render_template_string(home_html)

@app.route('/count')
def count():
    visits = redis_client.incr('counter')
    return render_template_string(count_html, visits=visits)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
