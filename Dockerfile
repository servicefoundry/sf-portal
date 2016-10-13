#
# User Portal Docker Image for Service Foundry Platform
#
FROM servicefoundry/docker-node

MAINTAINER Service Foundry Team <service.foundry@gmail.com>

ENV REFRESHED_AT 2016-10-10

ENV APP_HOME /opt/sf-portal/

RUN mkdir -p $APP_HOME

COPY ./src $APP_HOME

WORKDIR $APP_HOME

RUN npm install --unsafe-perm=true

CMD npm start