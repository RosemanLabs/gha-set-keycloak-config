#!/bin/bash
set -e

java $JAVA_OPTS -jar /app/keycloak-config-cli.jar $0 $@
