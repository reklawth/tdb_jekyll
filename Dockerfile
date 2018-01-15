FROM ubuntu:latest
MAINTAINER Thomas Walker "thwalker@vt.edu"
ENV REFRESHED_AT 2018-01-15

RUN apt-get -yqq update
RUN apt-get -yqq install ruby ruby-dev build-essential nodejs
RUN gem install jekyll -v 2.5.3

VOLUME /data
VOLUME /var/www/html
VOLUME /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]
