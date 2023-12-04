FROM python:3.11.3

WORKDIR /app

COPY . /app

EXPOSE 8000

ENV PYTHONUNBUFFERED 1


RUN pip install -r requirements.txt

HEALTHCHECK CMD curl --fail http://localhost:8000/api || exit 1


CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
