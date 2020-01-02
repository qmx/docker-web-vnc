FROM debian:buster
RUN apt-get update -qqy && apt-get upgrade -qqy && apt-get install -qqy wmctrl tigervnc-standalone-server firefox-esr
