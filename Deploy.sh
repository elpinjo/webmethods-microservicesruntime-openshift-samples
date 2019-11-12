#!/bin/sh
#
oc apply -f ${WORKSPACE}/configmap.yaml
oc apply -f ${WORKSPACE}/dc.yaml
oc apply -f ${WORKSPACE}/service.yaml
oc apply -f ${WORKSPACE}/route.yaml
