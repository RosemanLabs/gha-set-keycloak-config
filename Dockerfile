FROM adorsys/keycloak-config-cli:5.12.0-24.0.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
