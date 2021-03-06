from sqlalchemy import Column, Integer, String
from ..configs.db import Db

db = Db().db


class FlightStatusModel(db.model):

    tablename = 'flightStatus'
    id = Column(Integer, primary_key=True)
    name = Column(String, nullable=False)

    def init(self, id, name):
        self.id = id
        self.name = name

    def str(self):
        return "Flight Status{self.id}: {self.name}"