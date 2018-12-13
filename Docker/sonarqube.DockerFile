
#
# > docker build -t sonar -f sonarqube.DockerFile .
# > docker run sonar -rm
#
# ... or ..
#		> docker build -t sonar -f sonarqube.DockerFile . && docker run sonar -rm
#

FROM debian:stretch


USER root
	RUN apt-get -q -y update && apt-get -q -y install \
			default-jdk \
		&& apt-get -q -y upgrade \
		&& apt-get -q -y autoclean \
		&& apt-get -q -y autoremove
	
	RUN apt-get -q -y install \
			curl

	RUN curl https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.6.zip > tmp.zip

	RUN pwd
	RUN ls
