IMAGE     := "shouldbee/selenium"
CONTAINER := "selenium"

build:
	sudo docker build -t=$(IMAGE) .

create:
	sudo docker run -v /vagrant:/vagrant -i -t -d -p 80:80 --name $(CONTAINER) $(IMAGE) /bin/bash

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
