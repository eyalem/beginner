FROM python:slim

EXPOSE 8090

RUN pip install flask
 
WORKDIR /app

ADD web10.py .

CMD ["python","web10.py"]

