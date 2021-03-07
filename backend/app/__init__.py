from flask import Flask
from .config import Config
from flask_sqlalchemy import SQLAlchemy



def create_app():
    postgres = {
        'user' : 'root',
        'pw' : 'password',
        'db' : 'flightsDatabase',
        'host': '172.17.0.1',
        'port' : '5432'
    }
    app = Flask(__name__)
    app.config.from_object(Config)
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % postgres
    print(app.config['SQLALCHEMY_DATABASE_URI'])
    return app 