FROM python:latest

WORKDIR /app

RUN pip install flask

COPY . .

EXPOSE 5000

ENV FLASK_APP=main.py

CMD ["flask","run","--host=0.0.0.0"]