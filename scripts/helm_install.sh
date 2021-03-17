#!/usr/bin/env bash
#helm install -v 9 --create-namespace=true --set-string instanceName=$1 $1 ../charts/articulate/
helm install -v 9 --create-namespace=true --namespace=mdas --set=app.name=mdas mdas ../servicechart/
