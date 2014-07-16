IMAGE     := shouldbee/selenium
CONTAINER := selenium
TAG       := 2.42.2

build:
	sudo docker build -t=$(IMAGE):$(TAG) .

create:
	sudo docker run -i -t -d -p 4444:4444 --name $(CONTAINER) $(IMAGE) /bin/bash

start:
	sudo docker start $(CONTAINER)

stop:
	sudo docker stop $(CONTAINER)

remove:
	sudo docker rm $(CONTAINER)

status:
	sudo docker ps

attach:
	sudo docker attach $(CONTAINER)

clean:
	sudo docker ps -a -q | xargs sudo rm
