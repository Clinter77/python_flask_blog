from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    # return 'Hello World !'
    return '<h3 style="color:blue;">Welcome on my Web site :)</h3>'


