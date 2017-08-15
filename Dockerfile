#Adapted from: https://medium.com/@fbzga/how-to-cache-bundle-install-with-docker-7bed453a5800

FROM ruby:2.2.2

RUN apt-get update -qq
#RUN apt-get install -y build-essential libpq-dev

ENV app /app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /box

ADD . $app

#CMD rails s -b 0.0.0.0
