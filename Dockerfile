FROM adorsys/keycloak-config-cli:5.10.0-22.0.4

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
