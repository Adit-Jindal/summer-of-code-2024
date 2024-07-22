from flask import Flask
import psycopg2

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgres:postgres@localhost/postgres'

def get_db_connection():
    conn = psycopg2.connect(
        dbname='mydb',
        user='postgres',
        password='postgres',
        host='localhost'
    )
    return conn

from App import routes