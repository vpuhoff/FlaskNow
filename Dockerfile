FROM alpine:edge

RUN apk update && apk add build-base   postgresql-client postgresql-devel python3 python3-dev 

WORKDIR /app
COPY . /app

EXPOSE 5000

RUN python3 -m pip install  pip
RUN pip3 install -r requirements.txt
#CMD FLASK_APP=api.py flask run --host="::"
CMD FLASK_APP=run.py flask run --host="::" 
