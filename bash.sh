#!/bin/bash

# Introtuction to bash script in linux

# Create folder myProject
mkdir myProject

# go to myProject folder
cd myProject

# Create an environment
python3 -m venv venv

# Activate the environment
. venv/bin/activate

# Install flask in environment
pip install flask

# Create structure folder of flask
mkdir app
cd app
mkdir templates
mkdir templates
touch templates/index.html
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flask</title>
</head>
<body>
    <h1>Hello Flask</h1>
</body>
</html>" >| templates/index.html
mkdir static
mkdir static/css
mkdir static/js
touch __init__.py
echo "from flask import Flask , render_template, request ,redirect
app = Flask(__name__)

# Create route access
@app.route('/', methods=['GET','POST'])
def index():
    if request.method == 'GET':
        return render_template('index.html')
    elif request.method == 'POST':
        return redirect('/')

if __name__ == '__main__':
    app.run(debug=True,port=5000)" >| __init__.py

python3 __init__.py