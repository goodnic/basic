from flask import Flask

from backend.health_api import health_api

@staticmethod
def create_app():
    app = Flask(__name__)

    app.register_blueprint(health_api)

    return app
