from ninja import Schema

class User(Schema):
    username : str
    password : str

class NoMessage(Schema):
    message: str

class LoginSuccess(Schema):
    username: str
    token: str