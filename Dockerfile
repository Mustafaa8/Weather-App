FROM python:slim-bullseye
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

EXPOSE 5000
CMD [ "python3" , "app.py" ]
