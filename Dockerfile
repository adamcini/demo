FROM python:3.7-alpine
RUN mkdir /app
WORKDIR /app
ADD app/requirements.txt .
ADD app/main.py .
RUN pip3 install -r requirements.txt
CMD ["gunicorn", "-w 4", "-b", "0.0.0.0:8000", "main:app"]