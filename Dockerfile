
FROM ruby:2.3.1-alpine

MAINTAINER Robert Northard <robertnorthard@googlemail.com>

RUN apk --update add docker && \
  rm -rf /var/cache/apk* && \
  gem install --no-rdoc --no-ri \
	test-kitchen:1.10.2 \
	kitchen-docker:2.6.0 \
	kitchen-ec2:1.0.0 \
	kitchen-ansible:0.45.4 

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

WORKDIR /kitchen

