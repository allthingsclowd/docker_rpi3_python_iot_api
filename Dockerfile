FROM arm32v7/python:2.7.14-stretch

RUN apt-get update && \
apt-get install -y git python-flask && \
pip install RPi.GPIO && \
pip install flask && \
git clone https://github.com/allthingsclowd/docker_rpi3_python_iot_api.git

WORKDIR /docker_rpi3_python_iot_api

EXPOSE 8989

CMD python iot-api.py
