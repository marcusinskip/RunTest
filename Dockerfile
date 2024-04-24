FROM python3.9-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME

RUN pip install Flask gunicorn 

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app 
