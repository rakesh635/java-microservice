#!/bin/sh

set -ex

mvn -DskipTests=true clean install
mvn -DskipTests=true -f ./remainder-service/pom.xml -Pdockerimage docker:build 
mvn -DskipTests=true -f ./eureka-server/pom.xml  -Pdockerimage docker:build 
mvn -DskipTests=true -f ./config-server/pom.xml  -Pdockerimage docker:build 
mvn -DskipTests=true -f ./oauth-server/pom.xml  -Pdockerimage docker:build 
mvn -DskipTests=true -f ./user-service/pom.xml  -Pdockerimage docker:build 
mvn -DskipTests=true -f ./api-gateway/pom.xml  -Pdockerimage docker:build 
mvn -DskipTests=true -f ./admin-server/pom.xml  -Pdockerimage docker:build 
mvn -DskipTests=true -f ./mail-service/pom.xml  -Pdockerimage docker:build
pwd
ls -ltrha
