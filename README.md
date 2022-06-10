
# Flask Container

Below steps needs to be performed to containerize and run the flask application


## Project Setup

Please download the application from this repository



## Manual steps for Ubuntu container

```javascript
docker run -dit -p 5000:5000 --name ubuntu ubuntu
```
```javascript
docker exec -it CONTAINER_ID /bin/bash
```
```javascript
mkdir app
```

```javascript
apt-get -y update
```
```javascript
apt-get install -y python3-pip python3-dev
```
```javascript
cd /usr/local/bin
```
```javascript
ln -s /usr/bin/python3 python
```
```javascript
pip3 --no-cache-dir install --upgrade pip
```
```javascript
apt-get install -y vim
```
```javascript
rm -rf /var/lib/apt/lists/*
```
```javascript
pip3 install flask
```
Exit from container to copy the application into container
```javascript
docker cp LOCAL_PATH CONTAINER_ID:/LOCATION
```
```javascript
FLASK_APP=/app/app.py flask run --host=0.0.0.0
```
