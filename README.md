# GitHub Action: Set Keycloak configuration

Configures a Keycloak instance from an input configuration

## Usage

```
jobs:
  e2e-tests:
    services:
      auth-db:
        image: postgres:13
        env:
          POSTGRES_DB: keycloak
          POSTGRES_USER: keycloak
          POSTGRES_PASSWORD: password
      auth:
        image: keycloak/keycloak:22.0.3
        env:
          KC_DB_USER: keycloak
          KC_DB_PASSWORD: password
          KEYCLOAK_ADMIN: admin
          KEYCLOAK_ADMIN_PASSWORD: admin
        ports:
          - 8080:8080

    steps:
      - name: Set Keycloak configuration
        uses: RosemanLabs/gha-set-keycloak-config@v1
        with:
          keycloak-url: "localhost:8080"
          keycloak-user: "admin"
          keycloak-password: "admin"
          import-files: "/config/*"
```
