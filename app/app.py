# from flask import Flask

# app = Flask(__name__)

# @app.route("/hello")
# def hello_world():
#     return "Demo Purpose"


from flask import Flask
app = Flask('hello-world')
@app.route('/')
def hello():
 return "Welcome to  GKE\n"
if __name__ == '__main__':
 app.run(host = '0.0.0.0', port = 8080)