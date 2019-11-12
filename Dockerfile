FROM microservice-runtime:10.5

MAINTAINER SoftwareAG

COPY ./startup/application.properties /opt/softwareag/IntegrationServer/application.properties

USER 1001