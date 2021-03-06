
import db

from sqlalchemy import Column, Integer, String,

class UsersModel(db.Base):

    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    firstName = Column(String(200), nullable=False)
    lastName = Column(String(200), nullable=False)
    phone = Column(String(30), nullable=False)
    gender = Column(String(2), nullable=False)
    address = Column(String(100), nullable=False)

    def __init__(self, id, firstName, lastName, phone, gender, address):
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.gender = gender
        self.address = address

    def __str__(self):
        return "User {self.id}: {self.firstName} {self.lastName}"  