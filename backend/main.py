from flask import request
from app import create_app
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import ForeignKey
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


class BoardingGatesModel(db.Model):
    __tablename__ = 'boardinggates'
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String())

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return {
            "id": self.id,
            "name" : self.name
        }



class FlightsModel(db.Model):

    __tablename__ = 'flights'
    id = db.Column(db.Integer, primary_key=True)
    destinationid = db.Column(db.Integer, ForeignKey('location.Id'))
    originid = db.Column(db.Integer, ForeignKey('location.Id'))
    arrivaltime = db.Column(db.Time)
    departuretime = db.Column(db.Time)
    amountofpassengers = db.Column(db.Integer)
    boardinggateid = db.Column(db.Integer, ForeignKey('boardinggates.id'))
    flightstatusid = db.Column(db.Integer, ForeignKey('flightstatus.id'))

    def __init__(self, id, name, destinationid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid):
        self.id = id
        self.destinationid = destinationid
        self.arrivaltime = arrivaltime
        self.departuretime = departuretime
        self.amountofpassengers = amountofpassengers
        self.boardinggateid = boardinggateid
        self.flightstatusid = flightstatusid

    def __repr__(self):
        return {
            "id": self.id, 
            "destinationid": self.destinationid,
            "originid" : self.originid,
            "arrivaltime" : self.arrivaltime,
            "departuretime" : self.departuretime,
            "amountofpassengers" : self.amountofpassengers,
            "boardinggateid": self.boardinggateid,
            "flightstatusid": self.flightstatusid
        }


class LocationModel(db.Model):

    __tablename__ = 'location'
    id = db.Column(db.Integer, primary_key=True)
    city = db.Column(db.String(), nullable=False)
    country = db.Column(db.String(), nullable=False)

    def init(self, id, city, country):
        self.id = id
        self.city = city
        self.country = country

    def str(self):
        return "Location {self.id}: {self.city} {self.country}"

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


@app.route('/all_flights', methods=['GET'])
def getAllFlights():
    if request.method == 'GET':
        flights = FlightsModel.query.all()
        results = [{
            "id": flight.id,
            "desinationId": flight.destinationid,
            "originId" : flight.originid,
            "arrivalTime" : flight.arrivaltime,
            "departureTime": flight.departuretime,
            "amountofpassengers": flight.amountofpassengers,
            "boardingGateId": flight.boardinggateid,
            "flightStatusId": flight.flightstatusid
        }for flight in flights]

        return {"all flights": results}


@app.route('/locations', methods=['GET'])
def getAllLocations():
    if request.method == 'GET':
        locations = LocationModel.query.all()
        results = [{
            "id": location.id,
            "city": location.city,
            "country": location.country
        }for location in locations]

        return {"all locations": results}

@app.route('/flight/<flight_id>', methods=['DELETE'])
def deleteFlight(flight_id):
    flight = FlightsModel.query.get(flight_id).delete()
    
    db.session.commit()

    return {"message": "flight {flight_id} deleted"}

@app.route('/flight/<flight_id>', methods=['PUT'])
def updateFlight(flight_id):

    req = request.get_json()

    flight = FlightsModel.query.get(flight_id).delete()
    
    if flight is None:
        return {"message": "Flight does not exists"}, 404


    json = request.get_json(force=True)

    flight.destinationid = req.destinationid
    flight.originId = req.originId
    flight.arrivalTime = req.arrivalTime
    flight.departureTime = req.departureTime
    flight.amountofpassengers = req.amountofpassengers
    flight.boardingGateId = req.boardingGateId

    flight.update()

    return {"flight": flight.json()}