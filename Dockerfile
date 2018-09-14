FROM ubuntu

RUN apt-get update \
  && apt-get install -y curl wget telnet iputils-ping nmap unzip \
  && wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
  && unzip ngrok-stable-linux-amd64.zip \
  && mv ./ngrok /usr/local/bin/ngrok
  
  
