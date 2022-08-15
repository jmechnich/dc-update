## dc-update

Update docker-compose managed services with one command.

For each service listed in a `docker-compose.yml`, `dc-update` tries
to pull a newer image. If any service was updated, all services are restarted.

### Usage

```sh
dc-update service-directory
```

### Cron example

The following updates a docker-based `gitea` and `roundcube`
installation every night at 1:00 and 1:05, respectively. Every Sunday
morning at 2 a.m., obsolete images are removed.

```sh
# m h dom mon dow usercommand
0 1 * * * root /usr/local/bin/update-docker /srv/gitea
5 1 * * * root /usr/local/bin/update-docker /srv/roundcube
0 2 * * 0 root /usr/bin/docker image prune -a
```
