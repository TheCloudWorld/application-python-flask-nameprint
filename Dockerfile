FROM snyk/ubuntu
WORKDIR /app
RUN apt-get update
RUN apt-get install -y python3-pip python3-dev
RUN cd /usr/local/bin
RUN ln -s /usr/bin/python3 python
RUN pip3 --no-cache-dir install --upgrade pip
RUN apt-get install -y vim
RUN rm -rf /var/lib/apt/lists/*
RUN pip3 install flask
COPY . .
EXPOSE 5000
ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0
