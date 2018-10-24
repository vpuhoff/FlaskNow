FROM frolvlad/alpine-python3

WORKDIR /app
COPY . /app

EXPOSE 5000

RUN yum install libjpeg-dev -y
RUN yum install zlib-dev -y
RUN yum install python3-setuptools -y
#RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
#CMD FLASK_APP=api.py flask run --host="::"
CMD FLASK_APP=run.py flask run --host="::" 
