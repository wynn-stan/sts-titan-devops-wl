FROM python:3.11-slim-bookworm

WORKDIR /usr/src/app

RUN pip install flask

COPY app.py .

EXPOSE 5000

CMD ["python3","app.py"]
