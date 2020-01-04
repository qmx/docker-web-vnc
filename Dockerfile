FROM debian:buster
RUN apt-get update -qy && apt-get install -qy \
	tigervnc-standalone-server \
	tigervnc-common \
	firefox-esr \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*
ADD ./entrypoint.sh /entrypoint.sh
ADD ./start-firefox.sh /usr/local/bin/start-firefox.sh
VOLUME ["/data"]
ENTRYPOINT ["/entrypoint.sh"]
