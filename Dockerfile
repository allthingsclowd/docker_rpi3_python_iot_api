FROM arm32v7/python:2.7.14-stretch

RUN apt-get update && apt-get install -y git && \
pip install RPi.GPIO && \
git clone https://github.com/allthingsclowd/docker_rpi3_python_iot_led.git

WORKDIR /docker_rpi3_python_iot_led

CMD python blink.py
