from flask_sqlalchemy import SQLAlchemy

class Db():
    def __init__(self, app):
        db = SQLAlchemy(app)