"""Hola mundo! desde Flask"""
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    """Retorna Hola Mundo! en la ruta /"""
    return "Hola Mundo!"

if __name__ == '__main__':
    app.run(host='0.0.0.0')

