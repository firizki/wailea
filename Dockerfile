FROM ubuntu:18.04

RUN apt-get update && apt-get install netcat -y

ADD wailea.sh wailea.sh
ADD not_found not_found
ADD responses/ responses/

EXPOSE 1080
