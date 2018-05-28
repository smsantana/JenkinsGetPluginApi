#!/bin/bash
JENKINS_HOST="localhost:8080"
JENKINS_USER="admin"
JENKINS_PASS="admin123"

echo "Get Jenkins CLI"
curl "${JENKINS_HOST}/jnlpJars/jenkins-cli.jar" > jenkins-cli.jar
echo;

echo "Get PLugins Instaled Stance: ${JENKINS_HOST}"
echo;

java -jar jenkins-cli.jar -s http://${JENKINS_USER}:${JENKINS_PASS}@${JENKINS_HOST} groovy = < InventoryPlugins.groovy > plugins.txt

echo;
cat plugins.txt
