from flask import Flask

@staticmethod
def create_app():
    app = Flask(__name__)
    return app
