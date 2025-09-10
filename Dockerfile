FROM python:slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN python -m venv .venv
RUN . .venv/bin/activate
RUN pip install -r requirements.txt

COPY flaskr flaskr
COPY app.py boot.sh ./
RUN chmod a+x boot.sh


ENV FLASK_APP=app.py


EXPOSE 7000



ENTRYPOINT [ "./boot.sh" ]