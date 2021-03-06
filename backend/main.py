from flask import request
from app import create_app
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
#from app.models import flightModel
#from app.config.db import Db


app = create_app()
db = SQLAlchemy(app)
migrate = Migrate(app, db)


class FlightStatusModel(db.Model):
    __tablename__ = 'flightstatus'

    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String())

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return {
            "id": self.id,
            "name" : self.name
        }




@app.route('/')
def index():
    return {
        "message" : "hello"
    }



@app.route('/flight', methods=['GET', 'POST'])
def function():
    if request.method == 'GET':
        flightStatus = FlightStatusModel.query.all()
        results = [{"id": fl.id,"name": fl.name}for fl in flightStatus ]

        return {"flights": results}