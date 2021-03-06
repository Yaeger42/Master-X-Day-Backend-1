
import db

from sqlalchemy import Column, Integer, String,

class BoardingGatesModel(db.Base):

    __tablename__ = 'boardingGates'
    id = Column(Integer, primary_key=True)
    name = Column(String(50), nullable=False)

    def __init__(self, id, name):
        self.id = id
        self.name = name

    def __str__(self):
        return "Boarding Gate {self.id}: {self.name}"  