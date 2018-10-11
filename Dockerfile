FROM ubuntu

RUN apt-get update \
  && apt-get install -y \
  curl \
  dnsutils \
  git \
  iputils-ping \
  netcat \
  net-tools \
  nmap \
  supervisor \
  telnet \
  traceroute \
  unzip \
  wget \
  && rm -rf /var/lib/apt/lists/* \
  && wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
  && unzip ngrok-stable-linux-amd64.zip \
  && mv ./ngrok /usr/local/bin/ngrok 
  

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "--pidfile", "/var/run/supervisord.pid", "--nodaemon", "-c", "/etc/supervisor/supervisord.conf"]
