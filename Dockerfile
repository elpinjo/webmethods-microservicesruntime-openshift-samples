FROM microservice-runtime:10.5

MAINTAINER SoftwareAG

USER root

COPY ./startup/application.properties /opt/softwareag/IntegrationServer/application.properties

RUN chmod -R 777 /opt/softwareag/

USER 1724