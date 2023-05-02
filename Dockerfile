# FROM python:3.10-slim-buster

# WORKDIR /app

# COPY req.txt requirements.txt

# RUN pip3 install -r requirements.txt

# COPY . .

# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


FROM python:3.7-slim

RUN pip install flask

WORKDIR /app
COPY /app/app.py /app/app.py
ENTRYPOINT ["python"]
CMD ["/app/app.py"]