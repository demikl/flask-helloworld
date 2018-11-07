from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World ! Coucou la démo ! on rajoute un peu de texte'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
