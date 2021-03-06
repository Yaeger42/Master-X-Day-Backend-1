import db

from sqlalchemy import Column, Integer, String, Va

class FlightStatusModel(db.Base):

    __tablename__ = 'userFlightStatus'
    id = Column(Integer, primary_key=True)
    name = Column(String(50), nullable=False)

    def __init__(self, id, name):
        self.id = id
        self.name = name

    def __str__(self):
        return "User Flight Status{self.id}: {self.name}"  