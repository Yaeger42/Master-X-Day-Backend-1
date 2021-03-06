from flask import Flask
from .config import Config
from flask_sqlalchemy import SQLAlchemy



def create_app():
    postgres = {
        'user' : 'postgres',
        'pw' : 'password',
        'db' : 'flightsDatabase',
        'host': 'localhost',
        'port' : '5432'
    }
    app = Flask(__name__)
    app.config.from_object(Config)
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % postgres
    return app 