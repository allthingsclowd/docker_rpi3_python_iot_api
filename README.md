# Raspberry Pi 3 IOT Demo using Docker &amp; Python 2.7 to trigger an LED using a RESTful API

The Dockerfile in this repo can be used to build an IoT demo container that runs a Python 2.7 application that will work with the GPIO pins configured to match the following setup :

![rpi3-led_bb](https://user-images.githubusercontent.com/9472095/36993912-600b37ba-20a7-11e8-853b-b725fee25233.png)

![rpi3-led_schem](https://user-images.githubusercontent.com/9472095/36993928-6b45df4a-20a7-11e8-9e82-a22889daa803.png)

The docker image can be found here: 

Demo application explained here - https://randomnerdtutorials.com/raspberry-pi-web-server-using-flask-to-control-gpios/

To build the dockerfile on a raspberry pi 3 after cloning this repository: 
```bash
docker image build --tag allthingscloud/rpi3-python-iot-api -f Dockerfile . 
```

Launch as follows:
```bash
docker container run -d --name my-python-iot-demo --device /dev/gpiomem allthingscloud/rpi3-python-iot-api
```

Similar golang and nodejs docker images can be found in my github repos - https://github.com/allthingsclowd

# Raspberry Pi 3 - Docker Installation
Please check the official documentation at https://docs.docker.com

I used the following steps :

```bash

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

echo "deb [arch=armhf] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list   
   
sudo apt-get update

sudo apt-get install docker-ce

```
