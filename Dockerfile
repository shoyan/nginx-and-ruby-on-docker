FROM centos:7
MAINTAINER "shoyan"

ADD . /chef
RUN curl -L http://www.opscode.com/chef/install.sh | bash
WORKDIR /chef
