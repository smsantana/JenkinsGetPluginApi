#!/bin/bash
#Alterar as informacoes abaixo
JENKINS_PROTOCOL="http://"
JENKINS_HOST="localhost:8080"
JENKINS_USER="admin"
JENKINS_PASS="admin123"

#Nao alterar a partir daqui
JENKINS_URL="${JENKINS_PROTOCOL}${JENKINS_USER}:${JENKINS_PASS}@${JENKINS_HOST}"

echo "Get Jenkins CLI"
curl "${JENKINS_URL}/jnlpJars/jenkins-cli.jar" > jenkins-cli.jar
echo;

echo "Get PLugins Instaled Stance: ${JENKINS_HOST}"
echo;

java -jar jenkins-cli.jar -s ${JENKINS_URL} groovy = < InventoryPlugins.groovy > plugins.txt

echo;
cat plugins.txt
