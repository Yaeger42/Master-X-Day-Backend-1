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
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://root:password@172.17.0.1:5432/flightsDatabase'
    #'postgresql://root:\%(password)s@%(host)s:%(port)s/%(db)s' % postgres
    # postgresql://scott:tiger@localhost:5432/mydatabase
    # dialect+driver://username:password@host:port/database
    print(app.config['SQLALCHEMY_DATABASE_URI'])
    return app 