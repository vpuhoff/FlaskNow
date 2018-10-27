FROM alpine:edge
RUN sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
RUN apk update && apk add build-base  postgresql-contrib  postgresql-client postgresql-devel python3 python3-dev   libpq-dev python-dev

WORKDIR /app
COPY . /app

EXPOSE 5000

RUN python3 -m pip install  pip
RUN pip3 install -r requirements.txt
#CMD FLASK_APP=api.py flask run --host="::"
CMD FLASK_APP=run.py flask run --host="::" 
