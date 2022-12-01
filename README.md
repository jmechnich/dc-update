## dc-update

Update docker-compose managed services with one command.

For each service listed in a `docker-compose.yml`, `dc-update` tries
to pull a newer image. If any service was updated, all services are restarted.

### Usage

```sh
dc-update service-directory
```

For detailed output, you can set the DEBUG variable to `true`:

```sh
DEBUG=true dc-update service-directory
```

### Cron example

The following updates docker-based installations of `gitea` and
`roundcube` every night at 2:00, consecutively. Every Sunday morning
at 1:00, obsolete images are removed.

```sh
# m h dom mon dow usercommand
0 2 * * * root /usr/local/bin/dc-update /srv/gitea /srv/roundcube
0 1 * * 0 root /usr/bin/docker image prune --all --force
```
