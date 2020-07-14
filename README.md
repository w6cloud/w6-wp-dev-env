# WEB6 WordPress Development Environment

## Services

- [proxy](services/proxy/README.md)
- [db](services/db/README.md)
- [db-admin](services/db-admin/README.md)
- [wordpress](services/wordpress/README.md)
- [wp-cli](services/wp-cli/README.md)
- [composer](services/composer/README.md)
- [smtp](services/smtp/README.md)
- [node](services/node/README.md)

## Install

Rename `.env.sample` to `.env` and customize values.

Run `docker-compose up -d` to launch all services (wait a few minutes if it's the first build)

Add entries to `/etc/hosts` :

```sh
127.0.0.1 ${APP_NAME}.local pma.${APP_NAME}.local node.${APP_NAME}.local smtp.${APP_NAME}.local
```

## Reset

To reset the repository to it's initial state :

```sh
# Erase created data
sudo rm -Rf wordpress/*
sudo rm -Rf services/db/data
rm wordpress/.htaccess

# Rebuild containers
docker-compose build

# Launch containers
docker-compose up -d

# Navigate to http://${APP_NAME}.local and install WordPress

# Updates
services/wp-cli/run plugin update-all
services/wp-cli/run theme update-all
services/wp-cli/run language core update
services/wp-cli/run language plugin --all update
services/wp-cli/run language theme --all update
```
