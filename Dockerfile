FROM frolvlad/alpine-python3

WORKDIR /app
COPY . /app

EXPOSE 5000

#RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
#CMD FLASK_APP=api.py flask run --host="::"
CMD FLASK_APP=run.py flask run --host="::" 
