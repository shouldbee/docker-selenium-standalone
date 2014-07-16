# Docker Selenium

Selenium standalone server.


## Build this image

```console
$ make build
```

## Use this image

### Run as grid hub

```console
$ sudo docker run -i -d -t -p 4444:4444 --name selenium shouldbee/selenium java -jar selenium-server-standalone.jar -role hub
```
