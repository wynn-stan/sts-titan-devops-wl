FROM python:3.11-slim-bookworm

LABEL maintainer=titan@slightlytechie.com

RUN pip3 install flask && \
    pip3 install redis && \
    pip3 install mysql-connector-python

WORKDIR /app

ADD . /app

EXPOSE 5000

CMD ["python3","app.py"]

# We could alternatively run CMD ["python3", "app.py"] but I can't say if that 'better'.
