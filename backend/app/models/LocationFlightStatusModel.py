
import db

from sqlalchemy import Column, Integer, String

class LocationModel(db.Base):

    __tablename__ = 'location'
    id = Column(Integer, primary_key=True)
    city = Column(String(50), nullable=False)
    country = Column(String(25), nullable=False)

    def __init__(self, id, city, country):
        self.id = id
        self.city = city
        self.country = country

    def __str__(self):
        return "Location {self.id}: {self.city} {self.country}"  