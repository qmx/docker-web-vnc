FROM debian:testing
RUN apt-get update -qqy && apt-get upgrade -qqy && apt-get install -qqy tigervnc-standalone-server firefox-esr 
