FROM python:3.12-slim

ENV PYTHONDONTWRIETBYTECOD = 1 
ENV PYTHONUNBUFFERED =1 

WORKDIR /app

COPY requirements.txt /app/
COPY app.py /app/
COPY templates /app/templates
COPY static /app/static

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]


