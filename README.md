For each of the docker-compose applications, run `enable.sh` or `disable.sh` to start or stop services defined by the `docker-compose.yml`. When running `enable.sh`, docker-compose is invoked with the `--compatibility` flag to utilize options defined in the `deploy` key, like cpu and memory limiting and restart configuration.
  
![](https://i.imgur.com/AH0a3x9.png)
