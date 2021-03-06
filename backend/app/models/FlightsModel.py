
import db

from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship
from models import LocationModel

class FlightsModel(db.Base):

    __tablename__ = 'flights'
    id = Column(Integer, primary_key=True)
    destinationId = relationship(LocationModel)
    originId = relationship(LocationModel)

    def __init__(self, id, name):
        self.id = id
        self.name = name

    def __str__(self):
        return "Boarding Gate {self.id}: {self.name}"  