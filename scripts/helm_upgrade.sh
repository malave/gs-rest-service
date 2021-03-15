#!/usr/bin/env bash
#helm install -v 9 --create-namespace=true --set-string instanceName=$1 $1 ../charts/articulate/
#helm upgrade -v 9 scovey ../charts/scovey --install --wait --atomic --namespace=scovey --set=app.name=scovey --values=../charts/scovey/values.yaml -f values.yaml
helm upgrade -v 9 springservice ../servicechart/ --install --wait --debug --namespace=springservice --set=app.version=0.0.6 --values=../servicechart/values.yaml
