
from App import app, get_db_connection
from flask import render_template, request, redirect, url_for


@app.route('/')
def index():
    conn = get_db_connection()
    conn.close()
    return "Hello again!"
@app.route('/hello')
def hello():
    return "Hello World!"
