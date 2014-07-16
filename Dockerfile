FROM phusion/baseimage

ENV HOME /root

# Install Java.
RUN \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
	sudo apt-get update && \
	sudo apt-get install -y software-properties-common -qq && \
	sudo add-apt-repository ppa:webupd8team/java && \
	sudo apt-get update -qq && \
	sudo apt-get install -y oracle-java7-installer -qq

# Install Selenium
RUN wget http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar

# for run
CMD ["/sbin/my_init"]

# cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
