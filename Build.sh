#!/bin/sh
#
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters, please provide the template name"
fi
docker build -t $1:v2 -f Dockerfile .
#docker tag microruntime:v2 172.30.1.1:5000/samplepipeline/microruntime:v2
#oc login -u developer -p manage
#oc project samplepipeline
#docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
#docker push 172.30.1.1:5000/samplepipeline/microruntime:v2
