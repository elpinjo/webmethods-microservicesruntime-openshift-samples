FROM store/softwareag/webmethods-microservicesruntime:10.5

MAINTAINER SoftwareAG

COPY ./startup/application.properties /opt/softwareag/IntegrationServer/application.properties

RUN chmod -R 777 /opt/softwareag/	