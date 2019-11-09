The docker-compose applications lifecycle is managed by a [systemd template service](https://github.com/huebnerf/docker-stuff/blob/master/_template/docker%40.service). When an application is started, docker-compose is invoked with the `--compatibility` flag to utilize options defined in the `deploy` key ([format version 3](https://docs.docker.com/compose/compose-file/)), e.g. cpu and memory limiting.

Example service structure in `WorkingDirectory` path:
```
docker
├── service-a
│   └── docker-compose.yml
├── service-b
│   ├── data
│   └── docker-compose.yml
└── service-c
    ├── config.json
    └── docker-compose.yml
```
