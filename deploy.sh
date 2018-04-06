#!/bin/bash
eval $(minishift docker-env);
mvn -Dkubernetes.master=https://192.168.64.2:8443 -Dkubernetes.namespace=dfuse -Dkubernetes.auth.basic.username=developer -Dkubernetes.auth.basic.password=developer clean install fabric8:deploy