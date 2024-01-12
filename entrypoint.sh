#!/bin/bash
set -e

java $JAVA_OPTS -jar /app/keycloak-config-cli.jar \
    --keycloak.url=${KEYCLOAK_URL} \
    --keycloak.user=${KEYCLOAK_USER} \
    --keycloak.password=${KEYCLOAK_PASSWORD} \
    --import.files.locations=${IMPORT_FILES} \
    --keycloak.ssl-verify=${SSL_VERIFY}
