# Python Flask app written with the help of ChatGPT. I wasn't too sure how Python Flask applications run. 

# import Flask package
from flask import Flask

# create Flask application instance
app = Flask(__name__)

# define a '/' route and it's handler
@app.route("/")
def hello():
    return "Hello from a Flask app"

# run the python app.run function when you run python app.py in the terminal
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

