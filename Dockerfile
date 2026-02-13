FROM ubuntu
RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev-is-python3 && \
    apt-get install -y python3-venv

copy ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --break-system-packages -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]
